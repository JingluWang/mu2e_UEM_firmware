#include <iostream>
#include <stdlib.h>

#include "fmc228.hh"

using namespace std;
using namespace fmc228;

int main(int argc,char **argv) {
  if ( argc != 3 ) {
    cerr << "Usage: " << argv[0] << " <addr> <name>" << endl;
    exit(1);
  }
  int ichan = 0;

  Fmc228Interface *fmc228 = new Fmc228Interface(argv[1]);
  fmc228->ClearBuffer();
  int value = fmc228->SpiRead(LMK04828,argv[2]);
  cout << hex << value << endl; }
