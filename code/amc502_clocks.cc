#include <iostream>
#include <stdlib.h>
#include <string.h>

#include "amc502.hh"

using namespace std;
using namespace amc502;

int main(int argc,char **argv) {
  if ( argc < 2 ) {
    cerr << "Usage: " << argv[0] << " <addr>" << endl;
    exit(1);
  }

  Amc502Interface *amc502 = new Amc502Interface(argv[1]);

  const unsigned char *mux0 = amc502->ReadCrossbarSwitch(0);
  unsigned char buf[16];
  for ( int i=0; i<16; i++ ) {
    buf[i] = mux0[i];
  }

  buf[0] = 0x88;   // Port 0 is output from input port 8 (10 Mhz)
  buf[1] = 0x00;   // Port 1 is input
  buf[2] = 0x00;   // Port 2 is input
  buf[3] = 0x00;   // Port 3 is input
  buf[8] = 0x40;   // Port 8 is input
  buf[9] = 0x88;   // Port 9 is output from port 8
  buf[10] = 0x88;  // Port 10 is output from port 8
  buf[11] = 0x88;  // Port 11 is output from port 8
  buf[12] = 0x88;  // Port 12 is output routed from input port 8

  amc502->WriteCrossbarSwitch(0,buf);

  amc502->PrintCrossbarSwitch(0);
  amc502->PrintCrossbarSwitch(1);

  sleep(1);

  const char *clkname[] = { "clk156.25mhz", "clk20mhz",
                            "fpclke", "fpclkf", "fpclkg", "fpclkh",
                            "dclkout0", "dclkout2", "dclkout10", "dclkout12",
                            "sysref11", "sysref13" };
  for ( int i=0; i<12; i++ ) {
    cout << clkname[i] << " = " << amc502->ReadFrequency(i)/1000.0 << " MHz" << endl;
  }
}
