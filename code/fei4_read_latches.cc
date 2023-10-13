#include <iostream>
#include <stdlib.h>

#include "fei4.hh"

using namespace std;
using namespace fei4;

int main(int argc,char **argv) {
  unsigned int bits[21] = { 0x00000000, 0x00000000, 0x00000000,
                            0x00000000, 0x00000000, 0x00000000,
                            0x00000000, 0x00000000, 0x00000000,
                            0x00000000, 0x00000000, 0x00000000,
                            0x00000000, 0x00000000, 0x00000000,
                            0x00000000, 0x00000000, 0x00000000,
                            0x00000000, 0x00000000, 0x00000000 };
  if ( argc < 5 ) {
    cerr << "Usage: " << argv[0] << " <addr> <chan> <icol> <irow>" << endl;
    exit(1);
  }
  int icol = atoi(argv[3]);
  int irow = atoi(argv[4]);
  int ichan = atoi(argv[2]);
  Fei4Interface *fei4 = new Fei4Interface(argv[1]);
  fei4->Buffer()->Write(FEI4_CMD(ichan),0xaa070000);   // conf mode
  fei4->Buffer()->WaitClear(FEI4_CMD(ichan),0x80000000);
  fei4->WriteBuffer();

  for ( int ibit=0; ibit<13; ibit++ ) {
    fei4->ClearBuffer();
    fei4->ReadPixelLatches(ichan,cp,1<<ibit);
  }
}
