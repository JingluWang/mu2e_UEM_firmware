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
#include "fei4.hh"

using namespace std;
using namespace stib;
using namespace fei4;

void fei4::ClearFrontEndBits(unsigned int *bits) {
  for ( int i=0; i<21; i++ ) bits[i] = 0;
}

void fei4::SetFrontEndBits(unsigned int *bits) {
  for ( int i=0; i<21; i++ ) bits[i] = 0xffffffff;
}

void fei4::SetFrontEndBit(int ic,int ir,unsigned int *bits) {
  int iw, ib;
  if ( (ic%2) == 0 ) {
    int ibit = 335-ir;
    iw = ibit/32;
    ib = ibit%32;
  }
  else {
    int ibit = 336+ir;
    iw = ibit/32;
    ib = ibit%32;
  }
  bits[iw] |= (1<<ib);
}

void fei4::ClearFrontEndBit(int ic,int ir,unsigned int *bits) {
  int iw, ib;
  if ( (ic%2) == 0 ) {
    int ibit = 335-ir;
    iw = ibit/32;
    ib = ibit%32;
  }
  else {
    int ibit = 336+ir;
    iw = ibit/32;
    ib = ibit%32;
  }
  bits[iw] &= ~((1<<ib));
}

void Fei4Interface::WriteGlobalRegister(int chan,int addr,int data) {
  int chipid = chan%2+1;
//
//  This broadcasts to both chips...
//  unsigned int word = 0x8a000000|((addr&0x3f)<<16)|(data&0xffff);
//
  unsigned int word = 0x88000000|(chipid<<22)|((addr&0x3f)<<16)|(data&0xffff);
  _msg->WaitClear(FEI4_CMD(chan),0x80000000);
  _msg->Write(FEI4_CMD(chan),word);
  if ( _log ) {
    cout << "wreg " << dec << chan << " " << addr << " " << setfill('0') << setw(4) << hex << data << " (" << word << ")" << dec << endl;
  }
}

void Fei4Interface::GlobalPulse(int chan,int width=1) {
  int chipid = chan%2+1;
  _msg->WaitClear(FEI4_CMD(chan),0x80000000);
//
//  This broadcasts to both chips...
//  unsigned int word = 0xa6000000 | ((width&0x3f)<<16);
//
  unsigned int word = 0xa4000000 | (chipid<<22) | ((width&0x3f)<<16);
  _msg->Write(FEI4_CMD(chan),word);
  if ( _log ) {
    cout << "gp " << chan << " " << width << endl;
  }
}

void Fei4Interface::WriteFrontEnd(int chan,const unsigned int *data=NULL) {
  int chipid = chan%2+1;
  if ( data != NULL ) {
    for ( int i=0; i<21; i++ ) {
      _msg->Write(FEI4_FRONT_END+4*i,data[i]);
    }
  }
  _msg->WaitClear(FEI4_CMD(chan),0x80000000);
  _msg->Write(FEI4_CMD(chan),0xd2000000);
//  _msg->Write(FEI4_CMD(chan),0xd0000000|(chipid<<22));
  _msg->WaitClear(FEI4_CMD(chan),0x80000000);
  if ( _log ) {
    cout << "wfe " << chan;
    if ( data != NULL ) {
      cout << " 0x" << setw(8) << setfill('0') << hex << data[0] << dec << "...";
    }
    cout << endl;
  }
}

Fei4Interface::Fei4Interface(char *addr) : _log(0) {
  if ( ( _s = socket(PF_INET,SOCK_DGRAM,0) ) < 0 ) {
    cerr << "Fei4Interface: socket() - " << strerror(errno) << endl;
    exit(1);
  }
  bzero((char *)&_saddr,sizeof(_saddr));
  _saddr.sin_family = AF_INET;
  _saddr.sin_port = htons(47000);
  if ( bind(_s,(struct sockaddr *)&_saddr,sizeof(_saddr)) < 0 ) {
    cerr << "Fei4Interface:  bind() - " << strerror(errno) << endl;
    exit(1);
  }
  socklen_t namelen = sizeof(_saddr);
  if ( getsockname(_s,(struct sockaddr *)&_saddr,&namelen) < 0 ) {
    cerr << "Fei4Interface: getsockname() - " << strerror(errno) <<endl;
    exit(1);
  }
  cout << "Source port = " << ntohs(_saddr.sin_port) << endl;

  if ( ( _hp = gethostbyname(addr) ) == NULL ) {
    cerr << "Fei4Interface: gethostbyname(" << addr << ") - " << strerror(errno) << endl;
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
      cerr << "Fei4Interface: setsockopt() - " << strerror(errno) << endl;
      exit(1);
    }
    cout << "Enabled broadcast." << endl;
  }

  struct timeval timeout;
  timeout.tv_sec = 2;
  timeout.tv_usec = 0;
  if ( setsockopt(_s,SOL_SOCKET,SO_RCVTIMEO,&timeout,sizeof(timeout)) < 0 ) {
    cerr << "Fei4Interface: setsockopt() - " << strerror(errno) << endl;
    exit(1);
  }

  _msg = new Stib(_s,(struct sockaddr *)&_daddr,sizeof(_daddr));

}

