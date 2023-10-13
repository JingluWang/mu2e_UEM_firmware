#include <iostream>
#include <stdlib.h>
#include <assert.h>
#include <math.h>

#include "TROOT.h"
#include "TFile.h"
#include "TH1.h"
#include "TH2.h"
#include "TMath.h"
#include "TGraphErrors.h"
#include "TF1.h"

#include "fei4.hh"

using namespace std;
using namespace fei4;

int main(int argc,char **argv) {
  unsigned int bits[21];
  unsigned int counters[16];
  if ( argc < 5 ) {
    cerr << "Usage: " << argv[0] << " <addr> <chan> <dc> <file>" << endl;
    exit(1);
  }
  TFile *fout = NULL;
  TH2F *h_tdac = NULL;
  TH2F *h_tdac_chi2 = NULL;
  TH1F *h_tmin = NULL;
  TH1F *h_tmax = NULL;
  if ( argc > 4 ) {
    fout = new TFile(argv[4],"UPDATE");
    h_tdac = (TH2F *)fout->Get("tdac_trim");
    h_tdac_chi2 = (TH2F *)fout->Get("tdac_chi2");
    if ( h_tdac == NULL ) {
      h_tdac = new TH2F("tdac_trim","TDAC trim values",80,0,80,336,0,336);
    }
    if ( h_tdac_chi2 == NULL ) {
      h_tdac_chi2 = new TH2F("tdac_chi2","TDAC fit chi2",80,0,80,336,0,336);
    }
    h_tmin = (TH1F *)fout->Get("tdac_tmin");
    if ( h_tmin == NULL ) {
      h_tmin = new TH1F("tdac_tmin","Minumum Vdac",1536,-512,1024);
      h_tmin->SetLineColor(4);
    }
    h_tmax = (TH1F *)fout->Get("tdac_tmax");
    if ( h_tmax == NULL ) {
      h_tmax = new TH1F("tdac_tmax","Maximum Vdac",1536,-512,1024);
      h_tmax->SetLineColor(2);
    }
  }
  TF1 *func = new TF1("func","pol1",0,32);

  int chan = atoi(argv[2]);
  Fei4Interface *fei4 = new Fei4Interface(argv[1]);
  fei4->LogBuffer(0);
  int idc = atoi(argv[3]);

  int vthrc = 6;
  int vthrf = 128;
  int clk320mhz = 0;

  fei4->ClearBuffer();
  fei4->WriteGlobalRegister(chan,"CMDcnt12",0x1004);
  fei4->WriteGlobalRegister(chan,"M13",0);
  fei4->WriteGlobalRegister(chan,"HD1",0);
  fei4->WriteGlobalRegister(chan,"HD0",0);
  fei4->WriteGlobalRegister(chan,"Trig_Lat",0xb3);
  fei4->WriteGlobalRegister(chan,"PlsrIDACRamp",180);
  fei4->WriteGlobalRegister(chan,"Trig_Count",8);
  fei4->WriteGlobalRegister(chan,"DHS",0);
  fei4->WriteGlobalRegister(chan,"PlsrDelay",30);
  fei4->WriteGlobalRegister(chan,"TDACVbp",255);
  fei4->WriteGlobalRegister(chan,"Vthin_Coarse",vthrc);
  fei4->WriteGlobalRegister(chan,"Vthin_Fine",vthrf);
  if ( clk320mhz ) {
    fei4->WriteGlobalRegister(chan,"320",1);
    fei4->WriteGlobalRegister(chan,"c00",1);
    fei4->WriteGlobalRegister(chan,"c01",1);
    fei4->WriteGlobalRegister(chan,"c02",0);
    fei4->WriteGlobalRegister(chan,"c10",0);
    fei4->WriteGlobalRegister(chan,"c11",0);
    fei4->WriteGlobalRegister(chan,"c12",0);
    fei4->WriteGlobalRegister(chan,"160",0);
    fei4->WriteGlobalRegister(chan,"40M",1);
  }
  else {
    fei4->WriteGlobalRegister(chan,"320",0);
    fei4->WriteGlobalRegister(chan,"c00",0);
    fei4->WriteGlobalRegister(chan,"c01",0);
    fei4->WriteGlobalRegister(chan,"c02",1);
    fei4->WriteGlobalRegister(chan,"c10",0);
    fei4->WriteGlobalRegister(chan,"c11",0);
    fei4->WriteGlobalRegister(chan,"c12",0);
    fei4->WriteGlobalRegister(chan,"160",1);
    fei4->WriteGlobalRegister(chan,"40M",0);
  }
  fei4->WriteModifiedRegisters(chan);
  fei4->WriteBuffer();

  fei4->ClearBuffer();
  if ( clk320mhz ) {
    fei4->Buffer()->Write(0xc8000000,0x10008000);
  }
  else {
    fei4->Buffer()->Write(0xc8000000,0x10000000);
  }
  fei4->WriteBuffer();

  int tdac[10] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
//
//   Loop over columns
//
  for ( int ic=2*idc; ic<2*(idc+1); ic++ ) {
//    int idc = ic/2;
//
//  Loop over 24 groups of 14 rows
//
    for ( int jr=0; jr<24; jr++ ) {
      fei4::ClearFrontEndBits(bits);
      TGraph *g_trim[14];
      for ( int j=0; j<14; j++ ) {
        g_trim[j] = new TGraph();
        int ir = jr+j*24;
        fei4::SetFrontEndBit(ic,ir,bits);
      }

      cout << "Matching col " << ic << " rows ";
      for ( int j=0; j<14; j++ ) {
        int ir = jr+j*24;
        cout << " " << ir;
      }
      cout << endl;

//
//  Loop over table of TDAC values
//
      for ( int kdac=0; kdac<10; kdac++ ) {
        fei4->ClearBuffer();
        fei4->ClearPixelSR(chan,COLPR_ALL);
        fei4->LoadPixelLatches(chan,COLPR_ALL,0x1fff);
        fei4->WriteBuffer();

        fei4->ClearBuffer();
        fei4->WritePixelSR(chan,COLPR_DC|idc,bits);
        int revbits = 0;
        for ( int ib=0; ib<5; ib++ ) {
          if ( (tdac[kdac]&(1<<(4-ib))) ) {
            revbits |= (2<<ib);
          }
        }
        fei4->LoadPixelLatches(chan,COLPR_DC|idc,0x00c1|revbits);
        fei4->ClearPixelSR(chan,COLPR_DC|idc);
        int jdc;
        if ( ic == 0 ) {
          jdc = 0;
        }
        else if ( ic < 77 ) {
          jdc = (ic+1)/2;
        }
        else {
          jdc = 39;
        }
//        cout << "ic = " << ic << ", jdc = " << jdc << ", jr = " << jr << endl;
        fei4->WriteModifiedRegisters(chan);
        fei4->WriteGlobalRegister(chan,"Colpr_Addr",jdc);
        fei4->WriteModifiedRegisters(chan);
        fei4->WriteBuffer();

//        cout << "  TDAC = " << tdac[kdac] << endl;

        int vdac[14][3];
        for ( int j=0; j<14; j++ ) {
          vdac[j][0] = 0;
          vdac[j][2] = 1023;
        }
//
//  Loop over 14 match registers
//
        fei4->ClearBuffer();
        for ( int j=0; j<14; j++ ) {
          int ir = jr+j*24;
          fei4->SetMatchPattern(chan,j+1,ic,ir,-1,-1);
        }
        fei4->WriteBuffer();

        for ( int j=0; j<14; j++ ) {
          int ir = j*24+jr;

//          cout << "  row " << ir << " col " << ic << " bounded by (" << vdac[j][0] << " .. " << vdac[j][2] << ")" << endl;

          vdac[j][1] = (vdac[j][0]+vdac[j][2])/2;
          while ( vdac[j][2]-vdac[j][0] > 1 ) {
            vdac[j][1] = (vdac[j][0]+vdac[j][2])/2;
            fei4->ClearBuffer();
            fei4->WriteGlobalRegister(chan,"PlsrDAC",vdac[j][1]);
            fei4->WriteModifiedRegisters(chan);
            fei4->ClearMatchCounters(chan);
            fei4->WriteBuffer();
   
            fei4->LogBuffer(0);
//            cout << "Pulsing channel " << chan << "..." << endl; 
            fei4->Pulse(chan,0x66,8);
            fei4->Pulse(chan,0x66,8);
            fei4->Pulse(chan,0x66,8);
            fei4->Pulse(chan,0x66,8);
      
            fei4->ReadMatchCounters(chan,counters);
//            cout << "  counters = ";
//            for ( int k=0; k<15; k++ ) {
//              cout << " " << (counters[k]&0xffff);
//            }
//            cout << endl;
            if ( counters[0] == 0 ) {
              cout << "Error - no triggers detected." << endl;
              exit(1);
            }
            for ( int k=0; k<14; k++ ) {
              double eff = (double)(counters[k+1]&0xffff)/counters[0];
              if ( eff > 0.5 && vdac[k][2] > vdac[j][1] ) {
                vdac[k][2] = vdac[j][1];
              }
              if ( eff < 0.5 && vdac[k][0] < vdac[j][1] ) {
                vdac[k][0] = vdac[j][1];
              }
            }
          }
//          cout << "   vdac = " << vdac[j][1] << endl;
          g_trim[j]->SetPoint(kdac,tdac[kdac],vdac[j][1]);
        }
      }
      for ( int j=0; j<14; j++ ) {
        g_trim[j]->Fit("func","Q");
        double a = func->GetParameter(0);
        double b = func->GetParameter(1);
        h_tmax->Fill(a,1);
        h_tmin->Fill(a+31*b,1);
        char label[32];
        int ir = jr+j*24;
        sprintf(label,"tdac_r%d_c%d",ir,ic);
        g_trim[j]->Write(label);
      }
    }
  }

  if ( fout != NULL ) {
    char filename[32];
    sprintf( filename, "cal_%d_ch%d.dat", vthrf, chan );
    ofstream of(filename);
    int tvdac = 32;
    time_t t0;
    time(&t0);
    of << "Date=" << ctime(&t0);
    of << "Vthr=" << vthrf << endl;
    of << "TrimmedVdac=" << tvdac << endl;
    for ( int ic=0; ic<80; ic++ ) {
      for ( int ir=0; ir<14*24; ir++ ) {
        char label[16];
        sprintf( label, "tdac_r%d_c%d", ir, ic );
        TGraph *g = (TGraph *)fout->Get(label);
        if ( g != NULL ) {
          TF1 *func = (TF1 *)g->GetListOfFunctions()->First();
          double a = func->GetParameter(0);
          double b = func->GetParameter(1);
          int trim = round((tvdac-a)/b);
          if ( trim > 31 ) trim = 31;
          if ( trim < 0 ) trim = 0;
          of << "  r" << ir << "c" << ic << " Tdac=" << trim << endl;
        }
      }
    }
    of.close();
  }

  if ( fout != NULL ) {
    fout->Write();
    gROOT->GetListOfFiles()->Remove(fout);
    fout->Close();
  }
}
