#include <iostream>
#include <iomanip>
#include <string.h>
#include <errno.h>
#include <netdb.h>
#include <stdlib.h>
#include <arpa/inet.h>
#include <sys/types.h>
#include <sys/socket.h>

#include <unistd.h>

#include "stib.hh"
#include "amc502.hh"

using namespace std;
using namespace stib;
using namespace amc502;

Amc502Interface::Amc502Interface(char *addr,int sport) : _log(0) {
  if ( ( _s = socket(PF_INET,SOCK_DGRAM,0) ) < 0 ) {
    cerr << "Amc502Interface: socket() - " << strerror(errno) << endl;
    exit(1);
  }
  bzero((char *)&_saddr,sizeof(_saddr));
  _saddr.sin_family = AF_INET;
  _saddr.sin_port = htons(sport);
  if ( bind(_s,(struct sockaddr *)&_saddr,sizeof(_saddr)) < 0 ) {
    cerr << "Amc502Interface:  bind() - " << strerror(errno) << endl;
    exit(1);
  }
  socklen_t namelen = sizeof(_saddr);
  if ( getsockname(_s,(struct sockaddr *)&_saddr,&namelen) < 0 ) {
    cerr << "Amc502Interface: getsockname() - " << strerror(errno) <<endl;
    exit(1);
  }
  cout << "Source port = " << ntohs(_saddr.sin_port) << endl;

  if ( ( _hp = gethostbyname(addr) ) == NULL ) {
    cerr << "Amc502Interface: gethostbyname(" << addr << ") - " << strerror(errno) << endl;
    exit(1);
  }
  bcopy(_hp->h_addr,&_daddr.sin_addr,_hp->h_length);
  _daddr.sin_family = _hp->h_addrtype;
  unsigned short port = STIB_PORT;
  _daddr.sin_port = htons(port);
  if ( (ntohl(_daddr.sin_addr.s_addr)&0xff) == 0xff ) {
    int broadcast_enable = 1;
    if ( setsockopt(_s,SOL_SOCKET,SO_BROADCAST,&broadcast_enable,
                     sizeof(broadcast_enable)) < 0 ) {
      cerr << "Amc502Interface: setsockopt() - " << strerror(errno) << endl;
      exit(1);
    }
    cout << "Enabled broadcast." << endl;
  }

  struct timeval timeout;
  timeout.tv_sec = 2;
  timeout.tv_usec = 0;
  if ( setsockopt(_s,SOL_SOCKET,SO_RCVTIMEO,&timeout,sizeof(timeout)) < 0 ) {
    cerr << "Amc502Interface: setsockopt() - " << strerror(errno) << endl;
    exit(1);
  }

  _msg = new Stib(_s,(struct sockaddr *)&_daddr,sizeof(_daddr));
  cout << "_msg = " << hex << _msg << dec << endl; 

  _gr[MUX0] = NULL;
  _gr[MUX1] = NULL;
  _gr[ZL30162] = new ZL30162_GlobalRegisters();
}

//  This method is wrong - need a better loop over the registers.
/*
void Amc502Interface::WriteModifiedRegisters(int chan,GlobalRegisters *gr) {
  for ( int i=0; i<32; i++ ) {
    if ( gr->Stale(i) ) {
      WriteGlobalRegister(chan,i,gr->Raw(i));
      gr->Unmark(i);
    }
  }
}
*/

void Amc502Interface::ClearBuffer() {
  _msg->Clear();
}

int Amc502Interface::WriteBuffer() {
  int ierr;
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "WriteBuffer() receive() - timeout." << endl;
  }
  return ierr;
}

const unsigned char *Amc502Interface::ReadCrossbarSwitch(int i) {
  static unsigned char buf[2][16];
  int ierr, index[4];

  cout << "ReadCrossbarSwitch(" << i << ")..." << endl;
  _msg->Clear();
  _msg->WaitClear(AMC502_I2C,0x80000000);
  _msg->Write(AMC502_I2C,0x10b1+2*i);
  _msg->WaitClear(AMC502_I2C,0x80000000,8192);  // Takes a long time
  index[0] = _msg->Read(AMC502_I2C_RBUF(0));
  index[1] = _msg->Read(AMC502_I2C_RBUF(1));
  index[2] = _msg->Read(AMC502_I2C_RBUF(2));
  index[3] = _msg->Read(AMC502_I2C_RBUF(3));
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "ReadCrossbarSwitch() - receive() - timeout." <<endl;
  }
  _msg->PrintRx();
  for ( int j=0; j<4; j++ ) {
    unsigned int v = _msg->RxData(index[j],1);
    buf[i][4*j+0] = v&0xff;
    buf[i][4*j+1] = (v>>8)&0xff;
    buf[i][4*j+2] = (v>>16)&0xff;
    buf[i][4*j+3] = (v>>24)&0xff;
  }
  return buf[i];
}

