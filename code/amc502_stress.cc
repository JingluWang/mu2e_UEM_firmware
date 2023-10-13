#include <iostream>
#include <stdlib.h>
#include <string.h>
#include <string>
#include <sys/timeb.h>

#include <unistd.h>

#include "amc502.hh"

using namespace std;
using namespace amc502;

int main(int argc,char **argv) {
  if ( argc < 2 ) {
    cerr << "Usage: " << argv[0] << " <addr> [n] [<addr>]" << endl;
    exit(1);
  }
  int n = 1;
  if ( argc > 2 ) n = atoi(argv[2]);

  Amc502Interface *amc502[2] = { NULL, NULL };
  amc502[0] = new Amc502Interface(argv[1],48880);
  if ( argc > 3 ) {
    amc502[1] = new Amc502Interface(argv[3],48879);
  }
 
  srandom(time(NULL));
  int count[16];
  for ( int j=0; j<16; j++ ) count[j] = 0;
  cout << "Resetting counters..." << endl; 
  amc502[0]->Buffer()->Clear();
  amc502[0]->Buffer()->Write(0xc0000008,0x333d);   // halt
  amc502[0]->Buffer()->Write(0xc0000010,0);        // clear counters
  amc502[0]->Buffer()->Send();
  if ( amc502[0]->Buffer()->Receive() < 0 ) {
    cerr << argv[0] << " - receive(1) - timeout." <<endl;
  }

  if ( amc502[1] != NULL ) {
    amc502[1]->Buffer()->Clear();
    amc502[1]->Buffer()->Write(0xc0000010,0);        // clear counters
    amc502[1]->Buffer()->Send();
    if ( amc502[1]->Buffer()->Receive() < 0 ) {
      cerr << argv[0] << " - receive(2) - timeout." <<endl;
    }
  }

  cout << "Starting counters..." << endl; 
  amc502[0]->Buffer()->Clear();
  amc502[0]->Buffer()->Write(0xc0000008,0x3339);   // run
//  amc502[0]->Buffer()->Write(0xc0000008,0x3338);   // run ?
  amc502[0]->Buffer()->Send();
  if ( amc502[0]->Buffer()->Receive() < 0 ) {
    cerr << argv[0] << " - receive(3) - timeout." <<endl;
  }

  cout << "Sending patterns..." << endl; 
  int i = 0;
  while ( i < n ) {
    usleep(100);
    amc502[0]->Buffer()->Clear();
    for ( int j=0; j<10; j++, i++ ) {
      long int u;
      do {
        u = random();
      }
      while ( (u&0xf0) == 0xd0 || (u&0x0f) == 0x0d );
      unsigned int word = 0x3330 | (u&0x0f);
      count[u&0x0f] += 1;
      cout << i << " : " << setw(4) << setfill('0') << hex << word << dec << endl;
      amc502[0]->Buffer()->Write(0xc0000008,word);
    }
    amc502[0]->Buffer()->Send();
    if ( amc502[0]->Buffer()->Receive() < 0 ) {
      cerr << argv[0] << " - receive(4) - timeout." <<endl;
    }
  }
  amc502[0]->Buffer()->Clear();
  amc502[0]->Buffer()->Write(0xc0000008,0x333d);   // halt
  amc502[0]->Buffer()->Send();
  if ( amc502[0]->Buffer()->Receive() < 0 ) {
    cerr << argv[0] << " - receive(7) - timeout." <<endl;
  }

  int index[2][16];
  for ( int k=0; k<16; k++ ) {
    amc502[0]->Buffer()->Write(AMC502_CSR,0x40000000|(k<<8));
    index[0][k] = amc502[0]->Buffer()->Read(AMC502_COUNT_LOW);
  }
  amc502[0]->Buffer()->Send();
  if ( amc502[0]->Buffer()->Receive() < 0 ) {
    cerr << argv[0] << " - receive(5) - timeout." <<endl;
  }
  if ( amc502[1] != NULL ) {
    amc502[1]->Buffer()->Clear();
    for ( int k=0; k<16; k++ ) {
      amc502[1]->Buffer()->Write(AMC502_CSR,0x40000000|(k<<8));
      amc502[1]->Buffer()->Nop();
      index[1][k] = amc502[1]->Buffer()->Read(AMC502_COUNT_LOW);
    }
    amc502[1]->Buffer()->Send();
    if ( amc502[1]->Buffer()->Receive() < 0 ) {
      cerr << argv[0] << " - receive(6) - timeout." <<endl;
    }
  }

  cout << "cmd   sent        master         slave          diff" << endl;
  for ( int j=0; j<16; j++ ) {
    int v = amc502[0]->Buffer()->RxData(index[0][j],1);
    int w = -1;
    if ( amc502[1] != NULL ) {
      w = amc502[1]->Buffer()->RxData(index[1][j],1);
    }
    cout << " " << setfill(' ') << setw(2) << (hex) << j << setw(10) << dec << count[j] << " " << setw(10) << v << "    " << setw(10) << w << "    " << setw(10) << v-w << endl;
  }
}
