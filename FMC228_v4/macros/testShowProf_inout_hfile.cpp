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



void testShowProf_inout_hfile(char* rootfile,char* rootfilehist, int nevn)
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
  //TTree *tr = (TTree*)fcoinfitfunction->Get("cointreefitfunction");
  TTree *tr = (TTree*)fintimeouttime->Get("treeintimeouttime");

  //CoinEventFitFunction *coineventfitfunction = new CoinEventFitFunction();
  InTimeOutTimeEvent *intimeouttimeevent = new InTimeOutTimeEvent();
  //



  Int_t vInTimepeakhigh[10000][10000];
  Int_t vInTimepeakhigh_time_ms[10000][10000];
  Int_t vInTimepeakhigh_time_us[10000][10000];
  Int_t vInTimepeakhigh_time_ns[10000][10000];

  Int_t vInTimepeaksum[10000][10000];
  Int_t vInTimepeaksum0[10000][10000];
  Int_t vInTimepeaksum_tail[10000][10000];
  Int_t vInTimepeaksum_peak[10000][10000];
  Int_t vInTimepeaksum_time0[10000][10000];
  Int_t vInTimepeaksum_time1[10000][10000];
  Int_t vInTimepeaksum_time2[10000][10000];
  Int_t vInTimepeaksum_time1_ms[10000][10000];
  Int_t vInTimepeaksum_time1_us[10000][10000];
  Int_t vInTimepeaksum_time1_ns[10000][10000];

  Double_t vInTimepeaksum_ratio[10000][10000];


  Int_t vOutTimepeakhigh[10000][10000];
  Int_t vOutTimepeakhigh_time_ms[10000][10000];
  Int_t vOutTimepeakhigh_time_us[10000][10000];
  Int_t vOutTimepeakhigh_time_ns[10000][10000];

  Int_t vOutTimepeaksum[10000][10000];
  Int_t vOutTimepeaksum0[10000][10000];
  Int_t vOutTimepeaksum_tail[10000][10000];
  Int_t vOutTimepeaksum_peak[10000][10000];
  Int_t vOutTimepeaksum_time0[10000][10000];
  Int_t vOutTimepeaksum_time1[10000][10000];
  Int_t vOutTimepeaksum_time2[10000][10000];
  Int_t vOutTimepeaksum_time1_ms[10000][10000];
  Int_t vOutTimepeaksum_time1_us[10000][10000];
  Int_t vOutTimepeaksum_time1_ns[10000][10000];

  Double_t vOutTimepeaksum_ratio[10000][10000];


  Int_t nInTimepeak[10000];
  Int_t nOutTimepeak[10000];

  Int_t nInTimesum[10000];
  Int_t nOutTimesum[10000];


  int nevents = tr->GetEntries();
  printf("nevents = %d \n", nevents);
  hprof2d_intime_vpeakhigh_coin_ms = new TProfile2D("hprof2d_intime_vpeakhigh_coin_ms","vprofile 2D peakhigh coin ms  ",600,-50,550,10000,0,10000,-2500,0);
  hprof2d_outtime_vpeakhigh_coin_ms = new TProfile2D("hprof2d_outtime_vpeakhigh_coin_ms","vprofile 2D peakhigh coin ms  ",600,-50,550,10000,0,10000,-2500,0);

  hprof2d_intime_vpeakhigh_coin_us_batch1 = new TProfile2D("hprof2d_intime_vpeakhigh_coin_us_batch1","vprofile 2D in-time peakhigh coin us batch1  ",3000,0,3000,10000,0,10000,-2500,0);
  hprof2d_intime_vpeakhigh_coin_us_batch2 = new TProfile2D("hprof2d_intime_vpeakhigh_coin_us_batch2","vprofile 2D in-time peakhigh coin us batch2 ",3000,66000,69000,10000,0,10000,-2500,0);

  hprof2d_outtime_vpeakhigh_coin_us_batch1 = new TProfile2D("hprof2d_outtime_vpeakhigh_coin_us_batch1","vprofile 2D out-time peakhigh coin us batch1  ",3000,0,3000,10000,0,10000,-2500,0);


  hprof2d_intime_vpeaksum_coin_ms = new TProfile2D("hprof2d_intime_vpeaksum_coin_ms","vprofile 2D in-time peaksum coin ms  ",600,-50,550,10000,0,10000,-30000,0);
  hprof2d_outtime_vpeaksum_coin_ms = new TProfile2D("hprof2d_outtime_vpeaksumcoin_ms","vprofile 2D out-time peaksum coin ms  ",600,-50,550,10000,0,10000,-30000,0);
  hprof2d_intime_vpeaksum_coin_us_batch1 = new TProfile2D("hprof2d_intime_vpeaksum_coin_us_batch1","vprofile 2D in-time peaksum coin us batch1  ",3000,0,3000,10000,0,10000,-30000,0);
  hprof2d_intime_vpeaksum_coin_us_batch2 = new TProfile2D("hprof2d_intime_vpeaksum_coin_us_batch2","vprofile 2D in-time peaksum coin us batch2  ",3000,66000,69000,10000,0,10000,-30000,0);
  //hprof2d_intime_vpeaksum_coin_us_batch3 = new TProfile2D("hprof2d_intime_vpeaksum_coin_us_batch3","vprofile 2D in-time peaksum coin us batch3  ",3000,266700,269700,5000,0,5000,-30000,0);
  //hprof2d_intime_vpeaksum_coin_us_batch4 = new TProfile2D("hprof2d_intime_vpeaksum_coin_us_batch4","vprofile 2D in-time peaksum coin us batch4  ",3000,333330,336330,5000,0,5000,-30000,0);

  hprof2d_outtime_vpeaksum_coin_us_batch1 = new TProfile2D("hprof2d_outtime_vpeaksum_coin_us_batch1","vprofile 2D out-time peaksum coin us batch1  ",3000,0,3000,10000,0,10000,-30000,0);



  intime_sum_tail_peak_high = new TH2F("intime_sum_tail_peak_high"," in-time (sum tail / sum total) vs peak heigh",1000,-2000,0,1500,0,1.5);
  outtime_sum_tail_peak_high = new TH2F("outtime_sum_tail_peak_high"," out-time (sum tail / sum total) vs peak heigh",1000,-2000,0,1500,0,1.5);
  
  h1_npeak_intime = new TH1F("h1_npeak_intime","No. of peak per pulse in-time", 20,-10,10);
  h1_npeak_outtime = new TH1F("h1_npeak_outtime","No. of peak per pulse out-time", 20,-10,10);

  h1_peaksum_intime = new TH1F("h1_peaksum_intime","Histogram area in-time", 1000,-150000,0);
  h1_peaksum_outtime = new TH1F("h1_peaksum_outtime","Histogram area out-time", 1000,-150000,0);

 
  printf("come here 0 \n");
  //tr->SetBranchAddress("ch3.",&coineventfitfunction);
  tr->SetBranchAddress("inout.",&intimeouttimeevent);
  printf("come here 1 \n");
  for(int i= 0; i< nevn ;i++)
  //for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
	printf("event %d \n",i);
        tr->GetEntry(i);
        //printf("event %d \n",i);
        //printf("ch3  \n");
        nInTimepeak[i] = intimeouttimeevent->GetVInTimePeakHighSize();
        nInTimesum[i] = intimeouttimeevent->GetVInTimePeakSumSize();
        nOutTimepeak[i] = intimeouttimeevent->GetVOutTimePeakHighSize();
        nOutTimesum[i] = intimeouttimeevent->GetVOutTimePeakSumSize();
        printf("nInTimepeak = %d\t",nInTimepeak[i]);
        printf("nOutTimepeak = %d\t",nOutTimepeak[i]);
        printf("nInTimesum = %d\t",nInTimesum[i]);
        printf("nOutTimesum = %d\n",nOutTimesum[i]);
        for(int j =0; j< nInTimepeak[i] ;j++)
        {	   
           vInTimepeakhigh[i][j]=intimeouttimeevent->GetVInTimePeakHigh()[j];
           vInTimepeakhigh_time_ms[i][j]=intimeouttimeevent->GetVInTimePeakHighTime()[j]*0.000001; //convert to ms
           vInTimepeakhigh_time_us[i][j]=intimeouttimeevent->GetVInTimePeakHighTime()[j]*0.001; //convert to us
           vInTimepeakhigh_time_ns[i][j]=intimeouttimeevent->GetVInTimePeakHighTime()[j]; //ns

           hprof2d_intime_vpeakhigh_coin_ms -> Fill(vInTimepeakhigh_time_ms[i][j],i,vInTimepeakhigh[i][j],1);
           hprof2d_intime_vpeakhigh_coin_us_batch1 -> Fill(vInTimepeakhigh_time_us[i][j],i,vInTimepeakhigh[i][j],1);
           hprof2d_intime_vpeakhigh_coin_us_batch2 -> Fill(vInTimepeakhigh_time_us[i][j],i,vInTimepeakhigh[i][j],1);

        }

        for(int j =0; j< nOutTimepeak[i] ;j++)
        {	   
           vOutTimepeakhigh[i][j]=intimeouttimeevent->GetVOutTimePeakHigh()[j];
           vOutTimepeakhigh_time_ms[i][j]=intimeouttimeevent->GetVOutTimePeakHighTime()[j]*0.000001; //convert to ms
           vOutTimepeakhigh_time_us[i][j]=intimeouttimeevent->GetVOutTimePeakHighTime()[j]*0.001; //convert to us
           vOutTimepeakhigh_time_ns[i][j]=intimeouttimeevent->GetVOutTimePeakHighTime()[j]; //ns

           hprof2d_outtime_vpeakhigh_coin_ms -> Fill(vOutTimepeakhigh_time_ms[i][j],i,vOutTimepeakhigh[i][j],1);
           hprof2d_outtime_vpeakhigh_coin_us_batch1 -> Fill(vOutTimepeakhigh_time_us[i][j],i,vOutTimepeakhigh[i][j],1);
        }

        for(int k =0; k< nInTimesum[i] ;k++)
        {	   
           vInTimepeaksum_peak[i][k]=intimeouttimeevent->GetVInTimePeakSum0_peak()[k];
           vInTimepeaksum0[i][k]=intimeouttimeevent->GetVInTimePeakSum0()[k];
           vInTimepeaksum[i][k]=intimeouttimeevent->GetVInTimePeakSum()[k];
           vInTimepeaksum_time0[i][k]=intimeouttimeevent->GetVInTimePeakSumTime0()[k];
           vInTimepeaksum_time1[i][k]=intimeouttimeevent->GetVInTimePeakSumTime1()[k];
           vInTimepeaksum_time2[i][k]=intimeouttimeevent->GetVInTimePeakSumTime2()[k];

           vInTimepeaksum_time1_ms[i][k]=intimeouttimeevent->GetVInTimePeakSumTime1()[k]*0.000001; //convert to ms
           vInTimepeaksum_time1_us[i][k]=intimeouttimeevent->GetVInTimePeakSumTime1()[k]*0.001; //convert to us
           vInTimepeaksum_time1_ns[i][k]=intimeouttimeevent->GetVInTimePeakSumTime1()[k]; //ns

           vInTimepeaksum_tail[i][k]=vInTimepeaksum[i][k] - vInTimepeaksum0[i][k]; 
           vInTimepeaksum_ratio[i][k]=(vInTimepeaksum_tail[i][k]*1.0)/(vInTimepeaksum[i][k]*1.0); 
           
           intime_sum_tail_peak_high->Fill(vInTimepeaksum_peak[i][k],vInTimepeaksum_ratio[i][k]);

           hprof2d_intime_vpeaksum_coin_ms -> Fill(vInTimepeaksum_time1_ms[i][k],i,vInTimepeaksum[i][k],1);
           hprof2d_intime_vpeaksum_coin_us_batch1 -> Fill(vInTimepeaksum_time1_us[i][k],i,vInTimepeaksum[i][k],1);
           hprof2d_intime_vpeaksum_coin_us_batch2 -> Fill(vInTimepeaksum_time1_us[i][k],i,vInTimepeaksum[i][k],1);
           //hprof2d_intime_vpeaksum_coin_us_batch3 -> Fill(vInTimepeaksum_time1_us[i][k],i,vInTimepeaksum[i][k],1);
           //hprof2d_intime_vpeaksum_coin_us_batch4 -> Fill(vInTimepeaksum_time1_us[i][k],i,vInTimepeaksum[i][k],1);
           h1_peaksum_intime ->Fill(vInTimepeaksum[i][k]);
          int nof_peak_in =0;
           for(int npeak_in =0; npeak_in < nInTimepeak[i]; npeak_in++)
            { 
              if(vInTimepeakhigh_time_ns[i][npeak_in] >= vInTimepeaksum_time1[i][k] && vInTimepeakhigh_time_ns[i][npeak_in] <= vInTimepeaksum_time2[i][k] )
                {
                    nof_peak_in = nof_peak_in +1;
                }
            }
           h1_npeak_intime -> Fill(nof_peak_in);

        }

        for(int k =0; k< nOutTimesum[i] ;k++)
        {	   
           vOutTimepeaksum_peak[i][k]=intimeouttimeevent->GetVOutTimePeakSum0_peak()[k];
           vOutTimepeaksum0[i][k]=intimeouttimeevent->GetVOutTimePeakSum0()[k];
           vOutTimepeaksum[i][k]=intimeouttimeevent->GetVOutTimePeakSum()[k];
           vOutTimepeaksum_time0[i][k]=intimeouttimeevent->GetVOutTimePeakSumTime0()[k];
           vOutTimepeaksum_time1[i][k]=intimeouttimeevent->GetVOutTimePeakSumTime1()[k];
           vOutTimepeaksum_time2[i][k]=intimeouttimeevent->GetVOutTimePeakSumTime2()[k];

           vOutTimepeaksum_time1_ms[i][k]=intimeouttimeevent->GetVOutTimePeakSumTime1()[k]*0.000001; //convert to ms
           vOutTimepeaksum_time1_us[i][k]=intimeouttimeevent->GetVOutTimePeakSumTime1()[k]*0.001; //convert to us
           vOutTimepeaksum_time1_ns[i][k]=intimeouttimeevent->GetVOutTimePeakSumTime1()[k]; //ns

           vOutTimepeaksum_tail[i][k]=vOutTimepeaksum[i][k] - vOutTimepeaksum0[i][k]; 
           vOutTimepeaksum_ratio[i][k]=(vOutTimepeaksum_tail[i][k]*1.0)/(vOutTimepeaksum[i][k]*1.0);
           printf("vOutTimepeaksum_ratio %lf \n",vOutTimepeaksum_ratio[i][k]);

           outtime_sum_tail_peak_high->Fill(vOutTimepeaksum_peak[i][k],vOutTimepeaksum_ratio[i][k]);
           hprof2d_outtime_vpeaksum_coin_ms -> Fill(vOutTimepeaksum_time1_ms[i][k],i,vOutTimepeaksum[i][k],1);
           hprof2d_outtime_vpeaksum_coin_us_batch1 -> Fill(vOutTimepeaksum_time1_us[i][k],i,vOutTimepeaksum[i][k],1);
           h1_peaksum_outtime ->Fill(vOutTimepeaksum[i][k]);
          int nof_peak_out =0;
           for(int npeak_out =0; npeak_out < nOutTimepeak[i]; npeak_out++)
            { 
              if(vOutTimepeakhigh_time_ns[i][npeak_out] >= vOutTimepeaksum_time1[i][k] && vOutTimepeakhigh_time_ns[i][npeak_out] <= vOutTimepeaksum_time2[i][k] )
                {
                    nof_peak_out = nof_peak_out +1;
                }
            }
           h1_npeak_outtime -> Fill(nof_peak_out);
        }

  }
        
        
  TAxis *axis_intime = h1_peaksum_intime->GetXaxis();
  int bmin_intime = axis_intime -> FindBin(-150000); 
  int bmax_intime = axis_intime -> FindBin(0);
  double integral_intime = h1_peaksum_intime->Integral(bmin_intime,bmax_intime); 
  printf("integral_intime = %d \n", integral_intime);

  TAxis *axis_outtime = h1_peaksum_outtime->GetXaxis();
  int bmin_outtime = axis_outtime -> FindBin(-150000); 
  int bmax_outtime = axis_outtime -> FindBin(0);
  double integral_outtime = h1_peaksum_outtime->Integral(bmin_intime,bmax_intime); 
  printf("integral_outtime = %d \n", integral_outtime);


   TCanvas *c_hprof2d_intime_vpeakhigh_coin_ms = new TCanvas("c_hprof2d_intime_vpeakhigh_coin_ms","profile in-time peak high",200,10,700,500);
   TCanvas *c_hprof2d_outtime_vpeakhigh_coin_ms = new TCanvas("c_hprof2d_outtime_vpeakhigh_coin_ms","profile in-time peak high",200,10,700,500);

   TCanvas *c_hprof2d_intime_vpeaksum_coin_ms = new TCanvas("c_hprof2d_intime_vpeaksum_coin_ms","profile in-time peak sum",200,10,700,500);
   TCanvas *c_hprof2d_outtime_vpeaksum_coin_ms = new TCanvas("c_hprof2d_outtime_vpeaksum_coin_ms","profile in-time peak sum",200,10,700,500);

   TCanvas *c_hprof2d_intime_vpeakhigh_coin_us_batch1 = new TCanvas("c_hprof2d_intime_vpeakhigh_coin_us_batch1","profile in-time peak high batch1",200,10,700,500);
   TCanvas *c_hprof2d_intime_vpeakhigh_coin_us_batch2 = new TCanvas("c_hprof2d_intime_vpeakhigh_coin_us_batch2","profile in-time peak high batch2",200,10,700,500);

   TCanvas *c_hprof2d_outtime_vpeakhigh_coin_us_batch1 = new TCanvas("c_hprof2d_outtime_vpeakhigh_coin_us_batch1","profile out-time peak high batch1",200,10,700,500);

   TCanvas *c_hprof2d_intime_vpeaksum_coin_us_batch1 = new TCanvas("c_hprof2d_intime_vpeaksum_coin_us_batch1","profile in-time peak sum batch1",200,10,700,500);
   TCanvas *c_hprof2d_intime_vpeaksum_coin_us_batch2 = new TCanvas("c_hprof2d_intime_vpeaksum_coin_us_batch2","profile in-time peak sum batch2",200,10,700,500);

   TCanvas *c_hprof2d_outtime_vpeaksum_coin_us_batch1 = new TCanvas("c_hprof2d_outtime_vpeaksum_coin_us_batch1","profile out-time peak sum batch1",200,10,700,500);

   //TCanvas *c_hprof2d_intime_vpeaksum_coin_us_batch3 = new TCanvas("c_hprof2d_intime_vpeaksum_coin_us_batch3","profile in-time peak sum",200,10,700,500);
   //TCanvas *c_hprof2d_intime_vpeaksum_coin_us_batch4 = new TCanvas("c_hprof2d_intime_vpeaksum_coin_us_batch4","profile in-time peak sum",200,10,700,500);

   TCanvas *c_intime_sum_tail_peak_high = new TCanvas("c_intime_sum_tail_peak_high"," in-time (tail / total) vs peak high",200,10,700,500);
   TCanvas *c_outtime_sum_tail_peak_high = new TCanvas("c_outtime_sum_tail_peak_high","out-time (tail / total) vs peak high",200,10,700,500);

   TCanvas *c_h1_npeak_intime = new TCanvas("c_h1_npeak_intime","No. of peak per pulse in-time",200,10,700,500);
   TCanvas *c_h1_npeak_outtime = new TCanvas("c_h1_npeak_outtime","No. of peak per pulse out-time",200,10,700,500);

   TCanvas *c_h1_peaksum = new TCanvas("c_h1_peaksum","Histogram peak area",200,10,700,500);


  c_hprof2d_intime_vpeakhigh_coin_ms -> cd();
  hprof2d_intime_vpeakhigh_coin_ms -> Draw("colz");

  c_hprof2d_outtime_vpeakhigh_coin_ms -> cd();
  hprof2d_outtime_vpeakhigh_coin_ms -> Draw("colz");

  c_hprof2d_intime_vpeaksum_coin_ms -> cd();
  hprof2d_intime_vpeaksum_coin_ms -> Draw("colz");

  c_hprof2d_outtime_vpeaksum_coin_ms -> cd();
  hprof2d_outtime_vpeaksum_coin_ms -> Draw("colz");

  c_hprof2d_intime_vpeakhigh_coin_us_batch1 -> cd();
  hprof2d_intime_vpeakhigh_coin_us_batch1 -> Draw("colz");

  c_hprof2d_intime_vpeakhigh_coin_us_batch2 -> cd();
  hprof2d_intime_vpeakhigh_coin_us_batch2 -> Draw("colz");

  c_hprof2d_outtime_vpeakhigh_coin_us_batch1 -> cd();
  hprof2d_outtime_vpeakhigh_coin_us_batch1 -> Draw("colz");

  c_hprof2d_intime_vpeaksum_coin_us_batch1 -> cd();
  hprof2d_intime_vpeaksum_coin_us_batch1 -> Draw("colz");

  c_hprof2d_intime_vpeaksum_coin_us_batch2 -> cd();
  hprof2d_intime_vpeaksum_coin_us_batch2 -> Draw("colz");

  c_hprof2d_outtime_vpeaksum_coin_us_batch1 -> cd();
  hprof2d_outtime_vpeaksum_coin_us_batch1 -> Draw("colz");

  //c_hprof2d_intime_vpeaksum_coin_us_batch3 -> cd();
  //hprof2d_intime_vpeaksum_coin_us_batch3 -> Draw("colz");

  //c_hprof2d_intime_vpeaksum_coin_us_batch4 -> cd();
  //hprof2d_intime_vpeaksum_coin_us_batch4 -> Draw("colz");

  c_intime_sum_tail_peak_high ->cd();
  intime_sum_tail_peak_high -> Draw("colz");

  c_outtime_sum_tail_peak_high ->cd();
  outtime_sum_tail_peak_high -> Draw();

  c_h1_npeak_intime ->cd();
  h1_npeak_intime -> Draw();

  c_h1_npeak_outtime ->cd();
  h1_npeak_outtime -> Draw();

  c_h1_peaksum ->cd();
  h1_peaksum_intime -> Draw();
  h1_peaksum_outtime ->SetLineColor(kRed);
  h1_peaksum_outtime -> Draw("same");

  TFile *fhis = new TFile(rootfilehist,"RECREATE");
  h1_peaksum_outtime -> Write();
  outtime_sum_tail_peak_high->Write();
  h1_peaksum_intime -> Write();
  intime_sum_tail_peak_high->Write();
  fhis->Close();
  
}
