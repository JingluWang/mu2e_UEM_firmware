#include <iostream>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <netdb.h>
#include <time.h>
#include <sys/time.h>
#include <arpa/inet.h>
#include <sys/types.h>
#include <sys/socket.h>

#include "TApplication.h"
#include "TROOT.h"
#include "TFile.h"
#include "TMapFile.h"
#include "TH2.h"

#include "fei4.hh"

using namespace std;
using namespace fei4;

#define BUFLEN 1024

static unsigned char recvbuf[BUFLEN];

int main(int argc,char **argv) {
  int s, ierr, port, dlen;
  time_t t0, t1;
  struct sockaddr_in saddr, daddr;
  struct hostent *hp;
  unsigned int word;

  if ( argc < 2 ) {
    cerr << "Usage: " << argv[0] << " <port>" << endl;
    exit(1);
  }

  if ( ( s = socket(PF_INET,SOCK_DGRAM,0) ) < 0 ) {
    fprintf( stderr, "%s : socket() - %s\n", argv[0], strerror(errno) );
    exit(1);
  }
  bzero((char *)&saddr,sizeof(saddr));
  saddr.sin_family = AF_INET;
  port = 48879;
  saddr.sin_port = htons(port);
  
  if ( bind(s,(struct sockaddr *)&saddr,sizeof(saddr)) < 0 ) {
    fprintf( stderr, "%s : bind() - %s\n", argv[0], strerror(errno) );
    exit(1);
  }
  printf("Listening on port %d.\n", port );
  TApplication app("fei4",&argc,argv);

  TMapFile *map = TMapFile::Create("fei4_data.map","RECREATE",200000,"FE-I4b shared memory");
  TH2F *h_fei4[12];
  for ( int i=0; i<12; i++ ) {
    char label[16];
    sprintf( label, "fei4_ch%d", i );
    h_fei4[i] = new TH2F(label,NULL,80,0,80,336,0,336);
  }

  time(&t0);
  while ( 1 ) {
    time(&t1);
    dlen = sizeof(daddr);
    int len;
    cout << "Reading... " << endl;
    if ( ( len = recvfrom(s,recvbuf,BUFLEN,0,(struct sockaddr *)&daddr,(socklen_t *)&dlen) ) < 0 ) {
      fprintf( stderr, "%s : recvfrom() - %s\n", argv[0], strerror(errno) );
      exit(1);
    }
    cout << "Received from address " << hex << ntohl(daddr.sin_addr.s_addr) << endl;
    for ( int i=0; i<len/4; i++ ) {
//      word = ntohl(((unsigned int *)recvbuf)[i]);
      word = ((unsigned int *)recvbuf)[i];
      cout << "Word = " << hex << word << dec << endl;
      if ( (word&0xffffff) != 0 && (word&0xf0000000) == 0 ) {
        int chan = (word>>24)&0x0f;
        int ir = (word>>8)&0x1ff;
        int ic = (word>>17)&0x7f;
        cout << "Channel " << chan << "  (R,C)=(" << ir << "," << ic << ")"<<endl;
        int tot0 = (word>>4)&0x0f;
        int tot1 = word&0x0f;
        double w = 1.0;
        if ( (chan&1) == 0 && ic == 1 ||
             (chan&1) == 1 && ic == 80 ) w = 0.5;
        h_fei4[chan]->Fill(ic-1,ir-1,w);
        if ( tot1 != 15 ) {
          h_fei4[chan]->Fill(ic-1,ir,1);
        }
      }
      else if ( (word&0xf0000000) == 0x40000000 ) {
        int chan = (word>>24)&0x0f;
        int bcid = word&0xfff;
        int lv1id = (word>>12)&0xfff;
        cout << "Channel " << chan << "  Lv1id = " << hex << lv1id << ", bcid = " << bcid << dec << endl;
      }
    }
    if ( t1-t0 > 5 ) {
      map->Update();
      map->ls();
      t0 = t1;
    }
  }
}