void Fei4Interface::WriteModifiedRegisters(int chan,GlobalRegisters &gr) {
  for ( int i=0; i<32; i++ ) {
    if ( gr.Stale(i) ) {
      WriteGlobalRegister(chan,i,gr.Raw(i));
      gr.Unmark(i);
    }
  }
}

int Fei4Interface::Configure(int chan) {
  int ierr;

  _msg->Clear();
  _msg->Write(FEI4_CMD(chan),0x40000000);
  WriteGlobalRegister(chan,20,0xffff);   // global threshold
  WriteGlobalRegister(chan,6,0);         // preamp bias
  for ( int i=0; i<32; i++ ) {
    WriteGlobalRegister(chan,i,_gr[chan].Get(i));
  }
  _msg->Send();

  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "Configure() receive() - timeout." << endl;
  }
  return ierr;
}

void Fei4Interface::ClearPixelSR(int chan,int cp) {
  WriteGlobalRegister(chan,"CP0",(cp>>9)&1);
  WriteGlobalRegister(chan,"CP1",(cp>>8)&1);
  WriteGlobalRegister(chan,"Colpr_Addr",cp&0xff);
  WriteGlobalRegister(chan,"S0",0);
  WriteGlobalRegister(chan,"S1",0);
  WriteGlobalRegister(chan,"HLD",0);
  WriteGlobalRegister(chan,"PixelLatch",0);
  WriteGlobalRegister(chan,"SRC",1);
  WriteModifiedRegisters(chan);
  GlobalPulse(chan);
  WriteGlobalRegister(chan,"SRC",0);
  WriteModifiedRegisters(chan);
}

void Fei4Interface::SetPixelSR(int chan,int cp) {

  WriteGlobalRegister(chan,"CP0",(cp>>9)&1);
  WriteGlobalRegister(chan,"CP1",(cp>>8)&1);
  WriteGlobalRegister(chan,"Colpr_Addr",cp&0xff);

  WriteGlobalRegister(chan,"S0",1);
  WriteGlobalRegister(chan,"S1",0);
  WriteGlobalRegister(chan,"HLD",0);
  WriteGlobalRegister(chan,"SRK",1);

  WriteModifiedRegisters(chan);
  GlobalPulse(chan);
  WriteGlobalRegister(chan,"SRK",0);
  WriteModifiedRegisters(chan);
}

void Fei4Interface::WritePixelSR(int chan,int cp,const unsigned int *data) {

  WriteGlobalRegister(chan,"CP0",(cp>>9)&1);
  WriteGlobalRegister(chan,"CP1",(cp>>8)&1);
  WriteGlobalRegister(chan,"Colpr_Addr",cp&0xff);
  WriteGlobalRegister(chan,"S0",0);
  WriteGlobalRegister(chan,"S1",0);
  WriteGlobalRegister(chan,"PixelLatch",0);
  WriteGlobalRegister(chan,"HLD",0);
  WriteGlobalRegister(chan,"SRR",0);
  WriteModifiedRegisters(chan);
//  _msg->Nop(65536);
  WriteFrontEnd(chan,data);

}

void Fei4Interface::ClearBuffer() {
  _msg->Clear();
}

int Fei4Interface::WriteBuffer() {
  int ierr;
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "WriteBuffer() receive() - timeout." << endl;
  }
  return ierr;
}

void Fei4Interface::LoadPixelLatches(int chan,int cp,int bits) {
  WriteGlobalRegister(chan,"CP0",(cp>>9)&1);
  WriteGlobalRegister(chan,"CP1",(cp>>8)&1);
  WriteGlobalRegister(chan,"Colpr_Addr",cp&0xff);
  WriteGlobalRegister(chan,"S0",0);
  WriteGlobalRegister(chan,"S1",0);
  WriteGlobalRegister(chan,"PixelLatch",bits);
  WriteGlobalRegister(chan,"HLD",0);
  WriteGlobalRegister(chan,"LEN",1);
  WriteModifiedRegisters(chan);
  GlobalPulse(chan);
  WriteGlobalRegister(chan,"LEN",0);
  WriteGlobalRegister(chan,"PixelLatch",0);
  WriteModifiedRegisters(chan);
}

void Fei4Interface::ReadPixelLatches(int chan,int cp,int bits) {
  WriteGlobalRegister(chan,"CP0",(cp>>9)&1);
  WriteGlobalRegister(chan,"CP1",(cp>>8)&1);
  WriteGlobalRegister(chan,"Colpr_Addr",cp&0xff);
  WriteGlobalRegister(chan,"S0",1);
  WriteGlobalRegister(chan,"S1",1);
  WriteGlobalRegister(chan,"PixelLatch",bits);
  WriteGlobalRegister(chan,"HLD",0);
  WriteGlobalRegister(chan,"SRR",1);
  WriteModifiedRegisters(chan);
  GlobalPulse(chan);
  WriteGlobalRegister(chan,"S0",1);
  WriteGlobalRegister(chan,"S1",1);
  WriteGlobalRegister(chan,"PixelLatch",0);
  WriteModifiedRegisters(chan);
}

