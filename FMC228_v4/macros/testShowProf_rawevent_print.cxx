//
// take raw data and print out data of sum
//


#include <TTree.h>
#include <TGraph.h>
#include <TFile.h>
#include <TSystem.h>
#include <TCanvas.h>
#include <TProfile2D.h>
#include <TStyle.h>



void testShowProf_rawevent_print(char* rootfile, int nevn)
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


  Int_t ch_vpeakhigh[10000][4][10000];
  Int_t ch_vpeakhigh_time_us[10000][4][10000];
  Int_t ch_vpeakhigh_time_ns[10000][4][10000];

  Int_t ch_vpeaksum0[10000][4][10000];
  Int_t ch_vpeaksum0_peak[10000][4][10000];
  Int_t ch_vpeaksum_tail[10000][4][10000];
  Int_t ch_vpeaksum_peak[10000][4][10000];


  Int_t ch_vpeaksum[10000][4][10000];
  Int_t ch_vpeaksum_time0_us[10000][4][10000];
  Int_t ch_vpeaksum_time0_ns[10000][4][10000];

  Int_t ch_vpeaksum_time1_ms[10000][4][10000];
  Int_t ch_vpeaksum_time1_us[10000][4][10000];
  Int_t ch_vpeaksum_time1_ns[10000][4][10000];

  Int_t ch_vpeaksum_time2_us[10000][4][10000];
  Int_t ch_vpeaksum_time2_ns[10000][4][10000];

  Int_t npeak[4][10000];
  Int_t npeak[4][10000];
  Int_t npeak[4][10000];
  Int_t npeak[4][10000];

  Int_t nsum[4][10000];
  Int_t nsum[4][10000];
  Int_t nsum[4][10000];
  Int_t nsum[4][10000];

  TGraph *gr[10000];
  Int_t nraw[4][10000];
  Int_t raw_x[4][10000];
  Int_t raw_y[4][10000];

  //int nevents = tr->GetEntries();

  //hprof2d_vpeakhigh_coin = new TProfile2D("hprof2d_vpeakhigh_coin","vprofile 2D peakhigh coin  ",20000,0,20000,100,0,100,-2500,0);

  //hprof2d_vpeaksum_ms = new TProfile2D("hprof2d_vpeaksum_ms","vprofile 2D peaksum ms  ",600,-50,550,5000,0,5000,-30000,0);
  //hprof2d_vpeaksum_160ms = new TProfile2D("hprof2d_vpeaksum_160ms","vprofile 2D peaksum 160ms  ",210,-50,160,5000,0,5000,-30000,0);
  //hprof2d_vpeaksum_us_batch1 = new TProfile2D("hprof2d_vpeaksum_us_batch1","vprofile 2D peaksum us  ",3000,0,3000,5000,0,5000,-30000,0);

  //h2_psd = new TH2F("h2_psd","(peak tail / peak total) vs peak high",2000,-2000,0,1000,-1,1);
  //h2_psd_pedestal = new TH2F("h2_psd_pedestal","(peak tail / peak total) vs peak high",2000,-2000,0,1000,-1,2);

  int coin0 =0;
  int coin1 =0;
  int coin2 =0;
  int sum_peak;
  int time_sum_peak;
  int pedestal_sum;
  int pedestal;


  int nevents = tr->GetEntries();
  printf("come here 1\n");
  TString namech;
  for(int ich =0; ich<4; ich++)
  {
     printf("read data ch %d\n",ich);
     namech.Form("ch%d.",ich);
     tr->SetBranchAddress(namech,&revent);


     //tr->SetBranchAddress("ch3.",&revent);
     //printf("CH3 CH3 CH3 \n");
     for(int i= 0; i< nevn ;i++)
      { 
           tr->GetEntry(i);
           nraw[ich][i] = revent -> GetVAmpSize();
           npeak[ich][i] = revent->GetVPeakHighSize();
           nsum[ich][i] = revent->GetVPeakSumSize();
           printf("event %d \t", i);
           printf("nraw ch%d = %d\t",ich,nraw[ich][i]);
           printf("npeak_ch%d = %d\t",ich,npeak[ich][i]);
           printf("nsum_ch%d = %d\n",ich,nsum[ich][i]);


           for(int j =0; j< npeak[ich][i] ;j++)
           {	   
              ch_vpeakhigh[i][ich][j]=revent->GetVPeakHigh()[j];
              ch_vpeakhigh_time_us[i][ich][j]=revent->GetVPeakHighTime()[j]*0.001; //convert to us
              ch_vpeakhigh_time_ns[i][ich][j]=revent->GetVPeakHighTime()[j]; //ns
              //printf("time peak = %d \n", ch_vpeakhigh_time_ns[i][3][j]);
          }               

          for(int j =0; j< nsum[ich][i] ;j++)
          {
             ch_vpeaksum0[i][ich][j]=revent->GetVPeakSum0()[j];
             ch_vpeaksum[i][ich][j]=revent->GetVPeakSum()[j];
             ch_vpeaksum0_peak[i][ich][j]=revent->GetVPeakSum0_peak()[j];

             ch_vpeaksum_tail[i][ich][j]=ch_vpeaksum[i][ich][j] - ch_vpeaksum0[i][ich][j]; //calculate tail
             ch_vpeaksum_time0_us[i][ich][j]=revent->GetVPeakSumTime0()[j]*0.001; //convert to us
             ch_vpeaksum_time0_ns[i][ich][j]=revent->GetVPeakSumTime0()[j]; //ns

             ch_vpeaksum_time1_ms[i][ich][j]=revent->GetVPeakSumTime1()[j]*0.000001; //convert to ms
             ch_vpeaksum_time1_us[i][ich][j]=revent->GetVPeakSumTime1()[j]*0.001; //convert to us
             ch_vpeaksum_time1_ns[i][ich][j]=revent->GetVPeakSumTime1()[j]; //ns
             printf("time sum1 = %d \t", ch_vpeaksum_time1_ns[i][ich][j]);
             printf("time sum0 = %d \t", ch_vpeaksum_time0_ns[i][ich][j]);

             ch_vpeaksum_time2_us[i][ich][j]=revent->GetVPeakSumTime2()[j]*0.001; //convert to us
             ch_vpeaksum_time2_ns[i][ich][j]=revent->GetVPeakSumTime2()[j]; //ns
             printf("time sum2 = %d \n", ch_vpeaksum_time2_ns[i][ich][j]);

          }
         

     }
        
  }      
 
  

  
}
