#include <iostream>
#include <stdlib.h>
#include <string.h>
#include <map>
#include <string>

#include <unistd.h>

#include "amc502.hh"

using namespace std;
using namespace amc502;

const char *io[2][16] = { { "TCLKA", "TCLKB",
                            "TCLKC", "TCLKD",
                            "PLLCLKA_in", "PLLCLKB_in",
                            "PLLCLKC_in", "PLLCLKD_in",
                            "FPCLKE", "FPCLKF",
                            "FPCLKG", "FPCLKH",
                            "FMCEXPA", "FMCEXPB",
                            "FMCEXPC", "FMCEXPD" },
                          { "FMCEXPA", "FMCEXPB",
                            "FMCEXPC", "FMCEXPD",
                            "PLLCLKA_out", "PLLCLKB_out",
                            "PLLCLKC_out", "PLLCLKD_out",
                            "FMC0_CLK0_M2C", "FMC0_CLK1_M2C",
                            "FMC0_CLK2_BIDIR", "FMC0_CLK3_BIDIR",
                            "FMC1_CLK0_M2C", "FMC1_CLK1_M2C",
                            "FMC1_CLK2_BIDIR", "FMC1_CLK3_BIDIR" } };

int main(int argc,char **argv) {
  if ( argc < 2 ) {
    cerr << "Usage: " << argv[0] << " <addr>" << endl;
    exit(1);
  }

  Amc502Interface *amc502 = new Amc502Interface(argv[1],47000);

  amc502->PrintCrossbarSwitch(0);
  amc502->PrintCrossbarSwitch(1);

  map<string,int> mux[2];
  unsigned char bmux[2][16];
  for ( int i=0; i<2; i++ ) {
    for ( int j=0; j<16; j++ ) {
      mux[i][io[i][j]] = j;
      bmux[i][j] = 0;
    }
  }

  string line;
  int imux = -1;
  int jmux = -1;
  int output = 0;
  unsigned char *byte = NULL;

  do {
    cin >> line;
    if ( line.find("MUX0") != string::npos ) {
      imux = 0;
      jmux = -1;
      byte = NULL;
    }
    else if ( line.find("MUX1") != string::npos ) {
      imux = 1;
      jmux = -1;
      byte = NULL;
    }
    else if ( imux == 0 || imux == 1 ) {
      map<string,int>::const_iterator m = mux[imux].find(line);
      if ( m != mux[imux].end() ) {
        jmux = m->second;
        if ( output ) {
          *byte |= jmux;
          output = 0;
        }
        else {
          byte = bmux[imux]+jmux;
        }
      }
      else if ( byte != NULL ) {
        if ( line.find("input") != string::npos ) {
          *byte = 0;
        }
        else if ( line.find("output") != string::npos ) {
          *byte = 0x80;
          output = 1;
        }
        else if ( line.find("Z") != string::npos ) {
          *byte |= 0x40;
        }
        else {
          cout << "???" << endl;
        }
      }
    }
  }
  while ( ! cin.eof() );

  int ierr = 0;
  for ( int i=0; i<2; i++ ) {
    cout << "MUX" << i << " : ";
    for ( int j=0; j<16; j++ ) {
      cout << " " << setw(2) << setfill('0') << hex << (int)bmux[i][j];
      if ( (bmux[i][j]&0x80) && (bmux[i][bmux[i][j]&0x0f]&0x80) ) {
        ierr = 1;
        cout << endl << "Error: output " << dec << j << " with no input." << endl;
        cout << "Output " << j << " (" << hex << (int)bmux[i][j] << ") has input "
             << dec << (int)(bmux[i][j]&0x0f) << endl;
        cout << "Port " << dec << (int)(bmux[i][j]&0x0f) << " = "
             << hex << (int)bmux[i][bmux[i][j]&0x0f] << endl;
      }
    }
    cout << endl;
  }

  if ( ! ierr ) {
    amc502->WriteCrossbarSwitch(0,bmux[0]);
    amc502->WriteCrossbarSwitch(1,bmux[1]);
  }
}
