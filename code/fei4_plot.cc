#include <iostream>
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

using namespace std;
using namespace fei4;

#define BUFLEN 1024

static unsigned char recvbuf[BUFLEN];


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
  int s, ierr, port, dlen;
  time_t t0, t1;
  struct sockaddr_in saddr, daddr;
  struct hostent *hp;
  unsigned int word;

  if ( argc < 2 ) {
    cerr << "Usage: " << argv[0] << " <port>" << endl;
    exit(1);
  }

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
  TPad *p1 = new TPad("p1","pixel hits",0.0,0.2,1.00,0.80);
  p1->SetTopMargin(0);
  p1->SetLogz();
  p1->Draw();
  TPad *p2 = new TPad("p2","pixel columns",0.0,0.8,1.0,1.0);
  p2->SetBottomMargin(0);
  p2->Draw();
  TPad *p3 = new TPad("p3","ch0tot",0.05,0.05,0.5,0.2);
  p3->Draw();
  TPad *p4 = new TPad("p4","ch1tot",0.5,0.05,0.95,0.2);
  p4->Draw();

  c1->Update();
  TH2F *h_fei4 = new TH2F("fei4",NULL,160,0,160,336,0,336);
  TH1F *h_fei4col = new TH1F("fei4col",NULL,160,0,160);
  TH1F *h_tot[2];
  h_tot[0] = new TH1F("ch0tot",NULL,15,0,15);
  h_tot[1] = new TH1F("ch1tot",NULL,15,0,15);
  h_tot[0]->SetStats(0);
  h_tot[1]->SetStats(0);
  h_fei4->SetStats(0);
  h_fei4col->SetStats(0);

  time(&t0);
  while(1) {
    time(&t1);
    dlen = sizeof(daddr);
    int len;
    cout << "Reading... " << endl;
    if ( ( len = recvfrom(s,recvbuf,BUFLEN,0,(struct sockaddr *)&daddr,(socklen_t *)&dlen) ) < 0 ) {
      fprintf( stderr, "%s : recvfrom() - %s\n", argv[0], strerror(errno) );
      exit(1);
    }
    cout << "Received from address " << hex << ntohl(daddr.sin_addr.s_addr) << endl;
    for ( int i=0; i<len/4; i++ ) {
//      word = ntohl(((unsigned int *)recvbuf)[i]);
      word = ((unsigned int *)recvbuf)[i];
      cout << "Word = " << hex << word << dec << endl;
      if ( (word&0xffffff) != 0 && (word&0xf0000000) == 0 ) {
        int chan = (word>>24)&0x0f;
        if ( chan == 8 ) chan = 0;
        if ( chan == 10 ) chan = 1;
        int ir = (word>>8)&0x1ff;
        int ic = (word>>17)&0x7f;
        cout << "Channel " << chan << "  (R,C)=(" << ir << "," << ic << ")"<<endl;
        int tot0 = (word>>4)&0x0f;
        int tot1 = word&0x0f;
        double w = 1.0;
        if ( chan == 0 && ic == 1 ||
             chan == 1 && ic == 80 ) w = 0.5;
        h_fei4->Fill(80*(1-chan)+ic-1,ir-1,w);
        h_fei4col->Fill(80*(1-chan)+ic-1,w);
        h_tot[chan]->Fill(tot0,1);
        if ( tot1 != 15 ) {
          h_fei4->Fill(80*(1-chan)+ic-1,ir,1);
          h_fei4col->Fill(80*(1-chan)+ic-1,1);
          h_tot[chan]->Fill(tot1,1);
        }
      }
      else if ( (word&0xf0000000) == 0x40000000 ) {
        int chan = (word>>24)&0x0f;
        int bcid = word&0xfff;
        int lv1id = (word>>12)&0xfff;
        cout << "Channel " << chan << "  Lv1id = " << hex << lv1id << ", bcid = " << bcid << dec << endl;
      }
    }
    if ( t1-t0 > 5 ) {
      p1->cd();
      h_fei4->Draw("colz");
      p2->cd();
      h_fei4col->Draw();
      h_fei4->ProjectionX("px",240,260)->Draw("same");
      p3->cd();
      h_tot[1]->Draw();
      p4->cd();
      h_tot[0]->Draw();
      c1->Update();
      t0 = t1;
    }
  }
  app.Run();
}
