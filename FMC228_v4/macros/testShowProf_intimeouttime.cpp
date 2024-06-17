//
// take data from intimeouttime tree
//


#include <TTree.h>
#include <TGraph.h>
#include <TFile.h>
#include <TSystem.h>
#include <TCanvas.h>
#include <TProfile2D.h>
#include <TStyle.h>



void testShowProf_intimeouttime(char* rootfile, int nevn)
{

  using std::count;
  using std::endl;
  gStyle ->SetCanvasDefH(900);
  gStyle ->SetCanvasDefW(1500);

  //const char *foldername = "nustar_present";
  //const char *ext =".pdf";
  gSystem->Load("../libData.so");

  //TFile *fr = new TFile("../convertFMC228/datafmc228i_v9.root");
  //TFile *fr = new TFile("../convertFMC228/data_Nov21/acctrig_200evn_raw200ns_peakfinding600000ns.root");
  //TFile *fcoinfitfunction = new TFile(rootfile);
  TFile *fintimeouttime = new TFile(rootfile);
  //TFile *fr = new TFile("../convertFMC228/data_Nov18/data_selftrig_coin4.root");
  //TFile *fr = new TFile("../convertFMC228/data_Nov18/data_selftrig_ch0.root");
  //TFile *fr = new TFile("../convertFMC228/data_Nov18/data_exttrig.root");
  //TFile *fr = new TFile("../convertFMC228/data_Nov19_testersignal/data_test_ch0_600ns_exttrig_org_mornitor.root");
  //
  //TTree *tr = (TTree*)fcoin->Get("cointree");
  TTree *tr = (TTree*)fintimeouttime->Get("treeintimeouttime");

  InTimeOutTimeEvent *intimeouttime = new InTimeOutTimeEvent();
  //
  //CoinEvent *coinevent = new CoinEvent();
  //tr->SetBranchAddress("ch0.",&revent);
  //tr->SetBranchAddress("ch1.",&revent);
  //tr->SetBranchAddress("ch2.",&revent);
  //tr->SetBranchAddress("ch3.",&revent);

  TGraph *gr[10000];
  Int_t x[10000];
  Int_t y[10000];
  Int_t peakhigh[10000];
  Int_t vpeakhigh[10000];
  Int_t vpeaksum[10000];
  Int_t peaktime[10000];
  Int_t peaksum[10000];
  Int_t peaksumtime1[10000];
  Int_t peaksumtime2[10000];


  Int_t ch_vpeakhigh[10000][4][10000];
  Int_t ch_vpeakhigh_time_ms[10000][4][10000];
  Int_t ch_vpeakhigh_time_us[10000][4][10000];
  Int_t ch_vpeakhigh_time_ns[10000][4][10000];

  Int_t ch_vpeaksum[10000][4][10000];
  Int_t ch_vpeaksum0[10000][4][10000];
  Int_t ch_vpeaksum_tail[10000][4][10000];
  Int_t ch_vpeaksum_peak[10000][4][10000];
  Int_t ch_vpeaksum_time_ms[10000][4][10000];
  Int_t ch_vpeaksum_time_us[10000][4][10000];
  Int_t ch_vpeaksum_time_ns[10000][4][10000];

  Int_t npeak_ch0[10000];
  Int_t npeak_ch1[10000];
  Int_t npeak_ch2[10000];
  Int_t npeak_ch3[10000];

  Int_t nsum_ch0[10000];
  Int_t nsum_ch1[10000];
  Int_t nsum_ch2[10000];
  Int_t nsum_intime[10000];

  Int_t InTime[4][100000];

  int nevents = tr->GetEntries();
  printf("nevents = %d\n", nevents);

  //hprof2d_vpeakhigh_coin_ms = new TProfile2D("hprof2d_vpeakhigh_coin_ms","vprofile 2D peakhigh coin ms  ",600,-50,550,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_160ms = new TProfile2D("hprof2d_vpeakhigh_coin_160ms","vprofile 2D peakhigh coin 160ms  ",210,-50,160,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_us_batch1 = new TProfile2D("hprof2d_vpeakhigh_coin_us_batch1","vprofile 2D peakhigh coin_us  ",3000,0,3000,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_us_batch2 = new TProfile2D("hprof2d_vpeakhigh_coin_us_batch2","vprofile 2D peakhigh coin_us  ",3000,66000,69000,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_138000_142000_ns = new TProfile2D("hprof2d_vpeakhigh_coin_138000_142000_ns","vprofile 2D peakhigh coin_ns  ",4000,138000,142000,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_393000_397000_ns = new TProfile2D("hprof2d_vpeakhigh_coin_393000_397000_ns","vprofile 2D peakhigh coin_ns  ",4000,393000,397000,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_67532000_67538000_ns = new TProfile2D("hprof2d_vpeakhigh_coin_67532000_67538000_ns","vprofile 2D peakhigh coin_ns  ",6000,67532000,67538000,5000,0,5000,-2500,0);
  ////hprof2d_vpeakhigh_coin_v2 = new TProfile2D("hprof2d_vpeakhigh_coin_v2","vprofile 2D peakhigh coin  ",100000,0,1000000,5000,0,5000,-2500,0);
  ////hprof2d_vpeakhigh_coin_55000_58000 = new TProfile2D("hprof2d_vpeakhigh_coin_55000_58000","vprofile 2D peakhigh coin  ",3000,55000,58000,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_55000_58000 = new TProfile2D("hprof2d_vpeakhigh_coin_55000_58000","vprofile 2D peakhigh coin  ",4000,48000,52000,10000,0,10000,-2500,0);
  //hprof2d_vpeakhigh_coin_475000_490000 = new TProfile2D("hprof2d_vpeakhigh_coin_475000_490000","vprofile 2D peakhigh coin  ",15000,475000,490000,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_666000_670000 = new TProfile2D("hprof2d_vpeakhigh_coin_666000_670000","vprofile 2D peakhigh coin  ",4000,666000,670000,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_899000_902000 = new TProfile2D("hprof2d_vpeakhigh_coin_899000_902000","vprofile 2D peakhigh coin  ",3000,899000,902000,5000,0,5000,-2500,0);


  //hprof2d_vpeaksum_coin_ms = new TProfile2D("hprof2d_vpeaksum_coin_ms","vprofile 2D peaksum coin ms  ",600,-50,550,5000,0,5000,-30000,0);
  //hprof2d_vpeaksum_coin_160ms = new TProfile2D("hprof2d_vpeaksum_coin_160ms","vprofile 2D peaksum coin 160ms  ",210,-50,160,5000,0,5000,-30000,0);
  //hprof2d_vpeaksum_coin_us_batch1 = new TProfile2D("hprof2d_vpeaksum_coin_us_batch1","vprofile 2D peaksum coin_us  ",3000,0,3000,5000,0,5000,-30000,0);
  //hprof2d_vpeaksum_coin_us_batch2 = new TProfile2D("hprof2d_vpeaksum_coin_us_batch2","vprofile 2D peaksum coin_us  ",3000,66000,69000,5000,0,5000,-30000,0);
  //hprof2d_vpeaksum_coin_138000_142000_ns = new TProfile2D("hprof2d_vpeaksum_coin_138000_142000_ns","vprofile 2D peaksum coin_ns  ",4000,138000,142000,5000,0,5000,-30000,0);
  //hprof2d_vpeaksum_coin_67532000_67538000_ns = new TProfile2D("hprof2d_vpeaksum_coin_67532000_67538000_ns","vprofile 2D peaksum coin_ns  ",6000,67532000,67538000,5000,0,5000,-30000,0);


  //h1 = new TH1F("h1","background",2500,-2500,0);
  //npeakheigh = new TH1F("npeakheigh","number of peak heigh",4000,0,4000);
  //npeaksum = new TH1F("npeaksum","number of peak sum",4000,0,4000);
  //ndelta_peak_sum = new TH1F("ndelta_peak_sum","delta of peak heigh - peak sum",1000,-500,500);
  //peakhigh_coin = new TH1F("peakhigh_coin","peakhigh_coin",2500,-2500,0);

  //peak2f_high_sum = new TH2F("peak2f_high_sum","No of peak heigh vs No of peak sum",500,0,500,500,0,500);
  //peakh1_high_sum = new TH1F("peakh1_high_sum","No of peak heigh / No of peak sum",100,0,100);

  //sig_height = new TH1F("sig_height","signal peak height",625,-2500,0);
  //bg_height = new TH1F("bg_height","background peak height",625,-2500,0);
  //sig_sum = new TH1F("sig_sum","signal peak sum",5000,-40000,40000);
  //bg_sum = new TH1F("bg_sum","background peak sum",5000,-40000,40000);


  //sum_tail_peak_high = new TH2F("  ratio signal sum_tail_peak_high"," in-time (sum tail / sum total) vs peak heigh",1000,-2000,0,1000,0,2);
  //bg_sum_tail_peak_high = new TH2F("  ratio bg sum_tail_peak_high"," out-time (sum tail / sum total) vs peak heigh",1000,-2000,0,1000,0,2);

  //sum_tail_total = new TH2F("  sum_tail vs sum total ","  sum tail vs sum total",5000,-50000,0,5000,-50000,0);
  //sum_ratio_tail_total = new TH2F("  ratio sum_tail vs sum total ","  (sum tail/sum total) vs sum total",5000,-50000,0,1000,0,2);

  //int coin0 =0;
  //int coin1 =0;
  //int coin2 =0;
  //int npeak_10ms =0;
  //int nsum_10ms =0;
  //int delta_peak_sum_10ms =0;
  //double ratio;
  
  printf("come here a0\n");
  tr->SetBranchAddress("ch0.",&intimeouttime);
  //TBranch *in-time-peak-high = tr->GetBranch("intimeouttime0.fvInTimePeakHigh");
  printf("come here a1\n");
  tr->GetEntry(1);
  printf("come here a2\n");
  // 
  // take data from peak sum in-time
  //
  for(int i= 0; i< nevn ;i++)
  ////for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
        printf("event %d \t",i);
        //tr->GetEntry(i);
        //printf("event %d \n",i);
        nsum_intime[i] = intimeouttimeevent->GetVInTimePeakSumSize();
        printf("nsum_intime[%d] = %d\n",i, nsum_intime[i]);
        //for(int j =0; j< nsum_intime[i] ;j++)
        //{	   
        //   ch_vpeakhigh[i][3][j]=coineventfitfunction->GetVPeakHigh()[j];
        //   ch_vpeakhigh_time_ms[i][3][j]=coineventfitfunction->GetVPeakHighTime()[j]*0.000001; //convert to ms
        //   ch_vpeakhigh_time_us[i][3][j]=coineventfitfunction->GetVPeakHighTime()[j]*0.001; //convert to us
        //   ch_vpeakhigh_time_ns[i][3][j]=coineventfitfunction->GetVPeakHighTime()[j]; //ns

        //}
           


  }
        
        

 
   //TCanvas *c1 = new TCanvas("c1","profile",200,10,700,500);
   //TCanvas *c2 = new TCanvas("c2","profile",200,10,700,500);
   //TCanvas *c3_1 = new TCanvas("c2_1","profile",200,10,700,500);
   //TCanvas *c3_2 = new TCanvas("c3_2","profile",200,10,700,500);
   //TCanvas *c4_1 = new TCanvas("c4_1","profile",200,10,700,500);
   //TCanvas *c4_2 = new TCanvas("c4_2","profile",200,10,700,500);
   //TCanvas *c4_3 = new TCanvas("c4_3","profile",200,10,700,500);


   //TCanvas *c1_sum = new TCanvas("c1_sum","profile",200,10,700,500);
   //TCanvas *c2_sum = new TCanvas("c2_sum","profile",200,10,700,500);
   //TCanvas *c3_1_sum = new TCanvas("c2_1_sum","profile",200,10,700,500);
   //TCanvas *c3_2_sum = new TCanvas("c3_2_sum","profile",200,10,700,500);
   //TCanvas *c4_1_sum = new TCanvas("c4_1_sum","profile",200,10,700,500);
   //TCanvas *c4_2_sum = new TCanvas("c4_2_sum","profile",200,10,700,500);
  
   //TCanvas *c_npeakheigh = new TCanvas("c_npeakheigh","number peak heigh",200,10,700,500);
   //TCanvas *c_npeaksum = new TCanvas("c_npeaksum","number peak sum",200,10,700,500);
   //TCanvas *c_ndelta_peak_sum = new TCanvas("c_ndelta_peak_sum","delta peak heigh peak sum",200,10,700,500);

   //TCanvas *c_n_peak_sum = new TCanvas("c_n_peak_sum","no of peak heigh vs no of peak sum",200,10,700,500);
   //TCanvas *c_ratio_peak_sum = new TCanvas("c_ratio_peak_sum","no of peak heigh / no of peak sum",200,10,700,500);

   //TCanvas *c_bg_height = new TCanvas("c_bg_height","background peak height",200,10,700,500);
   //TCanvas *c_bg_sum = new TCanvas("c_bg_sum","background peak sum",200,10,700,500);

   //TCanvas *c_sum_tail_peak_high = new TCanvas("c_sum_tail_peak_high","(tail / total) vs peak high",200,10,700,500);
   //TCanvas *c_bg_sum_tail_peak_high = new TCanvas("c_bg_sum_tail_peak_high","bg (tail / total) vs peak high",200,10,700,500);

   //TCanvas *c_sum_tail_total = new TCanvas("c_sum_tail_total","tail vs total",200,10,700,500);
   //TCanvas *c_sum_ratio_tail_total = new TCanvas("c_sum_ratio_tail_total"," (tail / total) vs total",200,10,700,500);
  //// TCanvas *c5 = new TCanvas("c5","profile",200,10,700,500);
  // TCanvas *c6 = new TCanvas("c6","profile",200,10,700,500);
   //TCanvas *c7 = new TCanvas("c7","peakhigh",200,10,700,500);
   //TCanvas *c8 = new TCanvas("c8","peakhigh",200,10,700,500);
   //TCanvas *c9 = new TCanvas("c9","peakhigh",200,10,700,500);
   //TCanvas *c10 = new TCanvas("c10","peakhigh",200,10,700,500);
   //TCanvas *c11 = new TCanvas("c11","peakhigh",200,10,700,500);
   //const Int_t Number =3;
   //Double_t Red[Number] = {1.00, 0.00, 0.00};
   ////Double_t Green[Number] = {0.00, 1.00, 0.00};
   //Double_t Green[Number] = {0.00, 0.00, 0.00};
   //Double_t Blue[Number] = {0.00, 0.00, 1.00};
   //Double_t Length[Number] = {0.00, 0.50, 1.00};
   //Int_t nb=50;
   //TColor::CreateGradientColorTable(Number, Length,Red,Green,Blue,nb);
   //gStyle->SetPalette(1);
   //Int_t colors[] = {0,1,2,3,4,5,6};
   //gStyle->SetPalette((sizeof(colors)/sizeof(Int_t)), colors);

   //c1->cd();
   //hprof2d->GetXaxis()->SetTitle("Time(ns)");
   //hprof2d->GetYaxis()->SetTitle("Events");
   //hprof2d->Draw("colz");

   //int gra_begin =0;
   //c2->Divide(2,2);
   //c2->cd(1);
   //gr[1+gra_begin] ->Draw("AL*");
   //c2->cd(2);
   //gr[2+gra_begin] ->Draw("AL*");
   //c2->cd(3);
   //gr[3+gra_begin] ->Draw("AL*");
   //c2->cd(4);
   //gr[4+gra_begin] ->Draw("AL*");

   //for(int k=1;k<5; k++)
   //  {
   //    c2->cd(k+1);
   //    gr[k]->Draw("APL");
   //  }

  //c3->Divide(2,3);
  //c3->cd(1);
  //hprof2d_peakhigh->GetXaxis()->SetTitle("Time(ns)");
  //hprof2d_peakhigh->GetYaxis()->SetTitle("Events");
  //hprof2d_peakhigh->Draw("colz");
  //c3->cd(2);
  //hprof2d_vpeakhigh->GetXaxis()->SetTitle("Time(us)");
  //hprof2d_vpeakhigh->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeakhigh->Draw("colz");
  //c3->cd(3);
  //hprof2d_peaksum1->Draw("colz");
  ////peakhigh_h1->Draw();
  //c3->cd(4);
  //hprof2d_vpeaksum1->Draw("colz");
  ////vpeakhigh_h1->GetXaxis()->SetTitle("Peak high(adc)");
  ////vpeakhigh_h1->GetYaxis()->SetTitle("Counts");
  ////vpeakhigh_h1->Draw();
  //c3->cd(5);
  //hprof2d_vpeakhightest->Draw("colz");
  //c3->cd(6);
  //hprof2d_vpeaksum2->Draw("colz");
  
  //
  // profile peak high
  //
  //c1->cd();
  //c1->SetGridx();
  //c1->SetGridy();
  //hprof2d_vpeakhigh_coin_ms->SetStats(kFALSE);
  //hprof2d_vpeakhigh_coin_ms->GetXaxis()->SetTitle("Time(ms)");
  //hprof2d_vpeakhigh_coin_ms->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeakhigh_coin_ms->Draw("colz");
  ////hprof2d_vpeakhigh_coin_ms->Draw("contz");
  //c2->cd();
  //c2->SetGridx();
  //c2->SetGridy();
  //hprof2d_vpeakhigh_coin_160ms->SetStats(kFALSE);
  //hprof2d_vpeakhigh_coin_160ms->GetXaxis()->SetTitle("Time(ms)");
  //hprof2d_vpeakhigh_coin_160ms->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeakhigh_coin_160ms->Draw("colz");
  //c3_1->cd();
  //c3_1->SetGridx();
  //c3_1->SetGridy();
  //hprof2d_vpeakhigh_coin_us_batch1->SetStats(kFALSE);
  //hprof2d_vpeakhigh_coin_us_batch1->GetXaxis()->SetTitle("Time(us)");
  //hprof2d_vpeakhigh_coin_us_batch1->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeakhigh_coin_us_batch1->Draw("colz");
  //c3_2->cd();
  //c3_2->SetGridx();
  //c3_2->SetGridy();
  //hprof2d_vpeakhigh_coin_us_batch2->SetStats(kFALSE);
  //hprof2d_vpeakhigh_coin_us_batch2->GetXaxis()->SetTitle("Time(us)");
  //hprof2d_vpeakhigh_coin_us_batch2->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeakhigh_coin_us_batch2->Draw("colz");
  //c4_1->cd();
  //c4_1->SetGridx();
  //c4_1->SetGridy();
  //hprof2d_vpeakhigh_coin_138000_142000_ns->SetStats(kFALSE);
  //hprof2d_vpeakhigh_coin_138000_142000_ns->GetXaxis()->SetTitle("Time(ns)");
  //hprof2d_vpeakhigh_coin_138000_142000_ns->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeakhigh_coin_138000_142000_ns->Draw("colz");
  ////hprof2d_vpeakhigh_coin_138000_142000_ns->Draw("cont1z");
  //c4_2->cd();
  //c4_2->SetGridx();
  //c4_2->SetGridy();
  //hprof2d_vpeakhigh_coin_393000_397000_ns->SetStats(kFALSE);
  //hprof2d_vpeakhigh_coin_393000_397000_ns->GetXaxis()->SetTitle("Time(ns)");
  //hprof2d_vpeakhigh_coin_393000_397000_ns->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeakhigh_coin_393000_397000_ns->Draw("colz");
  //c4_3->cd();
  //c4_3->SetGridx();
  //c4_3->SetGridy();
  //hprof2d_vpeakhigh_coin_67532000_67538000_ns->SetStats(kFALSE);
  //hprof2d_vpeakhigh_coin_67532000_67538000_ns->GetXaxis()->SetTitle("Time(ns)");
  //hprof2d_vpeakhigh_coin_67532000_67538000_ns->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeakhigh_coin_67532000_67538000_ns->Draw("colz");

  ////
  //// profile peak sum
  ////
  //c1_sum->cd();
  //c1_sum->SetGridx();
  //c1_sum->SetGridy();
  //hprof2d_vpeaksum_coin_ms->SetStats(kFALSE);
  //hprof2d_vpeaksum_coin_ms->GetXaxis()->SetTitle("Time(ms)");
  //hprof2d_vpeaksum_coin_ms->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeaksum_coin_ms->Draw("colz");
  //c2_sum->cd();
  //c2_sum->SetGridx();
  //c2_sum->SetGridy();
  //hprof2d_vpeaksum_coin_160ms->SetStats(kFALSE);
  //hprof2d_vpeaksum_coin_160ms->GetXaxis()->SetTitle("Time(ms)");
  //hprof2d_vpeaksum_coin_160ms->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeaksum_coin_160ms->Draw("colz");
  //c3_1_sum->cd();
  //c3_1_sum->SetGridx();
  //c3_1_sum->SetGridy();
  //hprof2d_vpeaksum_coin_us_batch1->SetStats(kFALSE);
  //hprof2d_vpeaksum_coin_us_batch1->GetXaxis()->SetTitle("Time(us)");
  //hprof2d_vpeaksum_coin_us_batch1->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeaksum_coin_us_batch1->Draw("colz");
  //c3_2_sum->cd();
  //c3_2_sum->SetGridx();
  //c3_2_sum->SetGridy();
  //hprof2d_vpeaksum_coin_us_batch2->SetStats(kFALSE);
  //hprof2d_vpeaksum_coin_us_batch2->GetXaxis()->SetTitle("Time(us)");
  //hprof2d_vpeaksum_coin_us_batch2->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeaksum_coin_us_batch2->Draw("colz");
  //c4_1_sum->cd();
  //c4_1_sum->SetGridx();
  //c4_1_sum->SetGridy();
  //hprof2d_vpeaksum_coin_138000_142000_ns->SetStats(kFALSE);
  //hprof2d_vpeaksum_coin_138000_142000_ns->GetXaxis()->SetTitle("Time(ns)");
  //hprof2d_vpeaksum_coin_138000_142000_ns->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeaksum_coin_138000_142000_ns->Draw("colz");
  //c4_2_sum->cd();
  //c4_2_sum->SetGridx();
  //c4_2_sum->SetGridy();
  //hprof2d_vpeaksum_coin_67532000_67538000_ns->SetStats(kFALSE);
  //hprof2d_vpeaksum_coin_67532000_67538000_ns->GetXaxis()->SetTitle("Time(ns)");
  //hprof2d_vpeaksum_coin_67532000_67538000_ns->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeaksum_coin_67532000_67538000_ns->Draw("colz");

  //c_npeakheigh->cd();
  //c_npeakheigh->SetGridx();
  //c_npeakheigh->SetGridy();
  //npeakheigh->GetXaxis()->SetTitle("number of peak");
  //npeakheigh->Draw();

  //c_npeaksum->cd();
  //c_npeaksum->SetGridx();
  //c_npeaksum->SetGridy();
  //npeaksum->GetXaxis()->SetTitle("number of sum");
  //npeaksum->Draw();
  //c_ndelta_peak_sum->cd();
  //c_ndelta_peak_sum->SetGridx();
  //c_ndelta_peak_sum->SetGridy();
  //ndelta_peak_sum->GetXaxis()->SetTitle("delta");
  //ndelta_peak_sum->Draw();

  //c_n_peak_sum->cd();
  //c_n_peak_sum->SetGridx();
  //c_n_peak_sum->SetGridy();
  //peak2f_high_sum->GetXaxis()->SetTitle("No. of peak heigh");
  //peak2f_high_sum->GetYaxis()->SetTitle("No. of peak sum");
  //peak2f_high_sum->Draw("cont3z");

  //c_ratio_peak_sum->cd();
  //c_ratio_peak_sum->SetGridx();
  //c_ratio_peak_sum->SetGridy();
  //peakh1_high_sum->GetXaxis()->SetTitle("No. of peak heigh / No. of peak sum");
  //peakh1_high_sum->Draw();
  ////
  //// peak height
  ////
  //c_bg_height->cd();
  //c_bg_height->SetGridx();
  //c_bg_height->SetGridy();
  //sig_height->GetXaxis()->SetTitle("peak height");
  ////bg_height->GetXaxis()->SetTitle("peak height");
  //sig_height->Draw();
  //bg_height->SetLineColor(kRed);
  //bg_height->Draw("same");

  //c_bg_sum->cd();
  //c_bg_sum->SetGridx();
  //c_bg_sum->SetGridy();
  //bg_sum->GetXaxis()->SetTitle("peak sum");
  //bg_sum->Draw();

  //// sum tail / total vs peak high
  //c_sum_tail_peak_high ->cd();
  //sum_tail_peak_high -> Draw("colz");

  //c_bg_sum_tail_peak_high ->cd();
  //bg_sum_tail_peak_high -> Draw("colz");

  //c_sum_tail_total ->cd();
  //sum_tail_total -> Draw("colz");

  //c_sum_ratio_tail_total ->cd();
  //sum_ratio_tail_total -> Draw("colz");

  //c5->cd();
  //c5->Divide(2,2);
  //c5->cd(1);
  //c5->SetGridx();
  //c5->SetGridy();
  ////hprof2d_vpeakhigh_coin->SetStats(kFALSE);
  //hprof2d_vpeakhigh_ch3->GetXaxis()->SetTitle("Time(us)");
  //hprof2d_vpeakhigh_ch3->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeakhigh_ch3->Draw("colz");
  //c5->cd(2);
  //c5->SetGridx();
  //c5->SetGridy();
  ////hprof2d_vpeakhigh_coin->SetStats(kFALSE);
  //hprof2d_vpeakhigh_ch2->GetXaxis()->SetTitle("Time(us)");
  //hprof2d_vpeakhigh_ch2->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeakhigh_ch2->Draw("colz");
  //c5->cd(3);
  //c5->SetGridx();
  //c5->SetGridy();
  ////hprof2d_vpeakhigh_coin->SetStats(kFALSE);
  //hprof2d_vpeakhigh_ch1->GetXaxis()->SetTitle("Time(us)");
  //hprof2d_vpeakhigh_ch1->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeakhigh_ch1->Draw("colz");
  //c5->cd(4);
  //c5->SetGridx();
  //c5->SetGridy();
  ////hprof2d_vpeakhigh_coin->SetStats(kFALSE);
  //hprof2d_vpeakhigh_ch0->GetXaxis()->SetTitle("Time(us)");
  //hprof2d_vpeakhigh_ch0->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeakhigh_ch0->Draw("colz");
  //c6->cd();
  //c6->SetGridx();
  //c6->SetGridy();
  //hprof2d_vpeakhigh_coin_55000_58000->SetStats(kFALSE);
  //hprof2d_vpeakhigh_coin_55000_58000->GetXaxis()->SetTitle("Time(ns)");
  //hprof2d_vpeakhigh_coin_55000_58000->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeakhigh_coin_55000_58000->Draw("colz");
  //c7->cd();
  //c7->SetGridx();
  //c7->SetGridy();
  //hprof2d_vpeakhigh_coin_666000_670000->SetStats(kFALSE);
  //hprof2d_vpeakhigh_coin_666000_670000->GetXaxis()->SetTitle("Time(ns)");
  //hprof2d_vpeakhigh_coin_666000_670000->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeakhigh_coin_666000_670000->Draw("colz");
  //c8->cd();
  //c8->SetGridx();
  //c8->SetGridy();
  //hprof2d_vpeakhigh_coin_899000_902000->SetStats(kFALSE);
  //hprof2d_vpeakhigh_coin_899000_902000->GetXaxis()->SetTitle("Time(ns)");
  //hprof2d_vpeakhigh_coin_899000_902000->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeakhigh_coin_899000_902000->Draw("colz");
  ////hprof2d_vpeaksum_coin->GetYaxis()->SetTitle("Events");
  ////hprof2d_vpeaksum_coin->Draw("colz");
  /////c7->Divide(1,2);
  ////c7->cd();
  ////c7->SetGridx();
  ////c7->SetGridy();
  ////vpeakhigh_pmt3->SetXTitle("Peakhigh(adc)");
  ////vpeakhigh_pmt3->Draw();
  ////c8->cd();
  ////c8->SetGridx();
  ////c8->SetGridy();
  ////vpeakhightime_pmt3->SetXTitle("Time(us)");
  ////vpeakhightime_pmt3->Draw();
  //c9->cd();
  //c9->SetGridx();
  //c9->SetGridy();
  //h1->SetXTitle("Peakhigh(adc)");
  //h1->Draw();
  //c10->cd();
  //c10->SetGridx();
  //c10->SetGridy();
  //peakhigh_coin->SetXTitle("Peakhigh(adc)");
  //peakhigh_coin->Draw();
  //hprof2d_vpeakhigh_coin_short->SetStats(kFALSE);
  //hprof2d_vpeakhigh_coin_short->SetXTitle("Time(ns)");
  //hprof2d_vpeakhigh_coin_short->SetYTitle("Events");
  //hprof2d_vpeakhigh_coin_short->Draw("colz");
  //c11->cd();
  //c11->SetGridx();
  //c11->SetGridy();
  ////hprof2d_vpeakhigh_coin_short_v2->SetColor(60);
  ////gPad->SetFrameFillColor(60);
  //hprof2d_vpeakhigh_coin_short_v2->SetStats(kFALSE);
  //hprof2d_vpeakhigh_coin_short_v2->SetXTitle("Time(ns)");
  //hprof2d_vpeakhigh_coin_short_v2->SetYTitle("Events");
  //hprof2d_vpeakhigh_coin_short_v2->Draw("colz");
  ////hprof2d_vpeakhigh->Draw("colz");

  ////tr->Draw("ch0.vpeakhigh:ch0.vpeaksum");
  
}
