//
// take coincidence of 4 channels
//


#include <TTree.h>
#include <TGraph.h>
#include <TFile.h>
#include <TSystem.h>
#include <TCanvas.h>
#include <TProfile2D.h>
#include <TStyle.h>



void testShowProf_coineventfitfunction_ext(char* rootfile, int nevn)
{

  using std::count;
  using std::endl;
  gStyle ->SetCanvasDefH(900);
  gStyle ->SetCanvasDefW(1500);

  gSystem->Load("../libData.so");

  TFile *fcoinfitfunction = new TFile(rootfile);
  //
  TTree *tr = (TTree*)fcoinfitfunction->Get("cointreefitfunction");

  CoinEventFitFunction *coineventfitfunction = new CoinEventFitFunction();


  Int_t ch_vpeakhigh[10000][1000];
  Int_t ch_vpeakhigh_time_ms[10000][1000];
  Int_t ch_vpeakhigh_time_us[10000][1000];
  Int_t ch_vpeakhigh_time_ns[10000][1000];

  Int_t ch_vpeaksum[10000][1000];
  Int_t ch_vpeaksum0[10000][1000];
  Int_t ch_vpeaksum_tail[10000][1000];
  Int_t ch_vpeaksum_peak[10000][1000];
  Int_t ch_vpeaksum_time1_ms[10000][1000];
  Int_t ch_vpeaksum_time1_us[10000][1000];
  Int_t ch_vpeaksum_time1_ns[10000][1000];

  Int_t npeak[10000];
  Int_t nsum[10000];

  int nevents = tr->GetEntries();
  printf("nevent in root file = %d\n", nevents);
  hprof2d_vpeakhigh_coin_ms = new TProfile2D("hprof2d_vpeakhigh_coin_ms","vprofile 2D peakhigh coin ms  ",600,-50,550,10000,0,10000,-2500,0);
  hprof2d_vpeakhigh_coin_us_batch1 = new TProfile2D("hprof2d_vpeakhigh_coin_us_batch1","vprofile 2D peakhigh coin_us  ",3000,0,3000,10000,0,10000,-2500,0);
  hprof2d_vpeakhigh_coin_us_batch2 = new TProfile2D("hprof2d_vpeakhigh_coin_us_batch2","vprofile 2D peakhigh coin_us  ",3000,66000,69000,10000,0,10000,-2500,0);
//
  hprof2d_vpeaksum_coin_ms = new TProfile2D("hprof2d_vpeaksum_coin_ms","vprofile 2D peaksum coin ms  ",600,-50,550,10000,0,10000,-30000,0);
  hprof2d_vpeaksum_coin_us_batch1 = new TProfile2D("hprof2d_vpeaksum_coin_us_batch1","vprofile 2D peaksum coin_us batch1  ",3000,0,3000,10000,0,10000,-30000,0);
  hprof2d_vpeaksum_coin_us_batch2 = new TProfile2D("hprof2d_vpeaksum_coin_us_batch2","vprofile 2D peaksum coin_us batch2 ",3000,66000,69000,10000,0,10000,-30000,0);

  hprof2d_waterfall = new TProfile2D("hprof2d_waterfall","waterfall ",5000,0,5000,179,0,179,-30000,0);

  h1_g_2 = new TH1F("h1_g_2","g-2 batches",4000,-400000,0);
  h1_booster = new TH1F("h1_booster","booster",4000,-400000,0);
  h1_extraction = new TH1F("h1_extraction","extraction",4000,-400000,0);

//
//
//  h1 = new TH1F("h1","background",2500,-2500,0);
//  npeakheigh = new TH1F("npeakheigh","number of peak heigh",4000,0,4000);
//  ndelta_peak_sum = new TH1F("ndelta_peak_sum","delta of peak heigh - peak sum",1000,-500,500);
//
//  peak2f_high_sum = new TH2F("peak2f_high_sum","No of peak heigh vs No of peak sum",500,0,500,500,0,500);
//
//  bg_sum = new TH1F("bg_sum","background peak sum",5000,-40000,40000);
//
//
  sum_tail_peak_high = new TH2F("  ratio signal sum_tail_peak_high"," (sum tail / sum total) vs peak heigh",1000,-2000,0,1000,0,2);
  sum_tail_peak_high_g_2 = new TH2F("  ratio signal sum_tail_peak_high g-2 batches"," (sum tail / sum total) vs peak heigh g-2 batches",1000,-2000,0,1000,0,2);
  sum_tail_peak_high_booster = new TH2F("  ratio signal sum_tail_peak_high g-2 booster"," (sum tail / sum total) vs peak heigh booster",1000,-2000,0,1000,0,2);
  sum_tail_peak_high_extraction = new TH2F("  ratio signal sum_tail_peak_high g-2 extraction"," (sum tail / sum total) vs peak heigh extraction",1000,-2000,0,1000,0,2);
//  bg_sum_tail_peak_high = new TH2F("  ratio bg sum_tail_peak_high"," out-time (sum tail / sum total) vs peak heigh",1000,-2000,0,1000,0,2);
//
//  sum_tail_total = new TH2F("  sum_tail vs sum total ","  sum tail vs sum total",5000,-50000,0,5000,-50000,0);
//  sum_ratio_tail_total = new TH2F("  ratio sum_tail vs sum total ","  (sum tail/sum total) vs sum total",5000,-50000,0,1000,0,2);
//
  double ratio;
  double t0 = 600;  //us
//  
  tr->SetBranchAddress("coinfitevn.",&coineventfitfunction);
  for(int i= 0; i< nevn ;i++)
  //for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
	printf("event %d \n",i);
        tr->GetEntry(i);
        npeak[i] = coineventfitfunction->GetVPeakHighSize();
        nsum[i] = coineventfitfunction->GetVPeakSumSize();
        //printf("npeak_ch3 = %d\t",npeak_ch3[i]);
        //printf("nsum_ch3 = %d\n",nsum_ch3[i]);
        for(int j =0; j< npeak[i] ;j++)
        {	   
           ch_vpeakhigh[i][j]=coineventfitfunction->GetVPeakHigh()[j];
           ch_vpeakhigh_time_ms[i][j]=coineventfitfunction->GetVPeakHighTime()[j]*0.000001; //convert to ms
           ch_vpeakhigh_time_us[i][j]=coineventfitfunction->GetVPeakHighTime()[j]*0.001; //convert to us
           ch_vpeakhigh_time_ns[i][j]=coineventfitfunction->GetVPeakHighTime()[j]; //ns

           hprof2d_vpeakhigh_coin_ms -> Fill(ch_vpeakhigh_time_ms[i][j],i,ch_vpeakhigh[i][j],1);
           hprof2d_vpeakhigh_coin_us_batch1 -> Fill(ch_vpeakhigh_time_us[i][j],i,ch_vpeakhigh[i][j],1);
           hprof2d_vpeakhigh_coin_us_batch2 -> Fill(ch_vpeakhigh_time_us[i][j],i,ch_vpeakhigh[i][j],1);
        }
	   
       for(int k=0; k<nsum[i] ; k++)
	{
           ch_vpeaksum[i][k]=coineventfitfunction->GetVPeakSum()[k];
           ch_vpeaksum0[i][k]=coineventfitfunction->GetVPeakSum0()[k];
           ch_vpeaksum_peak[i][k]=coineventfitfunction->GetVPeakSum0_peak()[k];
           ch_vpeaksum_tail[i][k]=ch_vpeaksum[i][k] - ch_vpeaksum0[i][k];
           ratio = ( (ch_vpeaksum_tail[i][k]*1.0)/(ch_vpeaksum[i][k]*1.0) );
           //printf("tail = %d \n",ch_vpeaksum_tail[i][3][k]);
           //printf("sum = %d \n",ch_vpeaksum[i][3][k]);
           //printf("peak = %d \n",ch_vpeaksum_peak[i][3][k]);
           //printf("ratio = %lf \n",ratio);
           ch_vpeaksum_time1_ms[i][k]=coineventfitfunction->GetVPeakSumTime1()[k]*0.000001; //convert to ms
           ch_vpeaksum_time1_us[i][k]=coineventfitfunction->GetVPeakSumTime1()[k]*0.001; //convert to us
           ch_vpeaksum_time1_ns[i][k]=coineventfitfunction->GetVPeakSumTime1()[k]; //ns
	 
           hprof2d_vpeaksum_coin_ms -> Fill(ch_vpeaksum_time1_ms[i][k],i,ch_vpeaksum[i][k],1);
           hprof2d_vpeaksum_coin_us_batch1 -> Fill(ch_vpeaksum_time1_us[i][k],i,ch_vpeaksum[i][k],1);
           hprof2d_vpeaksum_coin_us_batch2 -> Fill(ch_vpeaksum_time1_us[i][k],i,ch_vpeaksum[i][k],1);

           if(ch_vpeaksum_time1_ms[i][k] <240)
             {
               sum_tail_peak_high -> Fill(ch_vpeaksum_peak[i][k],ratio);
             }
           if(ch_vpeaksum_time1_ms[i][k] <80)
             {
                h1_g_2->Fill(ch_vpeaksum[i][k]);
                sum_tail_peak_high_g_2 -> Fill(ch_vpeaksum_peak[i][k],ratio);
             }
           if(ch_vpeaksum_time1_ms[i][k] >80 && ch_vpeaksum_time1_ms[i][k]<120)
             {
                h1_booster->Fill(ch_vpeaksum[i][k]);
                sum_tail_peak_high_booster -> Fill(ch_vpeaksum_peak[i][k],ratio);
             }
           if(ch_vpeaksum_time1_ms[i][k] >140 && ch_vpeaksum_time1_ms[i][k]<240)
             {
                h1_extraction->Fill(ch_vpeaksum[i][k]);
                sum_tail_peak_high_extraction -> Fill(ch_vpeaksum_peak[i][k],ratio);
             }


	}               
  }
