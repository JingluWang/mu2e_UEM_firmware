
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

#include "stib.hh"

using namespace std;
using namespace stib;

int main(int argc,char **argv) {
  int ierr, i, s, strip;
  socklen_t namelen;
  int broadcast_enable;
  unsigned short port;
  struct sockaddr_in saddr, daddr;
  struct hostent *hp;
  unsigned int mask[4];

  if ( argc < 4 ) {
    cerr << "Usage: " << argv[0] << " <addr> <addr> <data>" << endl;
    exit(1);
  }
  if ( ( s = socket(PF_INET,SOCK_DGRAM,0) ) < 0 ) {
    fprintf( stderr, "%s : socket() - %s\n", argv[0], strerror(errno) );
    exit(1);
  }
  bzero((char *)&saddr,sizeof(saddr));
  saddr.sin_family = AF_INET;
  if ( bind(s,(struct sockaddr *)&saddr,sizeof(saddr)) < 0 ) {
    fprintf( stderr, "%s : bind() - %s\n", argv[0], strerror(errno) );
    exit(1);
  }
  namelen = sizeof(saddr);
  if ( getsockname(s,(struct sockaddr *)&saddr,&namelen) < 0 ) {
    fprintf( stderr, "%s : getsockname() - %s\n", argv[0], strerror(errno) );
    exit(1);
  }
  printf( "Source port = %d (0x%04x)\n", ntohs(saddr.sin_port), ntohs(saddr.sin_port) );

  if ( ( hp = gethostbyname(argv[1]) ) == NULL ) {
    fprintf( stderr, "%s : gethostbyname(%s) - %s\n",
             argv[0], argv[1], strerror(errno) );
    exit(1);
  }
  bcopy(hp->h_addr,&daddr.sin_addr,hp->h_length);

  daddr.sin_family = hp->h_addrtype;
  port = STIB_PORT;
  daddr.sin_port = htons(port);
  if ( (ntohl(daddr.sin_addr.s_addr)&0xff) == 0xff ) {
    broadcast_enable = 1;
    if ( setsockopt(s,SOL_SOCKET,SO_BROADCAST,&broadcast_enable,
                     sizeof(broadcast_enable)) < 0 ) {
      fprintf( stderr, "%s : setsockopt() - %s\n", argv[0], strerror(errno) );
      exit(1);
    }
    printf("Enabled broadcast.\n");
  }

  struct timeval timeout;
  timeout.tv_sec = 2;
  timeout.tv_usec = 0;
  if ( setsockopt(s,SOL_SOCKET,SO_RCVTIMEO,&timeout,sizeof(timeout)) < 0 ) {
    fprintf( stderr, "%s : setsockopt() - %s\n", argv[0], strerror(errno) );
    exit(1);
  }
 
  unsigned int addr = strtoul(argv[2],NULL,16);
  unsigned int data = strtoul(argv[3],NULL,16);
  cout << "Address 0x" << hex << addr << " <--" << hex << data << dec << endl;

  Stib *msg = new Stib(s,(struct sockaddr *)&daddr,sizeof(daddr));

  msg->Clear();
  int ind1 = msg->Read(addr);
  msg->Write(addr,data);
  int ind2 = msg->Read(addr);

  msg->PrintTx();
  msg->Send();
  if ( ( ierr = msg->Receive() ) < 0 ) {
    cout << "Receive error..." <<endl;
  }
  else {
    msg->PrintRx();
    cout << "0x" << hex << addr << " = 0x" << hex << msg->RxData(ind1,1) << " ==> " << hex << msg->RxData(ind2,1) << dec << endl;
  }

  return 0;
}