void Amc502Interface::WriteCrossbarSwitch(int i,const unsigned char *buf) {
  int ierr;

  _msg->Clear();
  for ( int j=0; j<4; j++ ) {
    unsigned int v = buf[4*j] | (buf[4*j+1]<<8) | (buf[4*j+2]<<16) | (buf[4*j+3]<<24);
    _msg->Write(AMC502_I2C_WBUF(j),v);
  }
  _msg->WaitClear(AMC502_I2C,0x80000000);
  _msg->Write(AMC502_I2C,0x10b0+2*i);
  _msg->WaitClear(AMC502_I2C,0x80000000,8192);  // Takes a long time
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "WriteCrossbarSwitch() - receive() - timeout." <<endl;
  }
}

void Amc502Interface::PrintCrossbarSwitch(int i) {
  const unsigned char *buf = ReadCrossbarSwitch(i);
  const char *io[2][16] = { { "TCLKA", "TCLKB", "TCLKC", "TCLKD",
                              "PLLCLKA_in", "PLLCLKB_in", "PLLCLKC_in", "PLLCLKD_in",
                              "FPCLKE", "FPCLKF", "FPCLKG", "FPCLKH",
                              "FMCEXPA", "FMCEXPB", "FMCEXPC", "FMCEXPD" },
                            { "FMCEXPA", "FMCEXPB", "FMCEXPC", "FMCEXPD",
                              "PLLCLKA_out", "PLLCLKB_out", "PLLCLKC_out", "PLLCLKD_out",
                              "FMC0_CLK0_M2C", "FMC0_CLK1_M2C", "FMC0_CLK2_BIDIR", "FMC0_CLK3_BIDIR",
                              "FMC1_CLK0_M2C", "FMC1_CLK1_M2C", "FMC1_CLK2_BIDIR", "FMC1_CLK3_BIDIR" } };

  cout << "MUX" << i << " = ";
  for ( int j=0; j<16; j++ ) {
    cout << " " << hex << setw(2) << setfill('0') << (int)buf[j];
  }
  cout << dec << endl;

  for ( int j=0; j<16; j++ ) {
    cout << "  Port " << dec << setw(2) << j << " (" << io[i][j] << ") : ";
    if ( ! (buf[j]&0x80) ) {
      cout << " input";
      if ( (buf[j]&0x40) ) {
        cout << " Z=100 Ohm";
      }
    }
    else {
      cout << " output <-- " << dec << ((int)buf[j]&0x0f) << " (" << io[i][buf[j]&0x0f] << ")";
    }
    cout << endl;
  }
}

int Amc502Interface::ReadFrequency(int i) {
  int ierr;
  _msg->Clear();
  int index = _msg->Read(AMC502_FREQUENCY(i));
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "ReadCrossbarSwitch() - receive() - timeout." <<endl;
    return -1;
  }
  return _msg->RxData(index,1);
}

int Amc502Interface::I2cReadWord(int ichan,int r) {
  int ierr;

  _msg->Clear();
  if ( ichan == ZL30162 ) {
    _msg->WaitClear(AMC502_I2C,0x80000000);
    _msg->Write(AMC502_I2C_WBUF(0),((r>>7)<<8)|0x7f);   // Page select register
    _msg->Write(AMC502_I2C,0x218);
    _msg->WaitClear(AMC502_I2C,0x80000000,8192);  // Takes a long time
    _msg->Write(AMC502_I2C_WBUF(0),r&0x7f);       // Read address
    _msg->Write(AMC502_I2C,0x118);
    _msg->WaitClear(AMC502_I2C,0x80000000,8192);  // Takes a long time
    _msg->Write(AMC502_I2C,0x419);
    _msg->WaitClear(AMC502_I2C,0x80000000,8192);  // Takes a long time
  }
  int index = _msg->Read(AMC502_I2C_RBUF(0));
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "ReadMatchCounters() - receive() - timeout." <<endl;
  }
  unsigned int v = _msg->RxData(index,1);
  return ((v>>24)&0xff)|(((v>>16)&0xff)<<8)|(((v>>8)&0xff)<<16)|((v&0xff)<<24);
}