double time_trace;
  for(int i= 0; i< nevn ;i++)
  {
    for(int itrace = 0; itrace < 179; itrace++)
     {
       time_trace = 600 + itrace*2780;
       for(int isum = 0; isum < nsum[i]; isum ++)
        {
            if( ch_vpeaksum_time1_us[i][isum] >= time_trace 
                && ch_vpeaksum_time1_us[i][isum] <= time_trace+5)
               {
                 hprof2d_waterfall -> Fill(ch_vpeaksum_time1_ns[i][isum]-time_trace*1000,itrace,ch_vpeaksum[i][isum],1);
                 // hprof2d_vpeaksum_coin_ms -> Fill(ch_vpeaksum_time1_ms[i][k],i,ch_vpeaksum[i][k],1);
               }
        } 
     }
  }
//        
//        
//
  TAxis *axis_h1_g_2 = h1_g_2->GetXaxis();
  int bmin_h1_g_2 = axis_h1_g_2 -> FindBin(-400000);
  int bmax_h1_g_2 = axis_h1_g_2 -> FindBin(0);
  double integral_h1_g_2 = h1_g_2->Integral(bmin_h1_g_2,bmax_h1_g_2);
  printf("integral_h1_g_2 = %d \n", integral_h1_g_2);
  double integral_h1_booster = h1_booster->Integral(bmin_h1_g_2,bmax_h1_g_2);
  printf("integral_h1_booster = %d \n", integral_h1_booster);
  double integral_h1_extraction = h1_extraction->Integral(bmin_h1_g_2,bmax_h1_g_2);
  printf("integral_h1_extraction = %d \n", integral_h1_extraction);
