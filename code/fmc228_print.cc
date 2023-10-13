#include <iostream>
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

#define BUFLEN 1500

static unsigned char recvbuf[BUFLEN];

using namespace std;

int main(int argc,char **argv) {
  int i, n, s, ped, strip, dlen, ipkt = 0, ichan, jpkt, kpkt;
  socklen_t namelen;
  unsigned short port;
  struct sockaddr_in saddr, daddr;
  struct hostent *hp;
  unsigned char *p;
  unsigned int word;
  unsigned int *buf;
  time_t t0, t1;
  int iseq = -1;
  int ierr = 0;

  if ( argc < 2 ) ierr = 1;
  if ( argc > 3 ) {
    if ( strcmp(argv[2],"-i") == 0 ) {
      iseq = atoi(argv[3]);
    }
    else {
      ierr = 1;
    }
  }
  if ( ierr ) {
    cerr << "Usage: " << argv[0] << " <port> [-i <seq>]" << endl;
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

  int nhit = 0;
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
    if ( iseq >= 0 && recvbuf[7] != iseq ) continue;

    buf = (unsigned int *)recvbuf;
    n = recvbuf[7]*512;
    kpkt = buf[0] >> 16;
    ichan = buf[3]&0x03;
   
    printf( "%6d.%2d  %08x %08x %08x %08x\n", ipkt++, n/512, buf[0], buf[1], buf[2], buf[3] );

    for ( int j=0; j<16; j++ ) {
      for ( int k=0; k<8; k++ ) {
        word = ((unsigned int *)recvbuf)[4+8*j+k];
        if ( k == 0 ) printf( "          " );
        printf( " %4d %4d", ((short)(word&0xfff0))/16, ((short)((word>>16)&0xfff0))/16  );
      }
      printf( "\n" );
      for ( int k=0; k<8; k++ ) {
        word = ((unsigned int *)recvbuf)[4+8*j+k];
        if ( k == 0 ) printf( "          " );
        char bits[8];
        for ( int l=0; l<4; l++ ) {
          bits[l] = (word&(1<<(3-l)))?'*':' ';
          bits[l+4] = ((word>>16)&(1<<(3-l)))?'*':' ';
        }
        bits[3] = ' ';
        bits[7] = ' ';
        printf( " %c%c%c%c %c%c%c%c", bits[0], bits[1], bits[2], bits[3],
                                      bits[4], bits[5], bits[6], bits[7] );
      }
      printf( "\n" );
    }

    if ( recvbuf[7] == 0x07 ) {
      printf( "End of record, ichan = %d\n", ichan );
    }
  }

  return 0;
}