int Fei4Interface::SetupDigitalInject(int chan) {
  int ierr;

  _msg->Clear();
  WriteGlobalRegister(1,2,0x4800);   //  4 triggers, CAE=1
  WriteGlobalRegister(1,21,0x0400);  //  DIGHITIN_SEL=1
  WriteGlobalRegister(1,23,0x0000);  //  Enable DC0-15
  WriteGlobalRegister(1,24,0x0000);  //  Enable DC16-31
  WriteGlobalRegister(1,25,0xdf00);  //  Latency=32, Enable DC32-39
  WriteGlobalRegister(1,26,0x0022);  //  HD1=1, HD0=0, pulse width=4
  WriteGlobalRegister(1,27,0x8000);  //  PLL=1,CAL=0
  WriteGlobalRegister(1,31,0xf080);  //  PlsrDelay=16
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "SetupDigitalInject() receive() - timeout." << endl;
  }
  return ierr;
}

void Fei4Interface::ReadPixelSR(int chan,int cp) {
  WriteGlobalRegister(chan,"CP0",(cp>>9)&1);
  WriteGlobalRegister(chan,"CP1",(cp>>8)&1);
  WriteGlobalRegister(chan,"Colpr_Addr",cp&0xff);
  WriteGlobalRegister(chan,"S0",0);
  WriteGlobalRegister(chan,"S1",0);
  WriteGlobalRegister(chan,"HLD",0);
  WriteGlobalRegister(chan,"SRR",1);
  for ( int i=0; i<21; i++ ) {
    _msg->Write(FEI4_FRONT_END+4*i,0);
  }
  WriteModifiedRegisters(chan);

  WriteFrontEnd(chan);

  WriteGlobalRegister(chan,"SRR",0);
  WriteModifiedRegisters(chan);
}

void Fei4Interface::SetMatchPattern(int chan,int j,int ic,int ir,int tot=-1,int bc=-1) {
  if ( j < 1 || j > 15 ) {
    cout << "SetMatchPattern() - invalid pattern index " << j << endl;
    return;
  }
  int match = 0;
  if ( ic < 0 ) {
    match |= 1;
  }
  else {
    match |= (ic+1)<<25;
  }
  if ( ir < 0 ) {
    match |= 2;
  }
  else {
    match |= (ir+1)<<16;
  }
  if ( tot < 0 ) {
    match |= 4;
  }
  else {
    match |= (tot&0x0f)<<4;
  }
  if ( bc < 0 ) {
    match |= 8;
  }
  else {
    match |= (bc&0xff)<<8;
  }
  _msg->Write(FEI4_MATCH(chan,j),match);
}

void Fei4Interface::ClearMatchCounters(int chan) {
  _msg->Write(FEI4_CSR(chan),0x40000000);
}

int Fei4Interface::Pulse(int chan,int dly,int n) {
  int ierr;
  int chipid = chan%2+1;
  _msg->Clear();
  _msg->WaitClear(FEI4_CMD(chan),0x80000000);
  _msg->Write(FEI4_CMD(chan),0xa8380000|(chipid<<22));      //  Run
//  xx 1010 0000 111000
  _msg->WaitClear(FEI4_CMD(chan),0x80000000);
  _msg->Write(FEI4_CMD(chan),0xb0020000|dly);  //  ECR 
  _msg->WaitClear(FEI4_CMD(chan),0x80000000);
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "Pulse() receive() - timeout." << endl;
  }
   
  _msg->Clear();
  _msg->Write(FEI4_CMD(chan),0xb0010000|dly);  //  BCR 
  _msg->WaitClear(FEI4_CMD(chan),0x80000000);
  unsigned int word = 0x80000001 | (dly<<16) | (n<<8);
  _msg->Write(0xc8000004,word);
  _msg->WaitClear(0xc8000004,0x80000000);
  _msg->WaitClear(FEI4_CMD(chan),0x80000000,4*n);
  _msg->Write(FEI4_CMD(chan),0xa8070000|(chipid<<22));
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "Pulse() receive() - timeout." << endl;
  }
  return ierr;
}

int Fei4Interface::ReadMatchCounters(int chan,unsigned int *cnt) {
  int ierr;
  int index[16];
  _msg->Clear();
  for ( int i=0; i<16; i++ ) {
    index[i] = _msg->Read(FEI4_MATCH(chan,i));
  }
  _msg->Send();
  if ( ( ierr = _msg->Receive() ) < 0 ) {
    cerr << "ReadMatchCounters() - receive() - timeout." <<endl;
  }
  else {
    for ( int i=0; i<16; i++ ) {
      cnt[i] = _msg->RxData(index[i],1);
    }
  }
  return ierr;
}
