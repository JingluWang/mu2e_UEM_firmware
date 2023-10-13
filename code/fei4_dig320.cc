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
  if ( argc < 4 ) {
    cerr << "Usage: " << argv[0] << " <addr> <icol> <irow>" << endl;
    exit(1);
  }
  int icol = atoi(argv[2]);
  int irow = atoi(argv[3]);

  int ichan = 0;
  Fei4Interface *fei4 = new Fei4Interface(argv[1]);
  fei4->Buffer()->Write(FEI4_CMD(ichan),0xaa070000);   // conf mode
  fei4->Buffer()->WaitClear(FEI4_CMD(ichan),0x80000000);
  fei4->WriteBuffer();
//
//  It is necessary to start the chip off in a well defined state so
//  that the global registers match the model in local memory
//
  fei4->Configure(ichan);
//
//  Set default operating parameters in global registers
//
  fei4->ClearBuffer();
  fei4->WriteGlobalRegister(ichan,"320",1);
  fei4->WriteGlobalRegister(ichan,"c00",1);
  fei4->WriteGlobalRegister(ichan,"c01",0);
  fei4->WriteGlobalRegister(ichan,"c02",0);
  fei4->WriteGlobalRegister(ichan,"160",0);
  fei4->WriteGlobalRegister(ichan,"Vthin_Coarse",0xff);
  fei4->WriteGlobalRegister(ichan,"Vthin_Fine",0xff);
  fei4->WriteGlobalRegister(ichan,"DisableColCnfg0",0);
  fei4->WriteGlobalRegister(ichan,"DisableColCnfg1",0);
  fei4->WriteGlobalRegister(ichan,"DisableColCnfg2",0);
  fei4->WriteGlobalRegister(ichan,"Trig_Lat",3);
  fei4->WriteGlobalRegister(ichan,"DHS",0);
  fei4->WriteModifiedRegisters(ichan);
  fei4->WriteBuffer();

  fei4->ClearBuffer();
  fei4->Buffer()->Write(FEI4_CMD(ichan),0xaa070000);   // conf mode
  fei4->Buffer()->WaitClear(FEI4_CMD(ichan),0x80000000);
  fei4->WriteBuffer();
//
//
//  Clear all pixel latches by first clearing the shift register and
//  then loading all bits of the pixel latches
//
  fei4->ClearBuffer();
  fei4->ClearPixelSR(ichan,COLPR_ALL);
  fei4->LoadPixelLatches(ichan,COLPR_ALL,0x1fff);
  fei4->WriteBuffer();
//
//  Set the bit corresponding to row 1 column 1 and write to the pixel
//  shift register
// 
  fei4->ClearBuffer();
  fei4::ClearFrontEndBits(bits);
  fei4::SetFrontEndBit((icol-1)%2,irow-1,bits);
  fei4::SetFrontEndBit((icol)%2,irow-1,bits);
  fei4::SetFrontEndBit((icol-1)%2,irow+1,bits);
  fei4::SetFrontEndBit((icol)%2,irow+1,bits);
  fei4->WriteFrontEnd(ichan,bits);
  cout << "(C,R)=("
       << icol << "," << irow << ")" << endl;
//
//   Load bit 1 in double column 0 from the pixel shift register
//
  fei4->LoadPixelLatches(ichan,(icol-1)/2,0x0001);
  fei4->WriteBuffer();
//
//  Set digital charge injection parameters
//
  fei4->ClearBuffer();
  fei4->WriteGlobalRegister(ichan,"DHS",1);
  fei4->WriteGlobalRegister(ichan,"PlsrDAC",1);
  fei4->WriteGlobalRegister(ichan,"Trig_Count",1);
//
//  Sets the delay to 16 clock cycles
//  Sets the pulse width to 4 clock cycles
//
  fei4->WriteGlobalRegister(ichan,"CMDcnt12",0x1003);
  fei4->WriteGlobalRegister(ichan,"M13",0);
  fei4->WriteGlobalRegister(ichan,"PLL",1);
  fei4->WriteGlobalRegister(ichan,"SME",0);
  fei4->WriteGlobalRegister(ichan,"PlsrDelay",1);
  fei4->WriteGlobalRegister(ichan,"PlsrIDACRamp",180);
  fei4->WriteGlobalRegister(ichan,"Trig_Lat",175);
  fei4->WriteModifiedRegisters(ichan);
  fei4->WriteBuffer();
//
//   To generate two triggers, do this:
//
//   $ poke c8001004 b0010066
//   $ poke c8000004 80660201
//   c8000004 = 00660201 <-- 80660201
//   $ spy fifo
//   spy fifo:
//   01fc : SOF
//   00e9 : DH
//   00f1
//   0000 : E lv1ID = 28 bcID = 256
//   00ef : SR
//   003a
//   0087 : srec(14) = 647
//   0002
//   0001
//   001f : column = 1, row = 1, Tot1 = 1, Tot2 = 15
//   01bc : EOF
//   01fc : SOF
//   00e9 : DH
//   00f6
//   0000 : E lv1ID = 29 bcID = 512
//   00ef : SR
//   0024
//   0000 : srec(9) = 0
//   0002
//   0001
//   001f : column = 1, row = 1, Tot1 = 1, Tot2 = 15
//   01bc : EOF

}