int Amc502Interface::I2cReadByte(int ichan,int r) {
  int ierr;

  _msg->Clear();
  if ( ichan == ZL30162 ) {
    _msg->WaitClear(AMC502_I2C,0x80000000);
    _msg->Write(AMC502_I2C_WBUF(0),((r>>7)<<8)|0x7f);   // Page select register
    _msg->Write(AMC502_I2C,0x218);
    _msg->WaitClear(AMC502_I2C,0x80000000,8192);  // Takes a long time
    _msg->Write(AMC502_I2C_WBUF(0),r&0x7f);       // Read address
    _msg->Write(AMC502_I2C,0x118);
    _msg->WaitClear(AMC502_I2C,0x80000000,8192);  // Takes a long time
    _msg->Write(AMC502_I2C,0x119);
    _msg->WaitClear(AMC502_I2C,0x80000000,8192);  // Takes a long time
  }
  int index = _msg->Read(AMC502_I2C_RBUF(0));
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "ReadMatchCounters() - receive() - timeout." <<endl;
  }
  unsigned int v = _msg->RxData(index,1);
  return v&0xff;
}

void Amc502Interface::I2cWriteByte(int ichan,int r,int v) {
  int ierr;
  _msg->Clear();
  if ( ichan == ZL30162 ) {
    _msg->WaitClear(AMC502_I2C,0x80000000,8192);
    _msg->Write(AMC502_I2C_WBUF(0),((r>>7)<<8)|0x7f);   // Page select register
    _msg->Write(AMC502_I2C,0x218);
    _msg->WaitClear(AMC502_I2C,0x80000000,8192);  // Takes a long time
    _msg->Write(AMC502_I2C_WBUF(0),((v&0xff)<<8)|(r&0x7f));       // Read address
    _msg->Write(AMC502_I2C,0x218);
    _msg->WaitClear(AMC502_I2C,0x80000000,8192);  // Takes a long time
  }
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "ReadMatchCounters() - receive() - timeout." <<endl;
  }
}

void Amc502Interface::I2cWriteWord(int ichan,int r,unsigned int v) {
  int ierr;
  _msg->Clear();
  if ( ichan == ZL30162 ) {
    _msg->WaitClear(AMC502_I2C,0x80000000,8192);
    _msg->Write(AMC502_I2C_WBUF(0),((r>>7)<<8)|0x7f);   // Page select register
    _msg->Write(AMC502_I2C,0x218);
    _msg->WaitClear(AMC502_I2C,0x80000000,8192);  // Takes a long time
    _msg->Write(AMC502_I2C_WBUF(0),(r&0x7f)|(((v>>24)&0xff)<<8)|
                                            (((v>>16)&0xff)<<16)|
                                            (((v>>8)&0xff)<<24));
    _msg->Write(AMC502_I2C_WBUF(1),v&0xff);
    _msg->Write(AMC502_I2C,0x518);
    _msg->WaitClear(AMC502_I2C,0x80000000,8192);  // Takes a long time
  }
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "ReadMatchCounters() - receive() - timeout." <<endl;
  }
}

void Amc502Interface::SetTclkSamplePhase(int i,int j) {
  int ierr = 0;
  _msg->Clear();
  _msg->Write(AMC502_PLL,0x80081514|((j&0x07)<<13));
  _msg->Write(AMC502_PLL,0x80090000|i);
  _msg->Write(AMC502_PLL,0x800a128a|((j&0x07)<<13));
  _msg->Write(AMC502_PLL,0x800b0000|i);
  _msg->Write(AMC502_CSR,0x42000000);     // Reset the PLL
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "SetTclkSamplePhase() - receive() - timeout." <<endl;
  }
  _msg->Clear();
  _msg->Write(AMC502_CSR,0x40000000);              // Deassert reset
  _msg->WaitSet(AMC502_CSR,0x08000000,10000000);   // Wait for lock
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "SetTclkSamplePhase() - receive() - timeout." <<endl;
  }
  usleep(100000);
}
