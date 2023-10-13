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
    cerr << "Usage: " << argv[0] << " <addr> [-t]" << endl;
    exit(1);
  }
  Amc502Interface *amc502 = new Amc502Interface(argv[1],47000);
  amc502->I2cWriteByte(ZL30162,0x011,0x01);
  amc502->I2cWriteByte(ZL30162,0x180,0x00);
  amc502->I2cWriteByte(ZL30162,0x011,0x00);
  usleep(35000);
  int val = amc502->I2cReadByte(ZL30162,0x180);
  cout << "Lock register = 0x" << hex << setw(2) << setfill('0') << val << endl;
  if ( argc > 2 && strcmp(argv[2],"-r") == 0 ) {
    cout << "Switching to reference clock..." << endl;
    amc502->Buffer()->Clear();
    amc502->Buffer()->Write(0xc0000000,0x00000000);
    amc502->Buffer()->Send();
    if ( amc502->Buffer()->Receive() < 0 ) {
      cerr << argv[0] << " - receive(2) - timeout." <<endl;
    }
  }
  else {
    cout << "Switching to encoded clock..." << endl;
    amc502->Buffer()->Clear();
    amc502->Buffer()->Write(0xc0000000,0x40000000);
    amc502->Buffer()->Send();
    if ( amc502->Buffer()->Receive() < 0 ) {
      cerr << argv[0] << " - receive(2) - timeout." <<endl;
    }
  }
  struct timeb tp0, tp1;
  ftime(&tp0);
  double tt0 = tp0.time+tp0.millitm*0.001;
  do {
    int lastval = val;
    amc502->I2cWriteByte(ZL30162,0x011,0x01);
    amc502->I2cWriteByte(ZL30162,0x180,0x00);
    amc502->I2cWriteByte(ZL30162,0x011,0x00);
    usleep(35000);
    val = amc502->I2cReadByte(ZL30162,0x180);
    if ( val >= 0 ) {
      ftime(&tp1);
      double tt1 = tp1.time+tp1.millitm*0.001;
      double dt = tt1 - tt0;
      if ( val != lastval ) {
        cout << "0x" << setw(2) << setfill('0') << hex << lastval << " --> "
             << "0x" << setw(2) << setfill('0') << hex << val << " at "
             << dec << dt << " sec." << endl;
      }
    }
    else {
      cout << "val = " << dec << val << endl;
    }
  }
  while ( (val&0x0f) != 0x0a );
  sleep(1);
  amc502->I2cWriteByte(ZL30162,0x011,0x01);
  amc502->I2cWriteByte(ZL30162,0x180,0x00);
  amc502->I2cWriteByte(ZL30162,0x011,0x00);
  usleep(35000);
  val = amc502->I2cReadByte(ZL30162,0x180);
  cout << "Lock register = 0x" << hex << setw(2) << setfill('0') << val << endl;
}