//
// 
   TCanvas *c_hprofile_peakheight_ms = new TCanvas("c_hprofile_peakheight_ms","profile ms peak height",200,10,700,500);
   TCanvas *c_hprofile_peakheight_batch1 = new TCanvas("c_hprofile_peakheight_batch1","profile batch1 peak height",200,10,700,500);
   TCanvas *c_hprofile_peakheight_batch2 = new TCanvas("c_hprofile_peakheight_batch2","profile batch2 peak height",200,10,700,500);

   TCanvas *c_hprofile_peaksum_ms = new TCanvas("c_hprofile_peaksum_ms","profile ms peak area",200,10,700,500);
   TCanvas *c_hprofile_peaksum_batch1 = new TCanvas("c_hprofile_peaksum_batch1","profile batch1 peak area",200,10,700,500);
   TCanvas *c_hprofile_peaksum_batch2 = new TCanvas("c_hprofile_peaksum_batch2","profile batch2 peak area",200,10,700,500);
//  
//   TCanvas *c_npeakheigh = new TCanvas("c_npeakheigh","number peak heigh",200,10,700,500);
//   TCanvas *c_npeaksum = new TCanvas("c_npeaksum","number peak sum",200,10,700,500);
//   TCanvas *c_ndelta_peak_sum = new TCanvas("c_ndelta_peak_sum","delta peak heigh peak sum",200,10,700,500);
//
//   TCanvas *c_n_peak_sum = new TCanvas("c_n_peak_sum","no of peak heigh vs no of peak sum",200,10,700,500);
//   TCanvas *c_ratio_peak_sum = new TCanvas("c_ratio_peak_sum","no of peak heigh / no of peak sum",200,10,700,500);
//
//   TCanvas *c_bg_height = new TCanvas("c_bg_height","background peak height",200,10,700,500);
//   TCanvas *c_bg_sum = new TCanvas("c_bg_sum","background peak sum",200,10,700,500);
//
   TCanvas *c_sum_tail_peak_high = new TCanvas("c_sum_tail_peak_high","(tail / total) vs peak high",200,10,700,500);
