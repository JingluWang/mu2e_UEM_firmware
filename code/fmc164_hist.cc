
#include <iostream>
#include <iomanip>
#include <stdio.h>
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
#include "TCanvas.h"
#include "TText.h"
#include "TH1.h"
#include "TLine.h"

#define BUFLEN 1500

static unsigned char recvbuf[BUFLEN];

using namespace std;

int main(int argc,char **argv) {
  int ierr, i, n, s, ped, dlen, ipkt = 0, jpkt, kpkt;
  socklen_t namelen;
  unsigned short port;
  struct sockaddr_in saddr, daddr;
  struct hostent *hp;
  unsigned char *p;
  unsigned int word;
  unsigned int *buf;
  time_t t0, t1;
  short v;
  double q;
  double dtp, dtm, v0, v1;
  int nfd;

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
  port = atoi(argv[1]);
  saddr.sin_port = htons(port);

  if ( bind(s,(struct sockaddr *)&saddr,sizeof(saddr)) < 0 ) {
    fprintf( stderr, "%s : bind() - %s\n", argv[0], strerror(errno) );
    exit(1);
  }
  printf("Listening on port %d.\n", port );

  TApplication app("fmc228",&argc,argv);
  gROOT->SetStyle("Plain");
  TCanvas *c1 = new TCanvas("c1",NULL,0,0,700,500);
  c1->cd();
  c1->Draw();

  double vmax = 4096;
  double vmin = -2048;

  c1->Update();
  TH1F *h = new TH1F("q",NULL,700,-25000,150000);
  c1->cd();

  int nhit = 0;
  int nped = 0;
  int lasthit = -1;
  time(&t0);
  n = -1;
  int update = 0;
  jpkt = 0;
  while(1) 
  {
    dlen = sizeof(daddr);
    int len;
    if ( ( len = recvfrom(s,recvbuf,BUFLEN,0,(struct sockaddr *)&daddr,(socklen_t *)&dlen) ) < 0 ) {
      fprintf( stderr, "%s : recvfrom() - %s\n", argv[0], strerror(errno) );
      exit(1);
    }
    cout << "Received " << len << " bytes : ";
    buf = (unsigned int *)recvbuf;
    cout << hex << setw(4) << setfill('0') << (*buf&0xffff)
         << " " << setw(4) << setfill('0') << ((*buf>>16)&0xffff) << dec;
    ped = 0;
    nped = 0;
    q = 0;
    for ( int i=0; i<len/4; i++ ) {
      word = ((unsigned int *)recvbuf)[i];
      v = (short)(word&0xffff);
      double t = i*8.0;
      if ( t < 400.0 ) {
        ped += v;
        nped += 1;
      }
      else {
        q += v - ped/nped;
      }
      v = (short)((word>>16)&0xffff);
      if ( t < 400.0 ) {
        ped += v;
        nped += 1;
      }
      else {
        q += v - ped/nped;
      }
    }
    cout << "  q = " << q << endl;
    const int colors[4] = { 1, 2, 4, 6 };
    h->Fill(q,1);
    time(&t1);
    if ( t1 - t0 > 10 ) {
      h->Draw();
      c1->Update();
      t0 = t1;
    }
  }
  app.Run();

  return 0;
}
