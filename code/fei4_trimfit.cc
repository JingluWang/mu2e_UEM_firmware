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
  if ( argc < 2 ) {
    cerr << "Usage: " << argv[0] << " <file>" << endl;
    exit(1);
  }
  TFile *fin = NULL;
  fin = new TFile(argv[1],"UPDATE");

  TH2F *h_tdac = (TH2F *)fin->Get("tdac_trim");
  int vthr = 5*256+128;

  TH1F *h_tmax = (TH1F *)fin->Get("tdac_tmax");
  TH1F *h_tmin = (TH1F *)fin->Get("tdac_tmin");
  int ax = h_tmin->GetBinCenter(h_tmin->GetMaximumBin());
  int bx = h_tmax->GetBinCenter(h_tmax->GetMaximumBin());
  int tvdac = 0.5*(ax+bx);

  time_t t0;
  cout << "Date=" << ctime(&t0);
  cout << "Vthr=" << vthr << endl;
  cout << "TrimmedVdac=" << tvdac << endl;
  for ( int ic=0; ic<80; ic++ ) {
    for ( int ir=0; ir<24*14; ir++ ) {
      char label[16];
      sprintf( label, "tdac_r%d_c%d", ir, ic );
      TGraph *g = (TGraph *)fin->Get(label);
      if ( g != NULL ) {
        TF1 *func = (TF1 *)g->GetListOfFunctions()->First();
        double a = func->GetParameter(0);
        double b = func->GetParameter(1);
        int trim = round((tvdac-a)/b);
        if ( trim > 31 ) trim = 31;
        if ( trim < 0 ) trim = 0;
        cout << "  r" << ir << "c" << ic << " Tdac=" << trim << endl;
        h_tdac->SetBinContent(ic+1,ir+1,trim);
      }
    }
  }

  fin->Write();
  gROOT->GetListOfFiles()->Remove(fin);
  fin->Close();
}