//   TCanvas *c_bg_sum_tail_peak_high = new TCanvas("c_bg_sum_tail_peak_high","bg (tail / total) vs peak high",200,10,700,500);
//
//   TCanvas *c_sum_tail_total = new TCanvas("c_sum_tail_total","tail vs total",200,10,700,500);
//   TCanvas *c_sum_ratio_tail_total = new TCanvas("c_sum_ratio_tail_total"," (tail / total) vs total",200,10,700,500);

   TCanvas *c_h1_area = new TCanvas("c_h1_area"," histogram peak area",200,10,700,500);

   TCanvas *c_hprof2d_waterfall = new TCanvas("c_hprof2d_waterfall","waterfall histogram",200,10,700,500);

     c_hprofile_peakheight_ms->cd();
     hprof2d_vpeakhigh_coin_ms ->GetXaxis()->SetTitle("Time(msec)");
     hprof2d_vpeakhigh_coin_ms ->GetYaxis()->SetTitle("Acc. Trig. Events");
     hprof2d_vpeakhigh_coin_ms->Draw("colz");

     c_hprofile_peakheight_batch1->cd();
     hprof2d_vpeakhigh_coin_us_batch1 ->GetXaxis()->SetTitle("Time(us)");
     hprof2d_vpeakhigh_coin_us_batch1 ->GetYaxis()->SetTitle("Acc. Trig. Events");
     hprof2d_vpeakhigh_coin_us_batch1->Draw("colz");

     c_hprofile_peakheight_batch2->cd();
     hprof2d_vpeakhigh_coin_us_batch2 ->GetXaxis()->SetTitle("Time(us)");
     hprof2d_vpeakhigh_coin_us_batch2 ->GetYaxis()->SetTitle("Acc. Trig. Events");
     hprof2d_vpeakhigh_coin_us_batch2->Draw("colz");


     c_hprofile_peaksum_ms->cd();
     hprof2d_vpeaksum_coin_ms ->GetXaxis()->SetTitle("Time(msec)");
     hprof2d_vpeaksum_coin_ms ->GetYaxis()->SetTitle("Acc. Trig. Events");
     hprof2d_vpeaksum_coin_ms->Draw("colz");

     c_hprofile_peaksum_batch1->cd();
     hprof2d_vpeaksum_coin_us_batch1 ->GetXaxis()->SetTitle("Time(us)");
     hprof2d_vpeaksum_coin_us_batch1 ->GetYaxis()->SetTitle("Acc. Trig. Events");
     hprof2d_vpeaksum_coin_us_batch1->Draw("colz");

     c_hprofile_peaksum_batch2->cd();
     hprof2d_vpeaksum_coin_us_batch2 ->GetXaxis()->SetTitle("Time(us)");
     hprof2d_vpeaksum_coin_us_batch2 ->GetYaxis()->SetTitle("Acc. Trig. Events");
     hprof2d_vpeaksum_coin_us_batch2->Draw("colz");

     c_sum_tail_peak_high->Divide(2,2);
     c_sum_tail_peak_high->cd(1);
     sum_tail_peak_high->GetXaxis()->SetTitle("peak height");
     sum_tail_peak_high->GetYaxis()->SetTitle("ratio");
     sum_tail_peak_high->Draw("colz");
     c_sum_tail_peak_high->cd(2);
     sum_tail_peak_high_g_2->GetXaxis()->SetTitle("peak height");
     sum_tail_peak_high_g_2->GetYaxis()->SetTitle("ratio");
     sum_tail_peak_high_g_2->Draw("colz");
     c_sum_tail_peak_high->cd(3);
     sum_tail_peak_high_booster->GetXaxis()->SetTitle("peak height");
     sum_tail_peak_high_booster->GetYaxis()->SetTitle("ratio");
     sum_tail_peak_high_booster->Draw("colz");
     c_sum_tail_peak_high->cd(4);
     sum_tail_peak_high_extraction->GetXaxis()->SetTitle("peak height");
     sum_tail_peak_high_extraction->GetYaxis()->SetTitle("ratio");
     sum_tail_peak_high_extraction->Draw("colz");

     c_h1_area->cd();
     h1_g_2 -> GetXaxis()->SetTitle("peak area");
     h1_g_2 -> GetYaxis()->SetTitle("#counts");
     h1_g_2 -> Draw();
     h1_booster -> SetLineColor(kRed);
     h1_booster -> Draw("same");
     h1_extraction -> SetLineColor(kBlack);
     h1_extraction -> Draw("same");

     c_hprof2d_waterfall->cd();
     hprof2d_waterfall->Draw("colz");
