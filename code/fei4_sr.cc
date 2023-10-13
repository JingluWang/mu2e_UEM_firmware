#include <iostream>
#include <stdlib.h>

#include "fei4.hh"

using namespace std;
using namespace fei4;

int main(int argc,char **argv) {
  unsigned int bits[21] = { 0x00290000, 0x00270028, 0x00250026,
                            0x00230024, 0x00210022, 0x001f0020,
                            0x001d001e, 0x001b001c, 0x0019001a,
                            0x00170018, 0x00150016, 0x00130014,
                            0x00110012, 0x000f0010, 0x000d000e,
                            0x000b000c, 0x0009000a, 0x00070008,
                            0x00050006, 0x00030004, 0x00010002 };
  int idc = 0;
  int ichan = 0;
  if ( argc != 2 ) {
    cerr << "Usage: " << argv[0] << " <addr>" << endl;
    exit(1);
  }
  Fei4Interface *fei4 = new Fei4Interface(argv[1]);
  fei4->ClearBuffer();
  fei4->WriteModifiedRegisters(ichan);
  fei4->WriteBuffer();

  fei4->ClearBuffer();
  fei4->ClearPixelSR(ichan,COLPR_ALL);
  fei4->LoadPixelLatches(ichan,COLPR_DC|idc,0x1fff);
  fei4->WriteBuffer();

  fei4->ClearBuffer();
  fei4->ReadPixelSR(ichan,COLPR_DC|idc);   // Should be all zero
  fei4->WriteBuffer();

  fei4->ClearBuffer();
  fei4->SetPixelSR(ichan,COLPR_DC|idc);
  fei4->LoadPixelLatches(ichan,COLPR_DC|idc,0x0001);
  fei4->WriteBuffer();

  for ( int i=0; i<21; i++ ) bits[i] = ~bits[i];
  fei4->ClearBuffer();
  fei4->WritePixelSR(ichan,COLPR_DC|idc,bits);
  fei4->LoadPixelLatches(ichan,COLPR_DC|idc,0x00fe);
  fei4->WriteBuffer();

  fei4->ClearBuffer();
  fei4->ReadPixelLatches(ichan,COLPR_DC|idc,0x0002);
  fei4->ReadPixelSR(ichan,COLPR_DC|idc);   // Should be something else
  fei4->WriteBuffer();

  fei4->ClearBuffer();
  fei4->ReadPixelLatches(ichan,COLPR_DC|idc,0x0001);
  fei4->ReadPixelSR(ichan,COLPR_DC|idc);   // Should be all zero
  fei4->WriteBuffer();

  fei4->ClearBuffer();
  fei4->ReadPixelLatches(ichan,COLPR_DC|idc,0x0004);
  fei4->ReadPixelSR(ichan,COLPR_DC|idc);   // Should be something else
  fei4->WriteBuffer();

  fei4->ClearBuffer();
  fei4->ReadPixelLatches(ichan,COLPR_DC|idc,0x0100);
  fei4->ReadPixelSR(ichan,COLPR_DC|idc);   // Should be all one
  fei4->WriteBuffer();

}
