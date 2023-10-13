#include <iostream>
#include <iomanip>
#include <string.h>
#include <errno.h>
#include <netdb.h>
#include <stdlib.h>
#include <arpa/inet.h>
#include <sys/types.h>
#include <sys/socket.h>

#include "stib.hh"
#include "fmc228.hh"

using namespace std;
using namespace stib;
using namespace fmc228;

void Fmc228Interface::WriteGlobalRegister(int chan,int addr,int data) {
  _msg->WaitClear(FMC228_SPI(chan),0x80000000);
  _msg->Write(FMC228_SPI(chan),0x80000000|((addr&0x1fff)<<16)|(data&0xff)<<8);
  if ( _log ) {
    cout << "wreg " << dec << chan << " " << addr << " " << setfill('0') << setw(2) << hex << data << dec << endl;
  }
}

Fmc228Interface::Fmc228Interface(char *addr) : _log(0) {
  if ( ( _s = socket(PF_INET,SOCK_DGRAM,0) ) < 0 ) {
    cerr << "Fmc228Interface: socket() - " << strerror(errno) << endl;
    exit(1);
  }
  bzero((char *)&_saddr,sizeof(_saddr));
  _saddr.sin_family = AF_INET;
  _saddr.sin_port = htons(47000);
  if ( bind(_s,(struct sockaddr *)&_saddr,sizeof(_saddr)) < 0 ) {
    cerr << "Fmc228Interface:  bind() - " << strerror(errno) << endl;
    exit(1);
  }
  socklen_t namelen = sizeof(_saddr);
  if ( getsockname(_s,(struct sockaddr *)&_saddr,&namelen) < 0 ) {
    cerr << "Fmc228Interface: getsockname() - " << strerror(errno) <<endl;
    exit(1);
  }
  cout << "Source port = " << ntohs(_saddr.sin_port) << endl;

  if ( ( _hp = gethostbyname(addr) ) == NULL ) {
    cerr << "Fmc228Interface: gethostbyname(" << addr << ") - " << strerror(errno) << endl;
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
      cerr << "Fmc228Interface: setsockopt() - " << strerror(errno) << endl;
      exit(1);
    }
    cout << "Enabled broadcast." << endl;
  }

  struct timeval timeout;
  timeout.tv_sec = 2;
  timeout.tv_usec = 0;
  if ( setsockopt(_s,SOL_SOCKET,SO_RCVTIMEO,&timeout,sizeof(timeout)) < 0 ) {
    cerr << "Fmc228Interface: setsockopt() - " << strerror(errno) << endl;
    exit(1);
  }

  _msg = new Stib(_s,(struct sockaddr *)&_daddr,sizeof(_daddr));

  _gr[0] = new LMK04828_GlobalRegisters();
  _gr[1] = new HMC835_GlobalRegisters();
  _gr[2] = new AD9234_GlobalRegisters();
  _gr[3] = new AD9234_GlobalRegisters();
}

//  The following method is probably wrong...
void Fmc228Interface::WriteModifiedRegisters(int chan,GlobalRegisters *gr) {
  for ( int i=0; i<32; i++ ) {
    if ( gr->Stale(i) ) {
      WriteGlobalRegister(chan,i,gr->Raw(i));
      gr->Unmark(i);
    }
  }
}

void Fmc228Interface::ClearBuffer() {
  _msg->Clear();
}

int Fmc228Interface::WriteBuffer() {
  int ierr;
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "WriteBuffer() receive() - timeout." << endl;
  }
  return ierr;
}

int Fmc228Interface::SpiRead(int ichan,int r) {
  int ierr;

  _msg->Clear();
  if ( ichan == HMC835 ) {
    _msg->WaitClear(FMC228_SPI(ichan),0x80000000);
    _msg->Write(FMC228_SPI(ichan),0x80000000|r);
    _msg->WaitClear(FMC228_SPI(ichan),0x80000000);
    _msg->Write(FMC228_SPI(ichan),0x80000000|r);
    _msg->WaitClear(FMC228_SPI(ichan),0x80000000);
  }
  else {
    _msg->WaitClear(FMC228_SPI(ichan),0x80000000);
    _msg->Write(FMC228_SPI(ichan),0x80000000|(r<<16));
    _msg->WaitClear(FMC228_SPI(ichan),0x80000000);
  }
  int index = _msg->Read(FMC228_SPI(ichan));
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "ReadMatchCounters() - receive() - timeout." <<endl;
  }
  unsigned int v = _msg->RxData(index,1);
  _gr[ichan]->Set(r,v);
  return v;
}

int Fmc228Interface::SpiRead(int ichan,const char *name) {
  int ierr;

  GlobalRegisterField f = _gr[ichan]->Field(name);
  int r = f.Register();
  _msg->Clear();
  if ( ichan == HMC835 ) {
    _msg->WaitClear(FMC228_SPI(ichan),0x80000000);
    _msg->Write(FMC228_SPI(ichan),0x80000000|r);
    _msg->WaitClear(FMC228_SPI(ichan),0x80000000);
    _msg->Write(FMC228_SPI(ichan),0x80000000|r);
    _msg->WaitClear(FMC228_SPI(ichan),0x80000000);
  }
  else {
    _msg->WaitClear(FMC228_SPI(ichan),0x80000000);
    _msg->Write(FMC228_SPI(ichan),0x80000000|(r<<16));
    _msg->WaitClear(FMC228_SPI(ichan),0x80000000);
  }
  int index = _msg->Read(FMC228_SPI(ichan));
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "ReadMatchCounters() - receive() - timeout." <<endl;
  }
  unsigned int v = _msg->RxData(index,1);
  f.SetRaw(v);
  return f.Value();
}

int Fmc228Interface::SpiRegisterValue(int ichan,const char *name) {
  int ierr;

  GlobalRegisterField f = _gr[ichan]->Field(name);
  return f.Value();
}

void Fmc228Interface::SpiRead(int chan) {
  std::set<int> mapped = _gr[chan]->MappedRegisters();
  for ( std::set<int>::const_iterator i=mapped.begin(); i!=mapped.end(); i++ ) {
    SpiRead(chan,*i);
  }
}

void Fmc228Interface::PrintGlobalRegisters(int chan) {
  _gr[chan]->Print();
}

int Fmc228Interface::Configure(int chan) {
  int ierr;

  _msg->Clear();
  _msg->Send();

  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "Configure() receive() - timeout." << endl;
  }
  return ierr;
}
