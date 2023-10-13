#include <iostream>
#include <stdlib.h>
#include <string.h>
#include <string>

#include "amc502.hh"

using namespace std;
using namespace amc502;

int main(int argc,char **argv) {
  if ( argc < 2 ) {
    cerr << "Usage: " << argv[0] << " <addr>" << endl;
    exit(1);
  }
  Amc502Interface *amc502 = new Amc502Interface(argv[1],47000);
  string line;
  do {
    getline(cin,line);
    size_t p = line.find("Register address");

    if ( p != string::npos ) {
      p += 16;
      int reg = strtol(line.substr(p).c_str(),NULL,16);
      p = line.find("=",p);
      p += 2;
      int val = strtol(line.substr(p).c_str(),NULL,16);
      cout << "Register " << hex << reg << " <-- " << val << dec << endl;
      amc502->I2cWriteByte(ZL30162,reg,val);
    }
  }
  while ( ! cin.eof() );
}
