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



void read_hprof(char* rootfile)
{

  using std::count;
  using std::endl;
  gStyle ->SetCanvasDefH(900);
  gStyle ->SetCanvasDefW(1500);

  //gSystem->Load("../libData.so");

  TFile *fhinout = new TFile(rootfile);
  fhinout->ls();

  int nbin = 1000;
 
  //hprof2d_count = new TProfile2D("hprof2d_count"," count of ibin vs j Recycler Beam Turn ",nbin,0,nbin*10,100,0,600,0,50);

  //TH2F *h2_outtime = (TH2F*)fhinout->Get("outtime_sum_tail_peak_high");
  //TH1F *h1_outtime = (TH1F*)fhinout->Get("h1_peaksum_outtime");
  //TH1F *h1_intime = (TH1F*)fhinout->Get("h1_peaksum_intime");
  TProfile2D * hprof2d_count = (TProfile2D*)fhinout->Get("hprof2d_count");
  TProfile2D * hprof2d_count_log = (TProfile2D*)fhinout->Get("hprof2d_count_log");
  TProfile2D * hprof2d_count_event_batch1 = (TProfile2D*)fhinout->Get("hprof2d_count_event_batch1");
  TProfile2D * hprof2d_count_event_batch2 = (TProfile2D*)fhinout->Get("hprof2d_count_event_batch2");


  //TCanvas *c_outtime_sum_tail_peak_high = new TCanvas("c_outtime_sum_tail_peak_high","out-time (tail / total) vs peak high",200,10,700,500);
  //TCanvas *c_outtime_npeaksum = new TCanvas("c_outtime_npeaksum","out-time npeaksum",200,10,700,500);
  TCanvas *c_hprof2d_count = new TCanvas("c_hprof2d_count","c_hprof2d_count",200,10,700,500);
  TCanvas *c_hprof2d_count_log = new TCanvas("c_hprof2d_count_log","c_hprof2d_count_log",200,10,700,500);
  TCanvas *c_hprof2d_count_event_batch1 = new TCanvas("c_hprof2d_count_event_batch1","c_hprof2d_count_event_batch1",200,10,700,500);
  TCanvas *c_hprof2d_count_event_batch2 = new TCanvas("c_hprof2d_count_event_batch2","c_hprof2d_count_event_batch2",200,10,700,500);

  //c_outtime_sum_tail_peak_high ->cd();
  //h2_outtime -> Draw();
  //c_outtime_npeaksum ->cd();
  //h1_intime -> Draw();
  //h1_outtime -> SetLineColor(kRed);
  //h1_outtime -> Draw("same");
 
  c_hprof2d_count->cd();
  hprof2d_count->Draw("colz");
 
  c_hprof2d_count_log->cd();
  hprof2d_count_log->Draw("colz");
 
  c_hprof2d_count_event_batch1->cd();
  hprof2d_count_event_batch1->Draw("colz");
 
  c_hprof2d_count_event_batch2->cd();
  hprof2d_count_event_batch2->Draw("colz");
 
  //fhinout->Close();
  
}
