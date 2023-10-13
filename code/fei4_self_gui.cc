#include <iostream>
#include <iomanip>
#include <map>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <netdb.h>
#include <time.h>
#include <sys/time.h>
#include <arpa/inet.h>
#include <sys/types.h>
#include <sys/socket.h>

#include "TApplication.h"
#include "TROOT.h"
#include "TFile.h"
#include "TH2.h"
#include "TStyle.h"
#include "TColor.h"
#include "TCanvas.h"
#include "TText.h"

#include "fei4.hh"

#define BUFLEN 1024

static unsigned char recvbuf[BUFLEN];

using namespace std;
using namespace fei4;

void SetupColormap() {
  gROOT->SetStyle("Plain");

  const Int_t n= 10;
  Int_t palette[4*n];
  for(Int_t type=0; type<4; type++){
    for(Int_t i=0; i<n; i++){
      Int_t icol=i+type*n;
      Float_t r,g,b;
      Float_t f=(i+1.0)/n;
      if(type==0){r=1.0;   g=1.0;   b=1.0-f;};
      if(type==1){r=1.0-f; g=1.0;   b=0.0  ;};
      if(type==2){r=0.0  ; g=1.0-f; b=0.0+f;};
      if(type==3){r=0.0  ; g=0.0  ; b=1.0-f;};
      TColor *color = new TColor(251+icol,r,g,b,"");
      palette[icol] = 251+icol;
    }
  }
  gStyle->SetPalette(4*n,palette);
}

