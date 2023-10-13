#include <iostream>
#include <stdlib.h>

#include "fei4.hh"

using namespace std;
using namespace fei4;

int main(int argc,char **argv) {
  unsigned int bits[21] = { 0x00000000, 0xf0000000, 0x00000000,
                            0x00000000, 0x00000000, 0x00000000,
                            0x00000000, 0x00000000, 0x00000000,
                            0x00000000, 0x00000000, 0x00000000,
                            0x00000000, 0x00000000, 0x00000000,
                            0x00000000, 0x00000000, 0x00000000,
                            0x00000000, 0x00000000, 0x00000000 };
  if ( argc != 2 ) {
    cerr << "Usage: " << argv[0] << " <addr>" << endl;
    exit(1);
  }
  int ichan = 0;

  Fei4Interface *fei4 = new Fei4Interface(argv[1]);
  fei4->ClearPixelSR(ichan,COLPR_ALL);
  fei4->LoadPixelLatches(ichan,COLPR_ALL,0x1fff);  //  Enable all pixels in readout
  fei4->WriteBuffer();

  fei4->ClearBuffer();
  fei4->WritePixelSR(ichan,COLPR_DC,bits);         //  Digital
  fei4->LoadPixelLatches(ichan,COLPR_DC,0x0001);   //  Enable all pixels in readout
  fei4->SetupDigitalInject(ichan);
  fei4->WriteBuffer();
}
