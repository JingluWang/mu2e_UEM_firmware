
#include <iostream>
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
#include "TCanvas.h"
#include "TText.h"
#include "TGraph.h"
#include "TH1.h"
#include "TLine.h"

#define BUFLEN 1500

static unsigned char recvbuf[BUFLEN];

using namespace std;

int main(int argc,char **argv) {
  int ierr, i, n, s, ped, strip, dlen, ipkt = 0, ichan, jpkt, kpkt;
  socklen_t namelen;
  unsigned short port;
  struct sockaddr_in saddr, daddr;
  struct hostent *hp;
  unsigned char *p;
  unsigned int word;
  unsigned int *buf;
  short v;
  time_t t0, t1;
  double vv[4][65536], vfd[65536];
  double tt[4][65536], tfd[65536];
  double dtp, dtm, v0, v1;
  int nfd;

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
  port = atoi(argv[1]);
  saddr.sin_port = htons(port);

  if ( bind(s,(struct sockaddr *)&saddr,sizeof(saddr)) < 0 ) {
    fprintf( stderr, "%s : bind() - %s\n", argv[0], strerror(errno) );
    exit(1);
  }
  printf("Listening on port %d.\n", port );

  double vmax = 256;
  double vmin = -1024;
  TApplication app("fmc228",&argc,argv);
  gROOT->SetStyle("Plain");
  TCanvas *c1 = new TCanvas("c1",NULL,0,0,700,500);
  c1->cd();
  c1->Draw();
  TH1F *h_frame = gPad->DrawFrame(0,vmin,2048,vmax);
  h_frame->GetXaxis()->SetTitleFont(42);
  h_frame->GetYaxis()->SetTitleFont(42);
  h_frame->GetXaxis()->SetLabelFont(42);
  h_frame->GetYaxis()->SetLabelFont(42);
  h_frame->GetXaxis()->SetTitle("Time (ns)");

  TLine *l = new TLine();
  l->SetLineColor(11);
  for ( int i=0; i<2048; i+=512 ) {
    l->DrawLine(i,vmin,i,vmax);
  }
  l->SetLineColor(12);
  for ( int i=0; i<2048; i+=25 ) {
    l->DrawLine(i,vmin,i,vmin+(vmax-vmin)*0.02);
    l->DrawLine(i,vmax-(vmax-vmin)*0.02,i,vmax);
  }

  c1->Update();
  TGraph *g[4];
  for ( int j=0; j<4; j++ ) {
    g[j] = new TGraph();
  }
  g[1]->SetLineColor(2);
  g[2]->SetLineColor(4);
  g[3]->SetLineColor(6);
  c1->cd();
  TText *text = new TText();
  text->SetTextFont(42);
  text->SetNDC();

  int nhit = 0;
  int lasthit = -1;
  time(&t0);
  n = -1;
  int update = 0;
  jpkt = 0;
  while(1) 
  {
    dlen = sizeof(daddr);
    int len;
    if ( ( len = recvfrom(s,recvbuf,BUFLEN,0,(struct sockaddr *)&daddr,(socklen_t *)&dlen) ) < 0 ) {
      fprintf( stderr, "%s : recvfrom() - %s\n", argv[0], strerror(errno) );
      exit(1);
    }
    buf = (unsigned int *)recvbuf;
    n = recvbuf[7]*512;
    kpkt = buf[0] >> 16;
    ichan = buf[3]&0x03;
    if ( n == 0 ) {
      unsigned long long bco = buf[5];
      bco <<= 32;
      bco |= buf[4];
      printf( "BCO = 0x%012lx\n", bco );
      char line[16];
      sprintf( line, "0x%012lx", bco );
      delete text;
      text = new TText(0.15,0.80,line);
      text->SetTextFont(42);
      text->SetNDC();

      nfd = 0;
      vmin = 2048;
    }
    ped = 0;
    if ( n >= 0 && n < 32767 && ( kpkt == jpkt+1 || n == 0 ) ) {
      jpkt = kpkt;
      for ( int i=6; i<len/4; i++ ) {
        word = ((unsigned int *)recvbuf)[i];
        v = ((short)(word&0xfff0))/16 - ped - 100*ichan;
        vv[ichan][n] = v;
        tt[ichan][n] = n;
        n += 1;
        v = ((short)((word>>16)&0xfff0))/16 - ped - 100*ichan;
        vv[ichan][n] = v;
        tt[ichan][n] = n;
        n += 1;
      }
    }

    const int colors[4] = { 1, 2, 4, 6 };

    if ( recvbuf[7] == 0x07 ) {
      printf( "End of record, ichan = %d\n", ichan );
      if ( ichan == 3 ) {
        for ( int jchan=0; jchan<4; jchan++ ) {
          delete g[jchan];
          g[jchan] = new TGraph();
          g[jchan]->SetLineColor(colors[jchan]);
          for ( int i=0; i<n; i++ ) {
            g[jchan]->SetPoint(i,tt[jchan][i],vv[jchan][i]);
          }
          g[jchan]->Draw("L");
        }
        c1->cd();
        text->Draw();
        c1->Update();
        for ( int jchan=0; jchan<4; jchan++ ) {
          for ( int i=0; i<n; i++ ) vv[jchan][i] = 0;
          n = -1;
        }
      }
    }
  }
  app.Run();

  return 0;
}