int main(int argc,char **argv) {
  int ierr, i, s, strip, slen, len;
  socklen_t namelen;
  int broadcast_enable;
  unsigned short port;
  struct sockaddr_in saddr;
  struct hostent *hp;
  unsigned char *p;
  unsigned int word;
  unsigned int mask[4];
  time_t t0, t1, t2;

  unsigned int bits[21];

  if ( argc < 3 ) {
    cerr << "Usage: " << argv[0] << " <addr> <chan> <calib_ch0> <calib_ch1>" << endl;
    exit(1);
  }

  Fei4Calibrations *cal[12] = { NULL, NULL, NULL, NULL,
                                NULL, NULL, NULL, NULL,
                                NULL, NULL, NULL, NULL };
  int chan = atoi(argv[2]);

  cout << "Scanning PIB channel " << chan << "/pixel channels "
       << 2*chan << "+" << 2*chan+1 << "." << endl;
  cal[2*chan] = new Fei4Calibrations(argv[3]);
  if ( argc > 3 ) cal[2*chan+1] = new Fei4Calibrations(argv[4]);

  Fei4Interface *fei4 = new Fei4Interface(argv[1]);
  fei4->LogBuffer(0);

  int vthrc = 3;
  int vthrf = 128;

  cout << "Discriminator threshold = " << vthrc << "+" << vthrf << endl;

  for ( int ich=2*chan; ich<2*chan+2; ich++ ) {
    fei4->ClearBuffer();
    fei4->WriteGlobalRegister(ich,"CMDcnt12",0x1005);
    fei4->WriteGlobalRegister(ich,"M13",0);
    fei4->WriteGlobalRegister(ich,"HD1",1);
    fei4->WriteGlobalRegister(ich,"HD0",0);
    fei4->WriteGlobalRegister(ich,"Trig_Lat",0xf0);  // latency = 16
    fei4->WriteGlobalRegister(ich,"PlsrIDACRamp",180);
    fei4->WriteGlobalRegister(ich,"Trig_Count",1);
    fei4->WriteGlobalRegister(ich,"DHS",0);
    fei4->WriteGlobalRegister(ich,"HOR",1);
    fei4->WriteGlobalRegister(ich,"PlsrDelay",30);
    fei4->WriteGlobalRegister(ich,"TDACVbp",255);
    fei4->WriteGlobalRegister(ich,"Vthin_Coarse",vthrc);
    fei4->WriteGlobalRegister(ich,"Vthin_Fine",vthrf);
    fei4->WriteModifiedRegisters(ich);
    fei4->WriteBuffer();

    fei4->ClearBuffer();
    fei4->ClearPixelSR(ich,COLPR_ALL);
    fei4->LoadPixelLatches(ich,COLPR_ALL,0x1fff);
    fei4->SetPixelSR(ich,COLPR_ALL);
    fei4->LoadPixelLatches(ich,COLPR_ALL,0x0001);
    fei4->WriteBuffer();

    int ic;
    for ( int idc=0; idc<40; idc++ ) {
      for ( int ibit=0; ibit<5; ibit++ ) {
        fei4::ClearFrontEndBits(bits);
        ic=idc*2;
        for ( int ir=0; ir<336; ir++ ) {
          int tdac = cal[ich]->Tdac(ir,ic);
          if ( (tdac&(1<<ibit)) ) {
            fei4::SetFrontEndBit(ic,ir,bits);
          }
        }
        ic = idc*2+1;
        for ( int ir=0; ir<336; ir++ ) {
          int tdac = cal[ich]->Tdac(ir,ic);
          if ( (tdac&(1<<ibit)) ) {
            fei4::SetFrontEndBit(ic,ir,bits);
          }
        }
        fei4->ClearBuffer();
        fei4->WritePixelSR(ich,COLPR_DC|idc,bits);
        fei4->LoadPixelLatches(ich,COLPR_DC|idc,1<<(5-ibit));
        fei4->WriteBuffer();
      }
      for ( int ibit=0; ibit<4; ibit++ ) {
        fei4::ClearFrontEndBits(bits);
        ic=idc*2;
        for ( int ir=0; ir<336; ir++ ) {
          int fdac = cal[ich]->Fdac(ir,ic);
          if ( (fdac&(1<<ibit)) ) {
            fei4::SetFrontEndBit(ic,ir,bits);
          }
        }
        ic = idc*2+1;
        for ( int ir=0; ir<336; ir++ ) {
          int fdac = cal[ich]->Fdac(ir,ic);
          if ( (fdac&(1<<ibit)) ) {
            fei4::SetFrontEndBit(ic,ir,bits);
          }
        }
        fei4->ClearBuffer();
        fei4->WritePixelSR(ich,COLPR_DC|idc,bits);
        fei4->LoadPixelLatches(ich,COLPR_DC|idc,1<<(9+ibit));
        fei4->WriteBuffer();
      }
      fei4::SetFrontEndBits(bits);
      ic=idc*2;
      for ( int ir=0; ir<336; ir++ ) {
        int kill = cal[ich]->Kill(ir,ic);
        if ( kill ) {
          cout << "KILL(" << ir << "," << ic << ") = " << kill << endl;
          fei4::ClearFrontEndBit(ic,ir,bits);
        }
      }
      ic = idc*2+1;
      for ( int ir=0; ir<336; ir++ ) {
        int kill = cal[ich]->Kill(ir,ic);
        if ( kill ) {
          cout << "KILL(" << ir << "," << ic << ") = " << kill << endl;
          fei4::ClearFrontEndBit(ic,ir,bits);
        }
      }
      fei4->ClearBuffer();
      fei4->WritePixelSR(ich,COLPR_DC|idc,bits);
      fei4->LoadPixelLatches(ich,COLPR_DC|idc,0x0001);
      fei4->WriteBuffer();
    }
  }

//  Enable streaming of hit output...

  fei4->ClearBuffer();
  fei4->Buffer()->Write(FEI4_CMD(2*chan),0xaa380000);   // Run
  fei4->WriteBuffer();
 
//  Now set up the receiver...

  if ( ( s = socket(PF_INET,SOCK_DGRAM,0) ) < 0 ) {
    fprintf( stderr, "%s : socket() - %s\n", argv[0], strerror(errno) );
    exit(1);
  }

  bzero((char *)&saddr,sizeof(saddr));
  saddr.sin_family = AF_INET;
  port = 48879;
  saddr.sin_port = htons(port);

  if ( bind(s,(struct sockaddr *)&saddr,sizeof(saddr)) < 0 ) {
    fprintf( stderr, "%s : bind() - %s\n", argv[0], strerror(errno) );
    exit(1);
  }
  printf("Listening on port %d.\n", port );

  TApplication app("fei4",&argc,argv);
  gROOT->SetStyle("Plain");
  SetupColormap();

  TCanvas *c1 = new TCanvas("c1",NULL,0,0,800,500);
  c1->cd();
  TH2F *h_fei4 = new TH2F("fei4",NULL,160,0,160,336,0,336);
  h_fei4->Draw("colz");
  c1->Update();

  time(&t0);
  do {
    if ( ( len = recvfrom(s,recvbuf,BUFLEN,0,(struct sockaddr *)&saddr,(socklen_t *)&slen) ) < 0 ) {
      fprintf( stderr, "%s : recvfrom() - %s\n", argv[0], strerror(errno) );
      exit(1);
    }
    time(&t1);
    cout << "Received " << len << " bytes..." << endl;
    for ( int i=0; i<len/4; i++ ) {
      word = ((unsigned int *)recvbuf)[i];
      if ( (word&0xffffff) != 0 && (word&0xf0000000) == 0 ) {
        int ich = (word>>24)&0x0f;
        int jch = ich%2;
        int ir = (word>>8)&0x1ff;
        int ic = (word>>17)&0x7f;
        int tot0 = (word>>4)&0x0f;
        int tot1 = word&0x0f;
        cout << "Channel " << ich << " r" << ir << "c" << ic << " tot = " << tot0 << "," << tot1 << endl;
        h_fei4->Fill(80*jch+ic-1,ir-1,1);
        if ( tot1 != 15 ) {
          h_fei4->Fill(80*jch+ic-1,ir,1);
        }
      }
      else if ( (word&0xf0000000) == 0x40000000 ) {
        int chan = (word>>24)&0x0f;
        int bcid = word&0xfff;
        int lv1id = (word>>12)&0xfff;
        cout << "Channel " << chan << "  Lv1id = " << hex << lv1id << ", bcid = " << bcid << dec << endl;
      }
      if ( t1-t0 > 5 ) {
        cout << "t1-t0 = " << t1-t0 << ", drawing..." << endl;
        c1->cd();
        h_fei4->Draw("colz");
        c1->Update();
        t0 = t1;
      }
    }
  }
  while ( 1 );

  return 0;
}
