//
// take raw data and plot pulse shape discriminator
//


#include <TTree.h>
#include <TGraph.h>
#include <TFile.h>
#include <TSystem.h>
#include <TCanvas.h>
#include <TProfile2D.h>
#include <TStyle.h>



void testShowProf_rawevent_psd_time(char* rootfile, int nevn)
{

  using std::count;
  using std::endl;
  gStyle ->SetCanvasDefH(900);
  gStyle ->SetCanvasDefW(1500);

  const char *foldername = "nustar_present";
  const char *ext =".pdf";
  gSystem->Load("../libData.so");

  //TFile *fr = new TFile("../convertFMC228/datafmc228i_v9.root");
  //TFile *fr = new TFile("../convertFMC228/data_Nov21/acctrig_200evn_raw200ns_peakfinding600000ns.root");
  TFile *fr = new TFile(rootfile);
  //TFile *fr = new TFile("../convertFMC228/data_Nov18/data_selftrig_coin4.root");
  //TFile *fr = new TFile("../convertFMC228/data_Nov18/data_selftrig_ch0.root");
  //TFile *fr = new TFile("../convertFMC228/data_Nov18/data_exttrig.root");
  //TFile *fr = new TFile("../convertFMC228/data_Nov19_testersignal/data_test_ch0_600ns_exttrig_org_mornitor.root");
  //
  TTree *tr = (TTree*)fr->Get("rtree");

  RawEvent *revent = new RawEvent();
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


  Int_t ch_vpeakhigh[10000][10000];
  Int_t ch_vpeakhigh_time_us[10000][10000];
  Int_t ch_vpeakhigh_time_ns[10000][10000];

  Long_t ch_vpeaksum0[10000][10000];
  Int_t ch_vpeaksum0_peak[10000][10000];
  Long_t ch_vpeaksum_tail[10000][10000];
  Long_t ch_vpeaksum_peak[10000][10000];


  Int_t ch_vpeaksum[10000][10000];
  Int_t ch_vpeaksum_time0_us[10000][10000];
  UInt_t ch_vpeaksum_time0_ns[10000][10000];

  Double_t ch_vpeaksum_time1_ms[10000][10000];
  Double_t ch_vpeaksum_time1_us[10000][10000];
  UInt_t ch_vpeaksum_time1_ns[10000][10000];

  Double_t ch_vpeaksum_time2_us[10000][10000];
  UInt_t ch_vpeaksum_time2_ns[10000][10000];

  Int_t npeak_ch0[10000];
  Int_t npeak_ch1[10000];
  Int_t npeak_ch2[10000];
  Int_t npeak_ch3[10000];

  Int_t nsum_ch0[10000];
  Int_t nsum_ch1[10000];
  Int_t nsum_ch2[10000];
  Int_t nsum_ch3[10000];

  TGraph *gr[10000];
  Int_t nraw[10000];
  Int_t raw_x[10000];
  Int_t raw_y[10000];

  int nevents = tr->GetEntries();
  //tr->SetBranchAddress("ch0.",&revent);
  //printf("CH0 CH0 CH0 \n");
  //for(int i= 0; i< nevn ;i++)
  ////for(int i= 0; i< nevents ;i++)
  ////for(int i= 0; i< 10 ;i++)
  // { 
  //      tr->GetEntry(i);
  //      npeak_ch0[i] = revent->GetVPeakHighSize();
  //      nsum_ch0[i] = revent->GetVPeakSumSize();
  //      printf("event %d \t", i);
  //      printf("npeak_ch0 = %d\t",npeak_ch0[i]);
  //      printf("nsum_ch0 = %d\n",nsum_ch0[i]);
  //      for(int j =0; j< npeak_ch0[i] ;j++)
  //      {	   
  //         ch_vpeakhigh[i][0][j]=revent->GetVPeakHigh()[j];
  //         ch_vpeakhigh_time_us[i][0][j]=revent->GetVPeakHighTime()[j]*0.001; //convert to us
  //         ch_vpeakhigh_time_ns[i][0][j]=revent->GetVPeakHighTime()[j]; //ns
  //       }

  //      for(int j =0; j< nsum_ch0[i] ;j++)
  //      {
  //         ch_vpeaksum[i][0][j]=revent->GetVPeakSum()[j];
  //         ch_vpeaksum_time_us[i][0][j]=revent->GetVPeakSumTime1()[j]*0.001; //convert to us
  //         ch_vpeaksum_time_ns[i][0][j]=revent->GetVPeakSumTime1()[j]; //ns
  //      }
  //      
  // }

  //tr->SetBranchAddress("ch1.",&revent);
  //printf("CH1 CH1 CH1 \n");
  //for(int i= 0; i< nevn ;i++)
  ////for(int i= 0; i< nevents ;i++)
  ////for(int i= 0; i< 10 ;i++)
  // { 
  //      tr->GetEntry(i);
  //      npeak_ch1[i] = revent->GetVPeakHighSize();
  //      nsum_ch1[i] = revent->GetVPeakSumSize();
  //      printf("event %d \t", i);
  //      printf("npeak_ch1 = %d\t",npeak_ch1[i]);
  //      printf("nsum_ch1 = %d\n",nsum_ch1[i]);
  //      for(int j =0; j< npeak_ch1[i] ;j++)
  //      {	   
  //         ch_vpeakhigh[i][1][j]=revent->GetVPeakHigh()[j];
  //         ch_vpeakhigh_time_us[i][1][j]=revent->GetVPeakHighTime()[j]*0.001; //convert to us
  //         ch_vpeakhigh_time_ns[i][1][j]=revent->GetVPeakHighTime()[j]; //ns
  //       }

  //      for(int j =0; j< nsum_ch1[i] ;j++)
  //      {
  //         ch_vpeaksum[i][1][j]=revent->GetVPeakSum()[j];
  //         ch_vpeaksum_time_us[i][1][j]=revent->GetVPeakSumTime1()[j]*0.001; //convert to us
  //         ch_vpeaksum_time_ns[i][1][j]=revent->GetVPeakSumTime1()[j]; //ns
  //      }
  //      
  // }

  //tr->SetBranchAddress("ch2.",&revent);
  //printf("CH2 CH2 CH2 \n");
  //for(int i= 0; i< nevn ;i++)
  ////for(int i= 0; i< nevents ;i++)
  ////for(int i= 0; i< 10 ;i++)
  // { 
  //      tr->GetEntry(i);
  //      npeak_ch2[i] = revent->GetVPeakHighSize();
  //      nsum_ch2[i] = revent->GetVPeakSumSize();
  //      printf("event %d \t", i);
  //      printf("npeak_ch2 = %d\t",npeak_ch2[i]);
  //      printf("nsum_ch2 = %d\n",nsum_ch2[i]);
  //      for(int j =0; j< npeak_ch2[i] ;j++)
  //      {	   
  //         ch_vpeakhigh[i][2][j]=revent->GetVPeakHigh()[j];
  //         ch_vpeakhigh_time_us[i][2][j]=revent->GetVPeakHighTime()[j]*0.001; //convert to us
  //         ch_vpeakhigh_time_ns[i][2][j]=revent->GetVPeakHighTime()[j]; //ns
  //       }

  //      for(int j =0; j< nsum_ch2[i] ;j++)
  //      {
  //         ch_vpeaksum[i][2][j]=revent->GetVPeakSum()[j];
  //         ch_vpeaksum_time_us[i][2][j]=revent->GetVPeakSumTime1()[j]*0.001; //convert to us
  //         ch_vpeaksum_time_ns[i][2][j]=revent->GetVPeakSumTime1()[j]; //convert to us
  //      }
  //      
  // }

  hprof2d_vpeakhigh_coin = new TProfile2D("hprof2d_vpeakhigh_coin","vprofile 2D peakhigh coin  ",20000,0,20000,100,0,100,-2500,0);

  hprof2d_vpeaksum_ms = new TProfile2D("hprof2d_vpeaksum_ms","vprofile 2D peaksum ms  ",600,-50,550,5000,0,5000,-30000,0);
  hprof2d_vpeaksum_160ms = new TProfile2D("hprof2d_vpeaksum_160ms","vprofile 2D peaksum 160ms  ",210,-50,160,5000,0,5000,-30000,0);
  hprof2d_vpeaksum_us_batch1 = new TProfile2D("hprof2d_vpeaksum_us_batch1","vprofile 2D peaksum us batch 1 ",3000,0,3000,5000,0,5000,-30000,0);
  hprof2d_vpeaksum_us_batch2 = new TProfile2D("hprof2d_vpeaksum_us_batch2","vprofile 2D peaksum us batch 2 ",3000,66000,69000,5000,0,5000,-30000,0);
  hprof2d_vpeaksum_us_batch3 = new TProfile2D("hprof2d_vpeaksum_us_batch3","vprofile 2D peaksum us batch 3 ",3000,266720,269720,5000,0,5000,-30000,0);
  hprof2d_vpeaksum_us_batch4 = new TProfile2D("hprof2d_vpeaksum_us_batch4","vprofile 2D peaksum us batch 4 ",3000,333330,336330,5000,0,5000,-30000,0);
  //hprof2d_vpeakhigh_coin_v2 = new TProfile2D("hprof2d_vpeakhigh_coin_v2","vprofile 2D peakhigh coin  ",100000,0,1000000,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_55000_58000 = new TProfile2D("hprof2d_vpeakhigh_coin_55000_58000","vprofile 2D peakhigh coin  ",3000,55000,58000,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_475000_490000 = new TProfile2D("hprof2d_vpeakhigh_coin_475000_490000","vprofile 2D peakhigh coin  ",15000,475000,490000,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_666000_670000 = new TProfile2D("hprof2d_vpeakhigh_coin_666000_670000","vprofile 2D peakhigh coin  ",4000,666000,670000,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_899000_902000 = new TProfile2D("hprof2d_vpeakhigh_coin_899000_902000","vprofile 2D peakhigh coin  ",3000,899000,902000,5000,0,5000,-2500,0);

  h1_t2_t1 = new TH1F("h1_t2_t1"," histogram t2 - t1",200,-50,350);

  h2_psd = new TH2F("h2_psd","(peak tail / peak total) vs peak high",2000,-2000,2000,1000,-1,1);
  h2_psd_pedestal = new TH2F("h2_psd_pedestal","(peak tail / peak total) vs peak high",2000,-2000,0,1000,-1,2);

  h2_height_sum = new TH2F("h2_height_sum"," peak sum vs peak high",5000,-30000,0,100,-2500,0);
  h2_tail_total = new TH2F("h2_tail_total"," tail vs total ",2000,-20000,0,2000,-20000,0);
  h2_ratio_tail_total = new TH2F("h2_ratio_tail_total"," (tail/total) vs total ",2000,-20000,0,100,0,1);
  h2_ratio_t2_t1 = new TH2F("h2_ratio_t2_t1"," (tail/total) vs t2-t1 ",100,0,400,100,0,1);


  int coin0 =0;
  int coin1 =0;
  int coin2 =0;
  int sum_peak;
  int time_sum_peak;
  int pedestal_sum;
  int pedestal;

  tr->SetBranchAddress("ch1.",&revent);
  printf("CH3 CH3 CH3 \n");
  for(int i= 0; i< nevn ;i++)
  //for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
        tr->GetEntry(i);
	nraw[i] = revent -> GetVAmpSize();
        npeak_ch3[i] = revent->GetVPeakHighSize();
        nsum_ch3[i] = revent->GetVPeakSumSize();
	printf("event %d \t", i);
        printf("nraw_ch3 = %d\t",nraw[i]);
        printf("npeak_ch3 = %d\t",npeak_ch3[i]);
        printf("nsum_ch3 = %d\n",nsum_ch3[i]);

        pedestal_sum = 0;
        for(int j =0; j< nraw[i] ;j++)
        {
	  raw_y[j] = revent->GetVAmp()[j];	   
	  raw_x[j] = revent->GetVTime()[j];	   
          pedestal_sum = pedestal_sum + raw_y[j];
        }
        gr[i] = new TGraph(nraw[i],raw_x,raw_y);
        //pedestal = pedestal_sum/nraw[i];

        for(int j =0; j< npeak_ch3[i] ;j++)
        {	   
           ch_vpeakhigh[i][j]=revent->GetVPeakHigh()[j];
           ch_vpeakhigh_time_us[i][j]=revent->GetVPeakHighTime()[j]*0.001; //convert to us
           ch_vpeakhigh_time_ns[i][j]=revent->GetVPeakHighTime()[j]; //ns
           //hprof2d_vpeakhigh_coin -> Fill(ch_vpeakhigh_time_us[i][3][j],i,ch_vpeakhigh[i][3][j],1);       
           //printf("time peak = %d \n", ch_vpeakhigh_time_ns[i][3][j]);
       }               

       for(int j =0; j< nsum_ch3[i] ;j++)
       {
          ch_vpeaksum0[i][j]=revent->GetVPeakSum0()[j];
          ch_vpeaksum[i][j]=revent->GetVPeakSum()[j];
          ch_vpeaksum0_peak[i][j]=revent->GetVPeakSum0_peak()[j];

          ch_vpeaksum_tail[i][j]=ch_vpeaksum[i][j] - ch_vpeaksum0[i][j]; //calculate tail
           printf("sum = %ld \t", ch_vpeaksum[i][j]);
           printf("sum0 = %ld \t", ch_vpeaksum0[i][j]);
          //printf("sum0_peak = %d \n", ch_vpeaksum0_peak[i][3][j]);
           printf("sum_tail = %d \t", ch_vpeaksum_tail[i][j]);
          //printf("tail = %d \n", ch_vpeaksum_tail[i][3][j]);
          //printf("total = %d \n", ch_vpeaksum[i][3][j]);
          //printf("ratio = %lf \n", (ch_vpeaksum_tail[i][3][j]*1.0)/(ch_vpeaksum[i][3][j]*1.0) );
          ch_vpeaksum_time0_us[i][j]=revent->GetVPeakSumTime0()[j]*0.001; //convert to us
          ch_vpeaksum_time0_ns[i][j]=revent->GetVPeakSumTime0()[j]; //ns

          ch_vpeaksum_time1_ms[i][j]=revent->GetVPeakSumTime1()[j]*0.000001; //convert to ms
          ch_vpeaksum_time1_us[i][j]=revent->GetVPeakSumTime1()[j]*0.001; //convert to us
          ch_vpeaksum_time1_ns[i][j]=revent->GetVPeakSumTime1()[j]; //ns
          printf("time sum1 = %d \t", ch_vpeaksum_time1_ns[i][j]);
          printf("time sum0 = %d \t", ch_vpeaksum_time0_ns[i][j]);

          ch_vpeaksum_time2_us[i][j]=revent->GetVPeakSumTime2()[j]*0.001; //convert to us
          ch_vpeaksum_time2_ns[i][j]=revent->GetVPeakSumTime2()[j]; //ns
          printf("time sum2 = %d \n", ch_vpeaksum_time2_ns[i][j]);

          //if(ch_vpeaksum_tail[i][3][j] > ch_vpeaksum[i][3][j] && ch_vpeaksum_tail[i][3][j]<0 && ch_vpeaksum[i][3][j] <0)
          // {
             h2_psd -> Fill(-ch_vpeaksum0_peak[i][j],  (ch_vpeaksum_tail[i][j]*1.0)/ (ch_vpeaksum[i][j]*1.0) );
             h2_psd_pedestal -> Fill(ch_vpeaksum0_peak[i][j], ( ch_vpeaksum_tail[i][j] *1.0) /  (ch_vpeaksum[i][j] *1.0) );

             h2_tail_total -> Fill(ch_vpeaksum[i][j], ch_vpeaksum0[i][j] );
             h2_ratio_tail_total -> Fill(ch_vpeaksum[i][j], ( (ch_vpeaksum_tail[i][j]*1.0)/ (ch_vpeaksum[i][j]*1.0)) );
             h2_ratio_t2_t1 -> Fill(ch_vpeaksum_time2_ns[i][j] - ch_vpeaksum_time1_ns[i][j], ( (ch_vpeaksum_tail[i][j]*1.0)/ (ch_vpeaksum[i][j]*1.0)) );
             h2_height_sum -> Fill(ch_vpeaksum[i][j], ch_vpeaksum0_peak[i][j]  );

             h1_t2_t1 -> Fill(ch_vpeaksum_time2_ns[i][j] - ch_vpeaksum_time1_ns[i][j]);

             hprof2d_vpeaksum_ms -> Fill(ch_vpeaksum_time1_ms[i][j],i,ch_vpeaksum[i][j],1);
             if(ch_vpeaksum_time1_us[i][j] < 3000)
               {
                hprof2d_vpeaksum_us_batch1 -> Fill(ch_vpeaksum_time1_us[i][j],i,ch_vpeaksum[i][j],1);
               } else if(ch_vpeaksum_time1_us[i][j] > 66000 && ch_vpeaksum_time1_us[i][j] < 69000)
               {
                hprof2d_vpeaksum_us_batch2 -> Fill(ch_vpeaksum_time1_us[i][j],i,ch_vpeaksum[i][j],1);
               } else if(ch_vpeaksum_time1_us[i][j] > 266000 && ch_vpeaksum_time1_us[i][j] < 269000)
               {
                hprof2d_vpeaksum_us_batch3 -> Fill(ch_vpeaksum_time1_us[i][j],i,ch_vpeaksum[i][j],1);
               } else if(ch_vpeaksum_time1_us[i][j] > 333000 && ch_vpeaksum_time1_us[i][j] < 336000)
               {
                hprof2d_vpeaksum_us_batch4 -> Fill(ch_vpeaksum_time1_us[i][j],i,ch_vpeaksum[i][j],1);
               }
         //  }
       }
      

          //search for smallest peak in pulse
       //for(int j =0; j< nsum_ch3[i] ;j++)
       //{
       //   sum_peak = 0;
       //   for(int kpeak=0; kpeak< npeak_ch3[i]; kpeak ++)
       //     {
       //       if(ch_vpeakhigh_time_ns[i][3][kpeak] > ch_vpeaksum_time2_ns[i][3][j])
       //         {
       // 	   break;
       //         }
       //       if(ch_vpeakhigh_time_ns[i][3][kpeak] >= ch_vpeaksum_time1_ns[i][3][j])
       //        {
       //          //printf("kpeak = %d \n", ch_vpeakhigh[i][3][kpeak]);
       //          if(sum_peak > ch_vpeakhigh[i][3][kpeak])
       //            {
       // 	      sum_peak = ch_vpeakhigh[i][3][kpeak];
       // 	      time_sum_peak = ch_vpeakhigh_time_ns[i][3][kpeak];
       //            }
       //        }
       //     }
       //   ch_vpeaksum_peak[i][3][j]=sum_peak;
       //   //printf("sum peak = %lf \n", ch_vpeaksum_peak[i][3][j]);
       //   printf("time_sum_peak = %d \t time1 = %d \t time2 = %d \n", time_sum_peak, ch_vpeaksum_time1_ns[i][3][j], ch_vpeaksum_time2_ns[i][3][j]);
       //   printf("time2 - time1 = %d \n", ch_vpeaksum_time2_ns[i][3][j] - ch_vpeaksum_time1_ns[i][3][j]);
       //   printf("time2 - time_sum_peak = %d \n", ch_vpeaksum_time2_ns[i][3][j] - time_sum_peak);
       //   printf("sum0  = %d \n", ch_vpeaksum0[i][3][j]);
       //   printf("sum  = %d \n", ch_vpeaksum[i][3][j]);
       //   printf("sum tail  = %d \n", ch_vpeaksum_tail[i][3][j]);
       //   printf("tail - pedestal  = %d \n", ch_vpeaksum_tail[i][3][j]+ 200*(ch_vpeaksum_time2_ns[i][3][j] - time_sum_peak) );
       //   printf("sum - pedestal  = %d \n", ch_vpeaksum[i][3][j]+ 200*(ch_vpeaksum_time2_ns[i][3][j] - ch_vpeaksum_time1_ns[i][3][j]) );
       //   //h2_psd -> Fill(ch_vpeaksum_peak[i][3][j], ( (ch_vpeaksum_tail[i][3][j]+200*(ch_vpeaksum_time2_ns[i][3][j] - time_sum_peak ))*1.0)/( (ch_vpeaksum[i][3][j]+200*(ch_vpeaksum_time2_ns[i][3][j] -ch_vpeaksum_time1_ns[i][3][j]))*1.0) );
       //   h2_psd -> Fill(ch_vpeaksum_peak[i][3][j], ( (ch_vpeaksum_tail[i][3][j]*1.0)/ (ch_vpeaksum[i][3][j]*1.0)) );
       //}
  }
        
        
 
  

   TCanvas *c5 = new TCanvas("c5","profile",200,10,700,500);
   TCanvas *c_h2_psd = new TCanvas("c_h2_psd","psd",200,10,700,500);
   TCanvas *c_h2_psd_pedestal = new TCanvas("c_h2_psd_pedestal","psd",200,10,700,500);
   TCanvas *c_graph = new TCanvas("c_graph","raw signal",200,10,700,500);
   TCanvas *c_prof_ms = new TCanvas("c_prof_ms","profile sum ms ",200,10,700,500);
   TCanvas *c_prof_us_batch1 = new TCanvas("c_prof_us_batch1","profile sum us batch1",200,10,700,500);
   TCanvas *c_prof_us_batch2 = new TCanvas("c_prof_us_batch2","profile sum us batch2",200,10,700,500);
   TCanvas *c_prof_us_batch3 = new TCanvas("c_prof_us_batch3","profile sum us batch3",200,10,700,500);
   TCanvas *c_prof_us_batch4 = new TCanvas("c_prof_us_batch4","profile sum us batch4",200,10,700,500);
   TCanvas *c_h2_tail_total = new TCanvas("c_h2_tail_total","tail vs total",200,10,700,500);
   TCanvas *c_h2_ratio_tail_total = new TCanvas("c_h2_ratio_tail_total","(tail/total) vs total",200,10,700,500);
   TCanvas *c_h2_ratio_t2_t1 = new TCanvas("c_h2_ratio_t2_t1","(tail/total) vs (t2 - t1)",200,10,700,500);
   TCanvas *c_h2_height_sum = new TCanvas("c_h2_height_sum","peak height vs peak sum",200,10,700,500);
   TCanvas *c_h1_t2_t1 = new TCanvas("c_h1_t2_t1","t2 - t1",200,10,700,500);
   //TCanvas *c6 = new TCanvas("c6","profile",200,10,700,500);
   //TCanvas *c7 = new TCanvas("c7","peakhigh",200,10,700,500);
   //TCanvas *c8 = new TCanvas("c8","peakhigh",200,10,700,500);
   //TCanvas *c9 = new TCanvas("c9","peakhigh",200,10,700,500);
   //TCanvas *c10 = new TCanvas("c10","peakhigh",200,10,700,500);
   //TCanvas *c11 = new TCanvas("c11","peakhigh",200,10,700,500);
   //const Int_t Number =3;
   //Double_t Red[Number] = {1.00, 0.00, 0.00};
   //Double_t Green[Number] = {0.00, 1.00, 0.00};
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

  //c4->Divide(1,2);
  //c4->cd(1);
  //hprof2d_vpeakhigh->Draw("colz");
  //c4->cd(2);
  //vpeakhigh_h1->Draw();
  c5->cd();
  c5->SetGridx();
  c5->SetGridy();
  //hprof2d_vpeakhigh_coin->SetStats(kFALSE);
  hprof2d_vpeakhigh_coin->GetXaxis()->SetTitle("Time(ns)");
  hprof2d_vpeakhigh_coin->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_coin->Draw("colz");

  c_h2_psd -> cd();
  h2_psd -> Draw("colz");

  c_h2_psd_pedestal -> cd();
  h2_psd_pedestal -> Draw("colz");

  c_graph ->cd();
  c_graph ->Divide(2,2);
  c_graph -> cd(1);
  gr[0] ->Draw();
  c_graph -> cd(2);
  gr[1] ->Draw();
  c_graph -> cd(3);
  gr[2] ->Draw();
  c_graph -> cd(4);
  gr[3] ->Draw();

  c_prof_ms->cd();
  hprof2d_vpeaksum_ms->Draw("colz");

  c_prof_us_batch1->cd();
  hprof2d_vpeaksum_us_batch1->Draw("colz");

  c_prof_us_batch2->cd();
  hprof2d_vpeaksum_us_batch2->Draw("colz");

  c_prof_us_batch3->cd();
  hprof2d_vpeaksum_us_batch3->Draw("colz");

  c_prof_us_batch4->cd();
  hprof2d_vpeaksum_us_batch4->Draw("colz");

  c_h2_tail_total -> cd();
  h2_tail_total -> Draw("colz");

  c_h2_ratio_tail_total -> cd();
  h2_ratio_tail_total -> Draw("colz");

  c_h2_ratio_t2_t1 -> cd();
  h2_ratio_t2_t1 -> Draw("colz");

  c_h2_height_sum -> cd();
  h2_height_sum -> Draw("colz");

  c_h1_t2_t1 -> cd();
  h1_t2_t1 -> Draw();

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
