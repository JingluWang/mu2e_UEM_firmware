#include <iostream>
#include <stdlib.h>
#include <string.h>
#include <string>
#include <sys/timeb.h>

#include "amc502.hh"

using namespace std;
using namespace amc502;

int main(int argc,char **argv) {
  if ( argc < 3 ) {
    cerr << "Usage: " << argv[0] << " <addr> <pattern> [<addr>]" << endl;
    exit(1);
  }
  int p = atoi(argv[2]);

  Amc502Interface *amc502 = new Amc502Interface(argv[1],47000);
  Amc502Interface *amc502_slave = NULL;
  if ( argc > 3 ) {
    amc502_slave = new Amc502Interface(argv[3],47001);
    cout << " dly   mux  dt (ns)  m good   m bad  s good   s bad" << endl;
    cout << "----  ----  -------  ------  ------  ------  ------" << endl;
  }
  else {
    cout << " dly   mux  dt (ns)  m good   m bad" << endl;
    cout << "----  ----  -------  ------  ------" << endl;
  }
//
//  Loop over phase adjustments
//
  for ( int i=0; i<40; i++ ) {
    for ( int j=0; j<8; j++ ) {
      double dt = 25.0/40.0*(i+0.125*j);
      amc502->SetTclkSamplePhase(i,j);
      if ( amc502_slave ) {
        amc502_slave->SetTclkSamplePhase(i,j);
      }
      cout << setw(3) << i << "     " << j << "  " << setw(7) << fixed << setprecision(2) << dt;
      amc502->Buffer()->Clear();
      amc502->Buffer()->Write(AMC502_COUNT_LOW,0);
      amc502->Buffer()->Send();
      if ( amc502->Buffer()->Receive() < 0 ) {
        cerr << argv[0] << " - receive(1) - timeout." <<endl;
      }
      if ( amc502_slave ) {
        amc502_slave->Buffer()->Clear();
        amc502_slave->Buffer()->Write(AMC502_COUNT_LOW,0);
        amc502_slave->Buffer()->Send();
        if ( amc502_slave->Buffer()->Receive() < 0 ) {
          cerr << argv[0] << " - receive(2) - timeout." <<endl;
        }
      }
      for ( int k=0; k<10; k++ ) {
        amc502->Buffer()->Clear();
        for ( int l=0; l<20; l++ ) {
          amc502->Buffer()->Write(AMC502_CMD,0x3330|p);
        }
        amc502->Buffer()->Send();
        if ( amc502->Buffer()->Receive() < 0 ) {
          cerr << argv[0] << " - receive(2) - timeout." <<endl;
        }
      }
      amc502->Buffer()->Clear();
      int index[16];
      for ( int k=0; k<16; k++ ) {
        amc502->Buffer()->Write(AMC502_CSR,0x40000000|(k<<8));
        index[k] = amc502->Buffer()->Read(AMC502_COUNT_LOW);
      }
      amc502->Buffer()->Send();
      if ( amc502->Buffer()->Receive() < 0 ) {
        cerr << argv[0] << " - receive(3) - timeout." <<endl;
      }
      int ngood = 0;
      int nbad = 0;
      for ( int k=0; k<16; k++ ) {
        unsigned int v = amc502->Buffer()->RxData(index[k],1);
        if ( k == p ) {
          ngood = v;
        }
        else if ( k != 3 ) {
          nbad += v;
        }
      }
      int sgood, sbad;
      if ( amc502_slave ) {
        amc502_slave->Buffer()->Clear();
        int index[16];
        for ( int k=0; k<16; k++ ) {
          amc502_slave->Buffer()->Write(AMC502_CSR,0x40000000|(k<<8));
          index[k] = amc502_slave->Buffer()->Read(AMC502_COUNT_LOW);
        }
        amc502_slave->Buffer()->Send();
        if ( amc502_slave->Buffer()->Receive() < 0 ) {
          cerr << argv[0] << " - receive(4) - timeout." <<endl;
        }
        sgood = 0;
        sbad = 0;
        for ( int k=0; k<16; k++ ) {
          unsigned int v = amc502_slave->Buffer()->RxData(index[k],1);
          if ( k == p ) {
            sgood = v;
          }
          else if ( k != 3 ) {
            sbad += v;
          }
        }
      }
      cout << "  " << setw(6) << ngood << "  " << setw(6) << nbad;
      if ( amc502_slave ) {
        cout << "  " << setw(6) << sgood << "  " << setw(6) << sbad;
      }
      cout << endl;
    }
  }
}
