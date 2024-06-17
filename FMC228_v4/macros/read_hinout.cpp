//
// read in-time out-time histogram
//


#include <TTree.h>
#include <TGraph.h>
#include <TFile.h>
#include <TSystem.h>
#include <TCanvas.h>
#include <TProfile2D.h>
#include <TStyle.h>



void read_hinout(char* rootfile)
{

  using std::count;
  using std::endl;
  gStyle ->SetCanvasDefH(900);
  gStyle ->SetCanvasDefW(1500);

  //gSystem->Load("../libData.so");

  TFile *fhinout = new TFile(rootfile);
  fhinout->ls();

  TH2F *h2_outtime = (TH2F*)fhinout->Get("outtime_sum_tail_peak_high");
  TH1F *h1_outtime = (TH1F*)fhinout->Get("h1_peaksum_outtime");
  TH1F *h1_intime = (TH1F*)fhinout->Get("h1_peaksum_intime");


  TCanvas *c_outtime_sum_tail_peak_high = new TCanvas("c_outtime_sum_tail_peak_high","out-time (tail / total) vs peak high",200,10,700,500);
  TCanvas *c_outtime_npeaksum = new TCanvas("c_outtime_npeaksum","out-time npeaksum",200,10,700,500);

  c_outtime_sum_tail_peak_high ->cd();
  h2_outtime -> Draw();
  c_outtime_npeaksum ->cd();
  h1_intime -> Draw();
  h1_outtime -> SetLineColor(kRed);
  h1_outtime -> Draw("same");

  //fhinout->Close();
  
}