//
//   //int gra_begin =0;
//   //c2->Divide(2,2);
//   //c2->cd(1);
//   //gr[1+gra_begin] ->Draw("AL*");
//   //c2->cd(2);
//   //gr[2+gra_begin] ->Draw("AL*");
//   //c2->cd(3);
//   //gr[3+gra_begin] ->Draw("AL*");
//   //c2->cd(4);
//   //gr[4+gra_begin] ->Draw("AL*");
//
//   //for(int k=1;k<5; k++)
//   //  {
//   //    c2->cd(k+1);
//   //    gr[k]->Draw("APL");
//   //  }
//
//  //c3->Divide(2,3);
//  //c3->cd(1);
//  //hprof2d_peakhigh->GetXaxis()->SetTitle("Time(ns)");
//  //hprof2d_peakhigh->GetYaxis()->SetTitle("Events");
//  //hprof2d_peakhigh->Draw("colz");
//  //c3->cd(2);
//  //hprof2d_vpeakhigh->GetXaxis()->SetTitle("Time(us)");
//  //hprof2d_vpeakhigh->GetYaxis()->SetTitle("Events");
//  //hprof2d_vpeakhigh->Draw("colz");
//  //c3->cd(3);
//  //hprof2d_peaksum1->Draw("colz");
//  ////peakhigh_h1->Draw();
//  //c3->cd(4);
//  //hprof2d_vpeaksum1->Draw("colz");
//  ////vpeakhigh_h1->GetXaxis()->SetTitle("Peak high(adc)");
//  ////vpeakhigh_h1->GetYaxis()->SetTitle("Counts");
//  ////vpeakhigh_h1->Draw();
//  //c3->cd(5);
//  //hprof2d_vpeakhightest->Draw("colz");
//  //c3->cd(6);
//  //hprof2d_vpeaksum2->Draw("colz");
//  
//  //
//  // profile peak high
//  //
//  c1->cd();
//  c1->SetGridx();
//  c1->SetGridy();
//  hprof2d_vpeakhigh_coin_ms->SetStats(kFALSE);
//  hprof2d_vpeakhigh_coin_ms->GetXaxis()->SetTitle("Time(ms)");
//  hprof2d_vpeakhigh_coin_ms->GetYaxis()->SetTitle("Events");
//  hprof2d_vpeakhigh_coin_ms->Draw("colz");
//  //hprof2d_vpeakhigh_coin_ms->Draw("contz");
//  c2->cd();
//  c2->SetGridx();
//  c2->SetGridy();
//  hprof2d_vpeakhigh_coin_160ms->SetStats(kFALSE);
//  hprof2d_vpeakhigh_coin_160ms->GetXaxis()->SetTitle("Time(ms)");
//  hprof2d_vpeakhigh_coin_160ms->GetYaxis()->SetTitle("Events");
//  hprof2d_vpeakhigh_coin_160ms->Draw("colz");
//  c3_1->cd();
//  c3_1->SetGridx();
//  c3_1->SetGridy();
//  hprof2d_vpeakhigh_coin_us_batch1->SetStats(kFALSE);
//  hprof2d_vpeakhigh_coin_us_batch1->GetXaxis()->SetTitle("Time(us)");
//  hprof2d_vpeakhigh_coin_us_batch1->GetYaxis()->SetTitle("Events");
//  hprof2d_vpeakhigh_coin_us_batch1->Draw("colz");
//  c3_2->cd();
//  c3_2->SetGridx();
//  c3_2->SetGridy();
//  hprof2d_vpeakhigh_coin_us_batch2->SetStats(kFALSE);
//  hprof2d_vpeakhigh_coin_us_batch2->GetXaxis()->SetTitle("Time(us)");
//  hprof2d_vpeakhigh_coin_us_batch2->GetYaxis()->SetTitle("Events");
//  hprof2d_vpeakhigh_coin_us_batch2->Draw("colz");
//  c4_1->cd();
//  c4_1->SetGridx();
//  c4_1->SetGridy();
//  hprof2d_vpeakhigh_coin_138000_142000_ns->SetStats(kFALSE);
//  hprof2d_vpeakhigh_coin_138000_142000_ns->GetXaxis()->SetTitle("Time(ns)");
//  hprof2d_vpeakhigh_coin_138000_142000_ns->GetYaxis()->SetTitle("Events");
//  hprof2d_vpeakhigh_coin_138000_142000_ns->Draw("colz");
//  //hprof2d_vpeakhigh_coin_138000_142000_ns->Draw("cont1z");
//  c4_2->cd();
//  c4_2->SetGridx();
//  c4_2->SetGridy();
//  hprof2d_vpeakhigh_coin_393000_397000_ns->SetStats(kFALSE);
//  hprof2d_vpeakhigh_coin_393000_397000_ns->GetXaxis()->SetTitle("Time(ns)");
//  hprof2d_vpeakhigh_coin_393000_397000_ns->GetYaxis()->SetTitle("Events");
//  hprof2d_vpeakhigh_coin_393000_397000_ns->Draw("colz");
//  c4_3->cd();
//  c4_3->SetGridx();
//  c4_3->SetGridy();
//  hprof2d_vpeakhigh_coin_67532000_67538000_ns->SetStats(kFALSE);
//  hprof2d_vpeakhigh_coin_67532000_67538000_ns->GetXaxis()->SetTitle("Time(ns)");
//  hprof2d_vpeakhigh_coin_67532000_67538000_ns->GetYaxis()->SetTitle("Events");
//  hprof2d_vpeakhigh_coin_67532000_67538000_ns->Draw("colz");
//
//  //
//  // profile peak sum
//  //
//  c1_sum->cd();
//  c1_sum->SetGridx();
//  c1_sum->SetGridy();
//  hprof2d_vpeaksum_coin_ms->SetStats(kFALSE);
//  hprof2d_vpeaksum_coin_ms->GetXaxis()->SetTitle("Time(ms)");
//  hprof2d_vpeaksum_coin_ms->GetYaxis()->SetTitle("Events");
//  hprof2d_vpeaksum_coin_ms->Draw("colz");
//  c2_sum->cd();
//  c2_sum->SetGridx();
//  c2_sum->SetGridy();
//  hprof2d_vpeaksum_coin_160ms->SetStats(kFALSE);
//  hprof2d_vpeaksum_coin_160ms->GetXaxis()->SetTitle("Time(ms)");
//  hprof2d_vpeaksum_coin_160ms->GetYaxis()->SetTitle("Events");
//  hprof2d_vpeaksum_coin_160ms->Draw("colz");
//  c3_1_sum->cd();
//  c3_1_sum->SetGridx();
//  c3_1_sum->SetGridy();
//  hprof2d_vpeaksum_coin_us_batch1->SetStats(kFALSE);
//  hprof2d_vpeaksum_coin_us_batch1->GetXaxis()->SetTitle("Time(us)");
//  hprof2d_vpeaksum_coin_us_batch1->GetYaxis()->SetTitle("Events");
//  hprof2d_vpeaksum_coin_us_batch1->Draw("colz");
//  c3_2_sum->cd();
//  c3_2_sum->SetGridx();
//  c3_2_sum->SetGridy();
//  hprof2d_vpeaksum_coin_us_batch2->SetStats(kFALSE);
//  hprof2d_vpeaksum_coin_us_batch2->GetXaxis()->SetTitle("Time(us)");
//  hprof2d_vpeaksum_coin_us_batch2->GetYaxis()->SetTitle("Events");
//  hprof2d_vpeaksum_coin_us_batch2->Draw("colz");
//
//  c3_3_sum->cd();
//  c3_3_sum->SetGridx();
//  c3_3_sum->SetGridy();
//  hprof2d_vpeaksum_coin_us_batch3->SetStats(kFALSE);
//  hprof2d_vpeaksum_coin_us_batch3->GetXaxis()->SetTitle("Time(us)");
//  hprof2d_vpeaksum_coin_us_batch3->GetYaxis()->SetTitle("Events");
//  hprof2d_vpeaksum_coin_us_batch3->Draw("colz");
//
//  c3_4_sum->cd();
//  c3_4_sum->SetGridx();
//  c3_4_sum->SetGridy();
//  hprof2d_vpeaksum_coin_us_batch4->SetStats(kFALSE);
//  hprof2d_vpeaksum_coin_us_batch4->GetXaxis()->SetTitle("Time(us)");
//  hprof2d_vpeaksum_coin_us_batch4->GetYaxis()->SetTitle("Events");
//  hprof2d_vpeaksum_coin_us_batch4->Draw("colz");
//
//  c4_1_sum->cd();
//  c4_1_sum->SetGridx();
//  c4_1_sum->SetGridy();
//  hprof2d_vpeaksum_coin_138000_142000_ns->SetStats(kFALSE);
//  hprof2d_vpeaksum_coin_138000_142000_ns->GetXaxis()->SetTitle("Time(ns)");
//  hprof2d_vpeaksum_coin_138000_142000_ns->GetYaxis()->SetTitle("Events");
//  hprof2d_vpeaksum_coin_138000_142000_ns->Draw("colz");
//  c4_2_sum->cd();
//  c4_2_sum->SetGridx();
//  c4_2_sum->SetGridy();
//  hprof2d_vpeaksum_coin_67532000_67538000_ns->SetStats(kFALSE);
//  hprof2d_vpeaksum_coin_67532000_67538000_ns->GetXaxis()->SetTitle("Time(ns)");
//  hprof2d_vpeaksum_coin_67532000_67538000_ns->GetYaxis()->SetTitle("Events");
//  hprof2d_vpeaksum_coin_67532000_67538000_ns->Draw("colz");
//
//  c_npeakheigh->cd();
//  c_npeakheigh->SetGridx();
//  c_npeakheigh->SetGridy();
//  npeakheigh->GetXaxis()->SetTitle("number of peak");
//  npeakheigh->Draw();
//
//  c_npeaksum->cd();
//  c_npeaksum->SetGridx();
//  c_npeaksum->SetGridy();
//  npeaksum->GetXaxis()->SetTitle("number of sum");
//  npeaksum->Draw();
//  c_ndelta_peak_sum->cd();
//  c_ndelta_peak_sum->SetGridx();
//  c_ndelta_peak_sum->SetGridy();
//  ndelta_peak_sum->GetXaxis()->SetTitle("delta");
//  ndelta_peak_sum->Draw();
//
//  c_n_peak_sum->cd();
//  c_n_peak_sum->SetGridx();
//  c_n_peak_sum->SetGridy();
//  peak2f_high_sum->GetXaxis()->SetTitle("No. of peak heigh");
//  peak2f_high_sum->GetYaxis()->SetTitle("No. of peak sum");
//  peak2f_high_sum->Draw("cont3z");
//
//  c_ratio_peak_sum->cd();
//  c_ratio_peak_sum->SetGridx();
//  c_ratio_peak_sum->SetGridy();
//  peakh1_high_sum->GetXaxis()->SetTitle("No. of peak heigh / No. of peak sum");
//  peakh1_high_sum->Draw();
//  //
//  // peak height
//  //
//  c_bg_height->cd();
//  c_bg_height->SetGridx();
//  c_bg_height->SetGridy();
//  sig_height->GetXaxis()->SetTitle("peak height");
//  //bg_height->GetXaxis()->SetTitle("peak height");
//  sig_height->Draw();
//  bg_height->SetLineColor(kRed);
//  bg_height->Draw("same");
//
//  c_bg_sum->cd();
//  c_bg_sum->SetGridx();
//  c_bg_sum->SetGridy();
//  bg_sum->GetXaxis()->SetTitle("peak sum");
//  bg_sum->Draw();
//
//  // sum tail / total vs peak high
//  c_sum_tail_peak_high ->cd();
//  sum_tail_peak_high -> Draw("colz");
//
//  c_bg_sum_tail_peak_high ->cd();
//  bg_sum_tail_peak_high -> Draw("colz");
//
//  c_sum_tail_total ->cd();
//  sum_tail_total -> Draw("colz");
//
//  c_sum_ratio_tail_total ->cd();
//  sum_ratio_tail_total -> Draw("colz");
//
//  //c5->cd();
//  //c5->Divide(2,2);
//  //c5->cd(1);
//  //c5->SetGridx();
//  //c5->SetGridy();
//  ////hprof2d_vpeakhigh_coin->SetStats(kFALSE);
//  //hprof2d_vpeakhigh_ch3->GetXaxis()->SetTitle("Time(us)");
//  //hprof2d_vpeakhigh_ch3->GetYaxis()->SetTitle("Events");
//  //hprof2d_vpeakhigh_ch3->Draw("colz");
//  //c5->cd(2);
//  //c5->SetGridx();
//  //c5->SetGridy();
//  ////hprof2d_vpeakhigh_coin->SetStats(kFALSE);
//  //hprof2d_vpeakhigh_ch2->GetXaxis()->SetTitle("Time(us)");
//  //hprof2d_vpeakhigh_ch2->GetYaxis()->SetTitle("Events");
//  //hprof2d_vpeakhigh_ch2->Draw("colz");
//  //c5->cd(3);
//  //c5->SetGridx();
//  //c5->SetGridy();
//  ////hprof2d_vpeakhigh_coin->SetStats(kFALSE);
//  //hprof2d_vpeakhigh_ch1->GetXaxis()->SetTitle("Time(us)");
//  //hprof2d_vpeakhigh_ch1->GetYaxis()->SetTitle("Events");
//  //hprof2d_vpeakhigh_ch1->Draw("colz");
//  //c5->cd(4);
//  //c5->SetGridx();
//  //c5->SetGridy();
//  ////hprof2d_vpeakhigh_coin->SetStats(kFALSE);
//  //hprof2d_vpeakhigh_ch0->GetXaxis()->SetTitle("Time(us)");
//  //hprof2d_vpeakhigh_ch0->GetYaxis()->SetTitle("Events");
//  //hprof2d_vpeakhigh_ch0->Draw("colz");
//  //c6->cd();
//  //c6->SetGridx();
//  //c6->SetGridy();
//  //hprof2d_vpeakhigh_coin_55000_58000->SetStats(kFALSE);
//  //hprof2d_vpeakhigh_coin_55000_58000->GetXaxis()->SetTitle("Time(ns)");
//  //hprof2d_vpeakhigh_coin_55000_58000->GetYaxis()->SetTitle("Events");
//  //hprof2d_vpeakhigh_coin_55000_58000->Draw("colz");
//  //c7->cd();
//  //c7->SetGridx();
//  //c7->SetGridy();
//  //hprof2d_vpeakhigh_coin_666000_670000->SetStats(kFALSE);
//  //hprof2d_vpeakhigh_coin_666000_670000->GetXaxis()->SetTitle("Time(ns)");
//  //hprof2d_vpeakhigh_coin_666000_670000->GetYaxis()->SetTitle("Events");
//  //hprof2d_vpeakhigh_coin_666000_670000->Draw("colz");
//  //c8->cd();
//  //c8->SetGridx();
//  //c8->SetGridy();
//  //hprof2d_vpeakhigh_coin_899000_902000->SetStats(kFALSE);
//  //hprof2d_vpeakhigh_coin_899000_902000->GetXaxis()->SetTitle("Time(ns)");
//  //hprof2d_vpeakhigh_coin_899000_902000->GetYaxis()->SetTitle("Events");
//  //hprof2d_vpeakhigh_coin_899000_902000->Draw("colz");
//  ////hprof2d_vpeaksum_coin->GetYaxis()->SetTitle("Events");
//  ////hprof2d_vpeaksum_coin->Draw("colz");
//  /////c7->Divide(1,2);
//  ////c7->cd();
//  ////c7->SetGridx();
//  ////c7->SetGridy();
//  ////vpeakhigh_pmt3->SetXTitle("Peakhigh(adc)");
//  ////vpeakhigh_pmt3->Draw();
//  ////c8->cd();
//  ////c8->SetGridx();
//  ////c8->SetGridy();
//  ////vpeakhightime_pmt3->SetXTitle("Time(us)");
//  ////vpeakhightime_pmt3->Draw();
//  //c9->cd();
//  //c9->SetGridx();
//  //c9->SetGridy();
//  //h1->SetXTitle("Peakhigh(adc)");
//  //h1->Draw();
//  //c10->cd();
//  //c10->SetGridx();
//  //c10->SetGridy();
//  //peakhigh_coin->SetXTitle("Peakhigh(adc)");
//  //peakhigh_coin->Draw();
//  //hprof2d_vpeakhigh_coin_short->SetStats(kFALSE);
//  //hprof2d_vpeakhigh_coin_short->SetXTitle("Time(ns)");
//  //hprof2d_vpeakhigh_coin_short->SetYTitle("Events");
//  //hprof2d_vpeakhigh_coin_short->Draw("colz");
//  //c11->cd();
//  //c11->SetGridx();
//  //c11->SetGridy();
//  ////hprof2d_vpeakhigh_coin_short_v2->SetColor(60);
//  ////gPad->SetFrameFillColor(60);
//  //hprof2d_vpeakhigh_coin_short_v2->SetStats(kFALSE);
//  //hprof2d_vpeakhigh_coin_short_v2->SetXTitle("Time(ns)");
//  //hprof2d_vpeakhigh_coin_short_v2->SetYTitle("Events");
//  //hprof2d_vpeakhigh_coin_short_v2->Draw("colz");
//  ////hprof2d_vpeakhigh->Draw("colz");
//
//  ////tr->Draw("ch0.vpeakhigh:ch0.vpeaksum");
  
}
