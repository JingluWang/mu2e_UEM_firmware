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



void testShowProf_coinevent_psd(char* rootfile, int nevn)
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
  TFile *fcoin = new TFile(rootfile);
  //TFile *fr = new TFile("../convertFMC228/data_Nov18/data_selftrig_coin4.root");
  //TFile *fr = new TFile("../convertFMC228/data_Nov18/data_selftrig_ch0.root");
  //TFile *fr = new TFile("../convertFMC228/data_Nov18/data_exttrig.root");
  //TFile *fr = new TFile("../convertFMC228/data_Nov19_testersignal/data_test_ch0_600ns_exttrig_org_mornitor.root");
  //
  TTree *tr = (TTree*)fcoin->Get("cointree");

  CoinEvent *coinevent = new CoinEvent();
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
  Int_t nsum_ch3[10000];

  int nevents = tr->GetEntries();

  hprof2d_vpeakhigh_coin_ms = new TProfile2D("hprof2d_vpeakhigh_coin_ms","vprofile 2D peakhigh coin ms  ",600,-50,550,5000,0,5000,-2500,0);
  hprof2d_vpeakhigh_coin_160ms = new TProfile2D("hprof2d_vpeakhigh_coin_160ms","vprofile 2D peakhigh coin 160ms  ",210,-50,160,5000,0,5000,-2500,0);
  hprof2d_vpeakhigh_coin_us_batch1 = new TProfile2D("hprof2d_vpeakhigh_coin_us_batch1","vprofile 2D peakhigh coin_us  ",3000,0,3000,5000,0,5000,-2500,0);
  hprof2d_vpeakhigh_coin_us_batch2 = new TProfile2D("hprof2d_vpeakhigh_coin_us_batch2","vprofile 2D peakhigh coin_us  ",3000,66000,69000,5000,0,5000,-2500,0);
  hprof2d_vpeakhigh_coin_138000_142000_ns = new TProfile2D("hprof2d_vpeakhigh_coin_138000_142000_ns","vprofile 2D peakhigh coin_ns  ",4000,138000,142000,5000,0,5000,-2500,0);
  hprof2d_vpeakhigh_coin_393000_397000_ns = new TProfile2D("hprof2d_vpeakhigh_coin_393000_397000_ns","vprofile 2D peakhigh coin_ns  ",4000,393000,397000,5000,0,5000,-2500,0);
  hprof2d_vpeakhigh_coin_67532000_67538000_ns = new TProfile2D("hprof2d_vpeakhigh_coin_67532000_67538000_ns","vprofile 2D peakhigh coin_ns  ",6000,67532000,67538000,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_v2 = new TProfile2D("hprof2d_vpeakhigh_coin_v2","vprofile 2D peakhigh coin  ",100000,0,1000000,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_55000_58000 = new TProfile2D("hprof2d_vpeakhigh_coin_55000_58000","vprofile 2D peakhigh coin  ",3000,55000,58000,5000,0,5000,-2500,0);
  hprof2d_vpeakhigh_coin_55000_58000 = new TProfile2D("hprof2d_vpeakhigh_coin_55000_58000","vprofile 2D peakhigh coin  ",4000,48000,52000,10000,0,10000,-2500,0);
  hprof2d_vpeakhigh_coin_475000_490000 = new TProfile2D("hprof2d_vpeakhigh_coin_475000_490000","vprofile 2D peakhigh coin  ",15000,475000,490000,5000,0,5000,-2500,0);
  hprof2d_vpeakhigh_coin_666000_670000 = new TProfile2D("hprof2d_vpeakhigh_coin_666000_670000","vprofile 2D peakhigh coin  ",4000,666000,670000,5000,0,5000,-2500,0);
  hprof2d_vpeakhigh_coin_899000_902000 = new TProfile2D("hprof2d_vpeakhigh_coin_899000_902000","vprofile 2D peakhigh coin  ",3000,899000,902000,5000,0,5000,-2500,0);


  hprof2d_vpeaksum_coin_ms = new TProfile2D("hprof2d_vpeaksum_coin_ms","vprofile 2D peaksum coin ms  ",600,-50,550,5000,0,5000,-30000,0);
  hprof2d_vpeaksum_coin_160ms = new TProfile2D("hprof2d_vpeaksum_coin_160ms","vprofile 2D peaksum coin 160ms  ",210,-50,160,5000,0,5000,-30000,0);
  hprof2d_vpeaksum_coin_us_batch1 = new TProfile2D("hprof2d_vpeaksum_coin_us_batch1","vprofile 2D peaksum coin_us  ",3000,0,3000,5000,0,5000,-30000,0);
  hprof2d_vpeaksum_coin_us_batch2 = new TProfile2D("hprof2d_vpeaksum_coin_us_batch2","vprofile 2D peaksum coin_us  ",3000,66000,69000,5000,0,5000,-30000,0);
  hprof2d_vpeaksum_coin_138000_142000_ns = new TProfile2D("hprof2d_vpeaksum_coin_138000_142000_ns","vprofile 2D peaksum coin_ns  ",4000,138000,142000,5000,0,5000,-30000,0);
  hprof2d_vpeaksum_coin_67532000_67538000_ns = new TProfile2D("hprof2d_vpeaksum_coin_67532000_67538000_ns","vprofile 2D peaksum coin_ns  ",6000,67532000,67538000,5000,0,5000,-30000,0);


  h1 = new TH1F("h1","background",2500,-2500,0);
  npeakheigh = new TH1F("npeakheigh","number of peak heigh",4000,0,4000);
  npeaksum = new TH1F("npeaksum","number of peak sum",4000,0,4000);
  ndelta_peak_sum = new TH1F("ndelta_peak_sum","delta of peak heigh - peak sum",1000,-500,500);
  peakhigh_coin = new TH1F("peakhigh_coin","peakhigh_coin",2500,-2500,0);

  peak2f_high_sum = new TH2F("peak2f_high_sum","No of peak heigh vs No of peak sum",500,0,500,500,0,500);
  peakh1_high_sum = new TH1F("peakh1_high_sum","No of peak heigh / No of peak sum",100,0,100);

  sig_height = new TH1F("sig_height","signal peak height",625,-2500,0);
  bg_height = new TH1F("bg_height","background peak height",625,-2500,0);
  sig_sum = new TH1F("sig_sum","signal peak sum",5000,-40000,40000);
  bg_sum = new TH1F("bg_sum","background peak sum",5000,-40000,40000);


  sum_tail_peak_high = new TH2F("  ratio signal sum_tail_peak_high"," (sig sum tail / sum total) vs peak heigh",1000,-1000,0,1000,0,1);
  bg_sum_tail_peak_high = new TH2F("  ratio bg sum_tail_peak_high"," (bg sum tail / sum total) vs peak heigh",1000,-1000,0,1000,0,1);

  int coin0 =0;
  int coin1 =0;
  int coin2 =0;
  int npeak_10ms =0;
  int nsum_10ms =0;
  int delta_peak_sum_10ms =0;
  double ratio;
  
  tr->SetBranchAddress("ch2.",&coinevent);
  for(int i= 0; i< nevn ;i++)
  //for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
	printf("event %d \n",i);
        tr->GetEntry(i);
        //printf("event %d \n",i);
        //printf("ch3  \n");
        npeak_ch3[i] = coinevent->GetVPeakHighSize();
        nsum_ch3[i] = coinevent->GetVPeakSumSize();
        //printf("npeak_ch3 = %d\t",npeak_ch3[i]);
        //printf("nsum_ch3 = %d\n",nsum_ch3[i]);
        delta_peak_sum_10ms =0;
        npeak_10ms =0;
        for(int j =0; j< npeak_ch3[i] ;j++)
        {	   
           ch_vpeakhigh[i][3][j]=coinevent->GetVPeakHigh()[j];
           ch_vpeakhigh_time_ms[i][3][j]=coinevent->GetVPeakHighTime()[j]*0.000001; //convert to ms
           ch_vpeakhigh_time_us[i][3][j]=coinevent->GetVPeakHighTime()[j]*0.001; //convert to us
           ch_vpeakhigh_time_ns[i][3][j]=coinevent->GetVPeakHighTime()[j]; //ns

           hprof2d_vpeakhigh_coin_ms -> Fill(ch_vpeakhigh_time_ms[i][3][j],i,ch_vpeakhigh[i][3][j],1);
           hprof2d_vpeakhigh_coin_160ms -> Fill(ch_vpeakhigh_time_ms[i][3][j],i,ch_vpeakhigh[i][3][j],1);
           hprof2d_vpeakhigh_coin_us_batch1 -> Fill(ch_vpeakhigh_time_us[i][3][j],i,ch_vpeakhigh[i][3][j],1);
           hprof2d_vpeakhigh_coin_us_batch2 -> Fill(ch_vpeakhigh_time_us[i][3][j],i,ch_vpeakhigh[i][3][j],1);
           hprof2d_vpeakhigh_coin_138000_142000_ns -> Fill(ch_vpeakhigh_time_ns[i][3][j],i,ch_vpeakhigh[i][3][j],1);
           hprof2d_vpeakhigh_coin_393000_397000_ns -> Fill(ch_vpeakhigh_time_ns[i][3][j],i,ch_vpeakhigh[i][3][j],1);
           hprof2d_vpeakhigh_coin_67532000_67538000_ns -> Fill(ch_vpeakhigh_time_ns[i][3][j],i,ch_vpeakhigh[i][3][j],1);
        }
	   
        for(int j =0; j< npeak_ch3[i] ;j++)
        {	   
	   if(ch_vpeakhigh_time_us[i][3][j] <10000)
	     {
		npeak_10ms = npeak_10ms+1;
	     }		
	   if( (ch_vpeakhigh_time_us[i][3][j] >272 && ch_vpeakhigh_time_us[i][3][j] <274)
	       || (ch_vpeakhigh_time_us[i][3][j] >283 && ch_vpeakhigh_time_us[i][3][j] <285)
	       || (ch_vpeakhigh_time_us[i][3][j] >294 && ch_vpeakhigh_time_us[i][3][j] <296)
	       || (ch_vpeakhigh_time_us[i][3][j] >305 && ch_vpeakhigh_time_us[i][3][j] <307)
	       || (ch_vpeakhigh_time_us[i][3][j] >316 && ch_vpeakhigh_time_us[i][3][j] <318)
	       || (ch_vpeakhigh_time_us[i][3][j] >327 && ch_vpeakhigh_time_us[i][3][j] <329)
	       || (ch_vpeakhigh_time_us[i][3][j] >338 && ch_vpeakhigh_time_us[i][3][j] <341)
	       || (ch_vpeakhigh_time_us[i][3][j] >350 && ch_vpeakhigh_time_us[i][3][j] <352)
	       || (ch_vpeakhigh_time_us[i][3][j] >361 && ch_vpeakhigh_time_us[i][3][j] <363)
	       || (ch_vpeakhigh_time_us[i][3][j] >372 && ch_vpeakhigh_time_us[i][3][j] <374)
	       || (ch_vpeakhigh_time_us[i][3][j] >382 && ch_vpeakhigh_time_us[i][3][j] <384)
	       || (ch_vpeakhigh_time_us[i][3][j] >394 && ch_vpeakhigh_time_us[i][3][j] <396)
	       //|| (ch_vpeakhigh_time_us[i][3][j] >405 && ch_vpeakhigh_time_us[i][3][j] <407)
	       //|| (ch_vpeakhigh_time_us[i][3][j] >416 && ch_vpeakhigh_time_us[i][3][j] <418)
	     )
	     {
		sig_height -> Fill(ch_vpeakhigh[i][3][j]);
	     }		
	   if( (ch_vpeakhigh_time_us[i][3][j] >0 && ch_vpeakhigh_time_us[i][3][j] <45)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >64 && ch_vpeakhigh_time_us[i][3][j] <70)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >74 && ch_vpeakhigh_time_us[i][3][j] <80)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >142 && ch_vpeakhigh_time_us[i][3][j] <148)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >152 && ch_vpeakhigh_time_us[i][3][j] <158)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >164 && ch_vpeakhigh_time_us[i][3][j] <168)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >174 && ch_vpeakhigh_time_us[i][3][j] <180)
	     ){
		bg_height -> Fill(ch_vpeakhigh[i][3][j]);
	     }else if(  (ch_vpeakhigh_time_us[i][3][j] >252 && ch_vpeakhigh_time_us[i][3][j] <258)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >264 && ch_vpeakhigh_time_us[i][3][j] <270)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >276 && ch_vpeakhigh_time_us[i][3][j] <282)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >286 && ch_vpeakhigh_time_us[i][3][j] <292)
	     ){
		bg_height -> Fill(ch_vpeakhigh[i][3][j]);
	     }else if(  (ch_vpeakhigh_time_us[i][3][j] >308 && ch_vpeakhigh_time_us[i][3][j] <314)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >330 && ch_vpeakhigh_time_us[i][3][j] <336)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >342 && ch_vpeakhigh_time_us[i][3][j] <348)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >352 && ch_vpeakhigh_time_us[i][3][j] <358)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >364 && ch_vpeakhigh_time_us[i][3][j] <370)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >376 && ch_vpeakhigh_time_us[i][3][j] <382)
	     ){
		bg_height -> Fill(ch_vpeakhigh[i][3][j]);

	     }else if(  (ch_vpeakhigh_time_us[i][3][j] >408 && ch_vpeakhigh_time_us[i][3][j] <414)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >420 && ch_vpeakhigh_time_us[i][3][j] <426)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >432 && ch_vpeakhigh_time_us[i][3][j] <438)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >442 && ch_vpeakhigh_time_us[i][3][j] <448)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >486 && ch_vpeakhigh_time_us[i][3][j] <494)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >496 && ch_vpeakhigh_time_us[i][3][j] <505)
	     ){
		bg_height -> Fill(ch_vpeakhigh[i][3][j]);

	     }else if(  (ch_vpeakhigh_time_us[i][3][j] >510 && ch_vpeakhigh_time_us[i][3][j] <516)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >520 && ch_vpeakhigh_time_us[i][3][j] <528)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >531 && ch_vpeakhigh_time_us[i][3][j] <538)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >542 && ch_vpeakhigh_time_us[i][3][j] <548)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >564 && ch_vpeakhigh_time_us[i][3][j] <570)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >575 && ch_vpeakhigh_time_us[i][3][j] <581)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >586 && ch_vpeakhigh_time_us[i][3][j] <592)
	     ){
		bg_height -> Fill(ch_vpeakhigh[i][3][j]);

	    }else if(  (ch_vpeakhigh_time_us[i][3][j] >610 && ch_vpeakhigh_time_us[i][3][j] <616)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >620 && ch_vpeakhigh_time_us[i][3][j] <626)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >654 && ch_vpeakhigh_time_us[i][3][j] <660)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >664 && ch_vpeakhigh_time_us[i][3][j] <670)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >688 && ch_vpeakhigh_time_us[i][3][j] <694)
	     ){
		bg_height -> Fill(ch_vpeakhigh[i][3][j]);

	    }else if(  (ch_vpeakhigh_time_us[i][3][j] >698 && ch_vpeakhigh_time_us[i][3][j] <704)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >720 && ch_vpeakhigh_time_us[i][3][j] <726)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >732 && ch_vpeakhigh_time_us[i][3][j] <738)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >742 && ch_vpeakhigh_time_us[i][3][j] <748)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >766 && ch_vpeakhigh_time_us[i][3][j] <772)
	       ||  (ch_vpeakhigh_time_us[i][3][j] >788 && ch_vpeakhigh_time_us[i][3][j] <794)
	     ){
	        bg_height -> Fill(ch_vpeakhigh[i][3][j]);

	   }
	   //else if(  (ch_vpeakhigh_time_us[i][3][j] >810 && ch_vpeakhigh_time_us[i][3][j] <816)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >820 && ch_vpeakhigh_time_us[i][3][j] <826)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >832 && ch_vpeakhigh_time_us[i][3][j] <838)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >844 && ch_vpeakhigh_time_us[i][3][j] <850)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >854 && ch_vpeakhigh_time_us[i][3][j] <860)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >866 && ch_vpeakhigh_time_us[i][3][j] <872)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >876 && ch_vpeakhigh_time_us[i][3][j] <882)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >888 && ch_vpeakhigh_time_us[i][3][j] <894)
	   //  ){
	   //     bg_height -> Fill(ch_vpeakhigh[i][3][j]);

	   //}
	   //else if(  (ch_vpeakhigh_time_us[i][3][j] >910 && ch_vpeakhigh_time_us[i][3][j] <916)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >922 && ch_vpeakhigh_time_us[i][3][j] <928)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >932 && ch_vpeakhigh_time_us[i][3][j] <938)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >944 && ch_vpeakhigh_time_us[i][3][j] <950)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >954 && ch_vpeakhigh_time_us[i][3][j] <960)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >966 && ch_vpeakhigh_time_us[i][3][j] <972)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >976 && ch_vpeakhigh_time_us[i][3][j] <982)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >988 && ch_vpeakhigh_time_us[i][3][j] <994)
	   //  ){
	   //     bg_height -> Fill(ch_vpeakhigh[i][3][j]);

	   //}
	   //else if(  (ch_vpeakhigh_time_us[i][3][j] >1000 && ch_vpeakhigh_time_us[i][3][j] <1006)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >1010 && ch_vpeakhigh_time_us[i][3][j] <1016)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >1022 && ch_vpeakhigh_time_us[i][3][j] <1028)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >1032 && ch_vpeakhigh_time_us[i][3][j] <1038)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >1044 && ch_vpeakhigh_time_us[i][3][j] <1050)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >1054 && ch_vpeakhigh_time_us[i][3][j] <1060)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >1066 && ch_vpeakhigh_time_us[i][3][j] <1072)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >1076 && ch_vpeakhigh_time_us[i][3][j] <1082)
	   //    ||  (ch_vpeakhigh_time_us[i][3][j] >1088 && ch_vpeakhigh_time_us[i][3][j] <1094)
	   // ){
	   //     bg_height -> Fill(ch_vpeakhigh[i][3][j]);
	   //  }

       }
       npeakheigh->Fill(npeak_10ms);
       //npeakheigh->Fill(npeak_ch3[i]);
       
       nsum_10ms =0;
       int t0 ;//= 69;//13;
       int delta_sig = 2;
       int delta_bg = 9.6;
       int igap =0;
       printf("nsum_ch3 =%d\n",nsum_ch3[i]);
       for(int k=0; k<nsum_ch3[i] ; k++)
	{
           ch_vpeaksum[i][3][k]=coinevent->GetVPeakSum()[k];
           ch_vpeaksum_tail[i][3][k]=coinevent->GetVPeakSum_tail()[k];
           ch_vpeaksum_peak[i][3][k]=coinevent->GetVPeakSum_peak()[k];
           ratio = ( (ch_vpeaksum_tail[i][3][k]*1.0)/(ch_vpeaksum[i][3][k]*1.0) );
           //printf("tail = %d \n",ch_vpeaksum_tail[i][3][k]);
           //printf("sum = %d \n",ch_vpeaksum[i][3][k]);
           //printf("peak = %d \n",ch_vpeaksum_peak[i][3][k]);
           //printf("ratio = %lf \n",ratio);
           ch_vpeaksum_time_ms[i][3][k]=coinevent->GetVPeakSumTime1()[k]*0.000001; //convert to ms
           ch_vpeaksum_time_us[i][3][k]=coinevent->GetVPeakSumTime1()[k]*0.001; //convert to us
           ch_vpeaksum_time_ns[i][3][k]=coinevent->GetVPeakSumTime1()[k]; //ns
	 
           hprof2d_vpeaksum_coin_ms -> Fill(ch_vpeaksum_time_ms[i][3][k],i,ch_vpeaksum[i][3][k],1);
           hprof2d_vpeaksum_coin_160ms -> Fill(ch_vpeaksum_time_ms[i][3][k],i,ch_vpeaksum[i][3][k],1);
           hprof2d_vpeaksum_coin_us_batch1 -> Fill(ch_vpeaksum_time_us[i][3][k],i,ch_vpeaksum[i][3][k],1);
           hprof2d_vpeaksum_coin_us_batch2 -> Fill(ch_vpeaksum_time_us[i][3][k],i,ch_vpeaksum[i][3][k],1);
           hprof2d_vpeaksum_coin_138000_142000_ns -> Fill(ch_vpeaksum_time_ns[i][3][k],i,ch_vpeaksum[i][3][k],1);
           hprof2d_vpeaksum_coin_67532000_67538000_ns -> Fill(ch_vpeaksum_time_ns[i][3][k],i,ch_vpeaksum[i][3][k],1);

           //sum_tail_peak_high -> Fill(ch_vpeaksum_peak[i][3][k],ratio);

	   if(ch_vpeaksum_time_ms[i][3][k] <10)
	     {
		nsum_10ms = nsum_10ms+1;
	     }
	
	   //if(ch_vpeaksum_time_ms[i][3][k] >10)
	   //  {
 	   //	break;
           //  }
	   t0 = ch_vpeaksum_time_us[i][3][0];
           //printf("t0 = %d\n",t0);
           //printf("t0 +igap*delta_sig= %d\n",t0+igap*delta_sig);
           //printf("ch_vpeaksum_time_us %d \n",ch_vpeaksum_time_us[i][3][k]);

           //if( ch_vpeaksum_time_us[i][3][k] > (t0+ (igap+1)*delta_sig + (igap+1)*delta_bg) )
           //  {
	   //	igap = igap+1;
           //  }
            
           for(int igap=0; igap<100 ; igap++)
           {
              //sig
              //
	      if( (ch_vpeaksum_time_us[i][3][k] >=(t0 + igap*delta_sig + igap*delta_bg) && ch_vpeaksum_time_us[i][3][k] <=(t0+ (igap+1)*delta_sig +igap*delta_bg) )
	        ){
                   sig_sum -> Fill(ch_vpeaksum[i][3][k]);
                   sum_tail_peak_high -> Fill(ch_vpeaksum_peak[i][3][k],ratio);
                }
              //
              //bg
	      if( (ch_vpeaksum_time_us[i][3][k] > (t0+ (igap+1)*delta_sig +igap*delta_bg) && ch_vpeaksum_time_us[i][3][k] <(t0+(igap+1)*delta_sig+(igap+1)*delta_bg) )
	        ){
                   bg_sum -> Fill(ch_vpeaksum[i][3][k]);
                   bg_sum_tail_peak_high -> Fill(ch_vpeaksum_peak[i][3][k],ratio);
                }
           }

	   //if( (ch_vpeaksum_time_us[i][3][k] >69 && ch_vpeaksum_time_us[i][3][k] <71)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >79 && ch_vpeaksum_time_us[i][3][k] <82)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >90 && ch_vpeaksum_time_us[i][3][k] <93)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >102 && ch_vpeaksum_time_us[i][3][k] <105)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >113 && ch_vpeaksum_time_us[i][3][k] <116)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >123 && ch_vpeaksum_time_us[i][3][k] <126)
	   //  ){
	   //     sig_sum -> Fill(ch_vpeaksum[i][3][k]);
           //     sum_tail_peak_high -> Fill(ch_vpeaksum_peak[i][3][k],ratio);
	   //  }

	   //if( (ch_vpeaksum_time_us[i][3][k] >72 && ch_vpeaksum_time_us[i][3][k] <78)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >83 && ch_vpeaksum_time_us[i][3][k] <89)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >94 && ch_vpeaksum_time_us[i][3][k] <101)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >106 && ch_vpeaksum_time_us[i][3][k] <112)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >117 && ch_vpeaksum_time_us[i][3][k] <122)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >127 && ch_vpeaksum_time_us[i][3][k] <134)
	   //  ){
	   //     bg_sum -> Fill(ch_vpeaksum[i][3][k]);
           //     bg_sum_tail_peak_high -> Fill(ch_vpeaksum_peak[i][3][k],ratio);
	   //  }
	   //if( (ch_vpeaksum_time_us[i][3][k] >148 && ch_vpeaksum_time_us[i][3][k] <157)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >172 && ch_vpeaksum_time_us[i][3][k] <179)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >193 && ch_vpeaksum_time_us[i][3][k] <200)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >204 && ch_vpeaksum_time_us[i][3][k] <212)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >226 && ch_vpeaksum_time_us[i][3][k] <234)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >272 && ch_vpeaksum_time_us[i][3][k] <280)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >282 && ch_vpeaksum_time_us[i][3][k] <290)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >292 && ch_vpeaksum_time_us[i][3][k] <300)
	   //  ){
	   //     bg_sum -> Fill(ch_vpeaksum[i][3][k]);
           //     bg_sum_tail_peak_high -> Fill(ch_vpeaksum_peak[i][3][k],ratio);
	   //  }
	   //if( (ch_vpeaksum_time_us[i][3][k] >304 && ch_vpeaksum_time_us[i][3][k] <312)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >315 && ch_vpeaksum_time_us[i][3][k] <324)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >326 && ch_vpeaksum_time_us[i][3][k] <334)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >350 && ch_vpeaksum_time_us[i][3][k] <358)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >372 && ch_vpeaksum_time_us[i][3][k] <380)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >382 && ch_vpeaksum_time_us[i][3][k] <390)
	   //    ||  (ch_vpeaksum_time_us[i][3][k] >394 && ch_vpeaksum_time_us[i][3][k] <400)
	   //  ){
	   //     bg_sum -> Fill(ch_vpeaksum[i][3][k]);
           //     bg_sum_tail_peak_high -> Fill(ch_vpeaksum_peak[i][3][k],ratio);
	   //  }



	    //else if(  (ch_vpeaksum_time_us[i][3][k] >308 && ch_vpeaksum_time_us[i][3][k] <314)
	    //        ||  (ch_vpeaksum_time_us[i][3][k] >320 && ch_vpeaksum_time_us[i][3][k] <326)
	    //        ||  (ch_vpeaksum_time_us[i][3][k] >330 && ch_vpeaksum_time_us[i][3][k] <336)
	    //        ||  (ch_vpeaksum_time_us[i][3][k] >342 && ch_vpeaksum_time_us[i][3][k] <348)
	    //        ||  (ch_vpeaksum_time_us[i][3][k] >354 && ch_vpeaksum_time_us[i][3][k] <360)
	    //        ||  (ch_vpeaksum_time_us[i][3][k] >364 && ch_vpeaksum_time_us[i][3][k] <370)
	    //        ||  (ch_vpeaksum_time_us[i][3][k] >376 && ch_vpeaksum_time_us[i][3][k] <382)
	    //        ||  (ch_vpeaksum_time_us[i][3][k] >386 && ch_vpeaksum_time_us[i][3][k] <392)
	    //    
	    // 	){
	    // 	   bg_sum -> Fill(ch_vpeaksum[i][3][k]);
	    // }else if(  (ch_vpeaksum_time_us[i][3][k] >408 && ch_vpeaksum_time_us[i][3][k] <414)
	    //   	    ||  (ch_vpeaksum_time_us[i][3][k] >420 && ch_vpeaksum_time_us[i][3][k] <426)
	    //   	    ||  (ch_vpeaksum_time_us[i][3][k] >432 && ch_vpeaksum_time_us[i][3][k] <438)
	    //   	    ||  (ch_vpeaksum_time_us[i][3][k] >442 && ch_vpeaksum_time_us[i][3][k] <448)
	    //   	    ||  (ch_vpeaksum_time_us[i][3][k] >454 && ch_vpeaksum_time_us[i][3][k] <460)
	    //   	    ||  (ch_vpeaksum_time_us[i][3][k] >464 && ch_vpeaksum_time_us[i][3][k] <470)
	    //   	    ||  (ch_vpeaksum_time_us[i][3][k] >476 && ch_vpeaksum_time_us[i][3][k] <483)
	    //   	    ||  (ch_vpeaksum_time_us[i][3][k] >486 && ch_vpeaksum_time_us[i][3][k] <492)
	    // 	){
	    // 	   bg_sum -> Fill(ch_vpeaksum[i][3][k]);

	    // }else if(  (ch_vpeaksum_time_us[i][3][k] >510 && ch_vpeaksum_time_us[i][3][k] <516)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >520 && ch_vpeaksum_time_us[i][3][k] <526)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >532 && ch_vpeaksum_time_us[i][3][k] <538)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >542 && ch_vpeaksum_time_us[i][3][k] <548)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >554 && ch_vpeaksum_time_us[i][3][k] <560)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >564 && ch_vpeaksum_time_us[i][3][k] <570)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >576 && ch_vpeaksum_time_us[i][3][k] <582)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >588 && ch_vpeaksum_time_us[i][3][k] <594)
	    // 	){
	    // 	   bg_sum -> Fill(ch_vpeaksum[i][3][k]);

	    // }else if(  (ch_vpeaksum_time_us[i][3][k] >610 && ch_vpeaksum_time_us[i][3][k] <616)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >620 && ch_vpeaksum_time_us[i][3][k] <626)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >632 && ch_vpeaksum_time_us[i][3][k] <638)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >642 && ch_vpeaksum_time_us[i][3][k] <648)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >654 && ch_vpeaksum_time_us[i][3][k] <660)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >664 && ch_vpeaksum_time_us[i][3][k] <670)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >676 && ch_vpeaksum_time_us[i][3][k] <682)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >688 && ch_vpeaksum_time_us[i][3][k] <694)
	    // 	){
	    // 	   bg_sum -> Fill(ch_vpeaksum[i][3][k]);

	    // }else if(  (ch_vpeaksum_time_us[i][3][k] >698 && ch_vpeaksum_time_us[i][3][k] <704)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >710 && ch_vpeaksum_time_us[i][3][k] <716)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >720 && ch_vpeaksum_time_us[i][3][k] <726)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >732 && ch_vpeaksum_time_us[i][3][k] <738)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >744 && ch_vpeaksum_time_us[i][3][k] <750)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >754 && ch_vpeaksum_time_us[i][3][k] <760)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >766 && ch_vpeaksum_time_us[i][3][k] <772)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >776 && ch_vpeaksum_time_us[i][3][k] <782)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >788 && ch_vpeaksum_time_us[i][3][k] <794)
	    // 	){
	    // 	   bg_sum -> Fill(ch_vpeaksum[i][3][k]);
	    // }
	    //else if(  (ch_vpeaksum_time_us[i][3][k] >810 && ch_vpeaksum_time_us[i][3][k] <816)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >820 && ch_vpeaksum_time_us[i][3][k] <826)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >832 && ch_vpeaksum_time_us[i][3][k] <838)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >844 && ch_vpeaksum_time_us[i][3][k] <850)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >854 && ch_vpeaksum_time_us[i][3][k] <860)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >866 && ch_vpeaksum_time_us[i][3][k] <872)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >876 && ch_vpeaksum_time_us[i][3][k] <882)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >888 && ch_vpeaksum_time_us[i][3][k] <894)
	    // 	){
	    // 	   bg_sum -> Fill(ch_vpeaksum[i][3][k]);
	    // }
            //else if(  (ch_vpeaksum_time_us[i][3][k] >910 && ch_vpeaksum_time_us[i][3][k] <916)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >922 && ch_vpeaksum_time_us[i][3][k] <928)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >932 && ch_vpeaksum_time_us[i][3][k] <938)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >944 && ch_vpeaksum_time_us[i][3][k] <950)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >954 && ch_vpeaksum_time_us[i][3][k] <960)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >966 && ch_vpeaksum_time_us[i][3][k] <972)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >976 && ch_vpeaksum_time_us[i][3][k] <982)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >988 && ch_vpeaksum_time_us[i][3][k] <994)
	    // 	){
	    // 	   bg_sum -> Fill(ch_vpeaksum[i][3][k]);

	    //}
	    //else if(  (ch_vpeaksum_time_us[i][3][k] >1000 && ch_vpeaksum_time_us[i][3][k] <1006)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >1010 && ch_vpeaksum_time_us[i][3][k] <1016)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >1022 && ch_vpeaksum_time_us[i][3][k] <1028)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >1032 && ch_vpeaksum_time_us[i][3][k] <1038)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >1044 && ch_vpeaksum_time_us[i][3][k] <1050)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >1054 && ch_vpeaksum_time_us[i][3][k] <1060)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >1066 && ch_vpeaksum_time_us[i][3][k] <1072)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >1076 && ch_vpeaksum_time_us[i][3][k] <1082)
	    //   ||  (ch_vpeaksum_time_us[i][3][k] >1088 && ch_vpeaksum_time_us[i][3][k] <1094)
	    //  ){
	    //    bg_sum -> Fill(ch_vpeaksum[i][3][k]);
	    // }
	}               
       npeaksum->Fill(nsum_10ms);
       delta_peak_sum_10ms = npeak_10ms - nsum_10ms;
       ndelta_peak_sum -> Fill(delta_peak_sum_10ms);
       peak2f_high_sum -> Fill(npeak_10ms, nsum_10ms);
       if(npeak_10ms != 0 && nsum_10ms !=0) {
           peakh1_high_sum -> Fill(npeak_10ms/nsum_10ms);
       }
  }
        
        
 
  

   TCanvas *c1 = new TCanvas("c1","profile",200,10,700,500);
   TCanvas *c2 = new TCanvas("c2","profile",200,10,700,500);
   TCanvas *c3_1 = new TCanvas("c2_1","profile",200,10,700,500);
   TCanvas *c3_2 = new TCanvas("c3_2","profile",200,10,700,500);
   TCanvas *c4_1 = new TCanvas("c4_1","profile",200,10,700,500);
   TCanvas *c4_2 = new TCanvas("c4_2","profile",200,10,700,500);
   TCanvas *c4_3 = new TCanvas("c4_3","profile",200,10,700,500);


   TCanvas *c1_sum = new TCanvas("c1_sum","profile",200,10,700,500);
   TCanvas *c2_sum = new TCanvas("c2_sum","profile",200,10,700,500);
   TCanvas *c3_1_sum = new TCanvas("c2_1_sum","profile",200,10,700,500);
   TCanvas *c3_2_sum = new TCanvas("c3_2_sum","profile",200,10,700,500);
   TCanvas *c4_1_sum = new TCanvas("c4_1_sum","profile",200,10,700,500);
   TCanvas *c4_2_sum = new TCanvas("c4_2_sum","profile",200,10,700,500);
  
   TCanvas *c_npeakheigh = new TCanvas("c_npeakheigh","number peak heigh",200,10,700,500);
   TCanvas *c_npeaksum = new TCanvas("c_npeaksum","number peak sum",200,10,700,500);
   TCanvas *c_ndelta_peak_sum = new TCanvas("c_ndelta_peak_sum","delta peak heigh peak sum",200,10,700,500);

   TCanvas *c_n_peak_sum = new TCanvas("c_n_peak_sum","no of peak heigh vs no of peak sum",200,10,700,500);
   TCanvas *c_ratio_peak_sum = new TCanvas("c_ratio_peak_sum","no of peak heigh / no of peak sum",200,10,700,500);

   TCanvas *c_bg_height = new TCanvas("c_bg_height","background peak height",200,10,700,500);
   TCanvas *c_bg_sum = new TCanvas("c_bg_sum","background peak sum",200,10,700,500);

   TCanvas *c_sum_tail_peak_high = new TCanvas("c_sum_tail_peak_high","(tail / total) vs peak high",200,10,700,500);
   TCanvas *c_bg_sum_tail_peak_high = new TCanvas("c_bg_sum_tail_peak_high","bg (tail / total) vs peak high",200,10,700,500);

  // TCanvas *c5 = new TCanvas("c5","profile",200,10,700,500);
  // TCanvas *c6 = new TCanvas("c6","profile",200,10,700,500);
   //TCanvas *c7 = new TCanvas("c7","peakhigh",200,10,700,500);
   //TCanvas *c8 = new TCanvas("c8","peakhigh",200,10,700,500);
   //TCanvas *c9 = new TCanvas("c9","peakhigh",200,10,700,500);
   //TCanvas *c10 = new TCanvas("c10","peakhigh",200,10,700,500);
   //TCanvas *c11 = new TCanvas("c11","peakhigh",200,10,700,500);
   const Int_t Number =3;
   Double_t Red[Number] = {1.00, 0.00, 0.00};
   //Double_t Green[Number] = {0.00, 1.00, 0.00};
   Double_t Green[Number] = {0.00, 0.00, 0.00};
   Double_t Blue[Number] = {0.00, 0.00, 1.00};
   Double_t Length[Number] = {0.00, 0.50, 1.00};
   Int_t nb=50;
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
  c1->cd();
  c1->SetGridx();
  c1->SetGridy();
  hprof2d_vpeakhigh_coin_ms->SetStats(kFALSE);
  hprof2d_vpeakhigh_coin_ms->GetXaxis()->SetTitle("Time(ms)");
  hprof2d_vpeakhigh_coin_ms->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_coin_ms->Draw("colz");
  //hprof2d_vpeakhigh_coin_ms->Draw("contz");
  c2->cd();
  c2->SetGridx();
  c2->SetGridy();
  hprof2d_vpeakhigh_coin_160ms->SetStats(kFALSE);
  hprof2d_vpeakhigh_coin_160ms->GetXaxis()->SetTitle("Time(ms)");
  hprof2d_vpeakhigh_coin_160ms->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_coin_160ms->Draw("colz");
  c3_1->cd();
  c3_1->SetGridx();
  c3_1->SetGridy();
  hprof2d_vpeakhigh_coin_us_batch1->SetStats(kFALSE);
  hprof2d_vpeakhigh_coin_us_batch1->GetXaxis()->SetTitle("Time(us)");
  hprof2d_vpeakhigh_coin_us_batch1->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_coin_us_batch1->Draw("colz");
  c3_2->cd();
  c3_2->SetGridx();
  c3_2->SetGridy();
  hprof2d_vpeakhigh_coin_us_batch2->SetStats(kFALSE);
  hprof2d_vpeakhigh_coin_us_batch2->GetXaxis()->SetTitle("Time(us)");
  hprof2d_vpeakhigh_coin_us_batch2->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_coin_us_batch2->Draw("colz");
  c4_1->cd();
  c4_1->SetGridx();
  c4_1->SetGridy();
  hprof2d_vpeakhigh_coin_138000_142000_ns->SetStats(kFALSE);
  hprof2d_vpeakhigh_coin_138000_142000_ns->GetXaxis()->SetTitle("Time(ns)");
  hprof2d_vpeakhigh_coin_138000_142000_ns->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_coin_138000_142000_ns->Draw("colz");
  //hprof2d_vpeakhigh_coin_138000_142000_ns->Draw("cont1z");
  c4_2->cd();
  c4_2->SetGridx();
  c4_2->SetGridy();
  hprof2d_vpeakhigh_coin_393000_397000_ns->SetStats(kFALSE);
  hprof2d_vpeakhigh_coin_393000_397000_ns->GetXaxis()->SetTitle("Time(ns)");
  hprof2d_vpeakhigh_coin_393000_397000_ns->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_coin_393000_397000_ns->Draw("colz");
  c4_3->cd();
  c4_3->SetGridx();
  c4_3->SetGridy();
  hprof2d_vpeakhigh_coin_67532000_67538000_ns->SetStats(kFALSE);
  hprof2d_vpeakhigh_coin_67532000_67538000_ns->GetXaxis()->SetTitle("Time(ns)");
  hprof2d_vpeakhigh_coin_67532000_67538000_ns->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_coin_67532000_67538000_ns->Draw("colz");

  //
  // profile peak sum
  //
  c1_sum->cd();
  c1_sum->SetGridx();
  c1_sum->SetGridy();
  hprof2d_vpeaksum_coin_ms->SetStats(kFALSE);
  hprof2d_vpeaksum_coin_ms->GetXaxis()->SetTitle("Time(ms)");
  hprof2d_vpeaksum_coin_ms->GetYaxis()->SetTitle("Events");
  hprof2d_vpeaksum_coin_ms->Draw("colz");
  c2_sum->cd();
  c2_sum->SetGridx();
  c2_sum->SetGridy();
  hprof2d_vpeaksum_coin_160ms->SetStats(kFALSE);
  hprof2d_vpeaksum_coin_160ms->GetXaxis()->SetTitle("Time(ms)");
  hprof2d_vpeaksum_coin_160ms->GetYaxis()->SetTitle("Events");
  hprof2d_vpeaksum_coin_160ms->Draw("colz");
  c3_1_sum->cd();
  c3_1_sum->SetGridx();
  c3_1_sum->SetGridy();
  hprof2d_vpeaksum_coin_us_batch1->SetStats(kFALSE);
  hprof2d_vpeaksum_coin_us_batch1->GetXaxis()->SetTitle("Time(us)");
  hprof2d_vpeaksum_coin_us_batch1->GetYaxis()->SetTitle("Events");
  hprof2d_vpeaksum_coin_us_batch1->Draw("colz");
  c3_2_sum->cd();
  c3_2_sum->SetGridx();
  c3_2_sum->SetGridy();
  hprof2d_vpeaksum_coin_us_batch2->SetStats(kFALSE);
  hprof2d_vpeaksum_coin_us_batch2->GetXaxis()->SetTitle("Time(us)");
  hprof2d_vpeaksum_coin_us_batch2->GetYaxis()->SetTitle("Events");
  hprof2d_vpeaksum_coin_us_batch2->Draw("colz");
  c4_1_sum->cd();
  c4_1_sum->SetGridx();
  c4_1_sum->SetGridy();
  hprof2d_vpeaksum_coin_138000_142000_ns->SetStats(kFALSE);
  hprof2d_vpeaksum_coin_138000_142000_ns->GetXaxis()->SetTitle("Time(ns)");
  hprof2d_vpeaksum_coin_138000_142000_ns->GetYaxis()->SetTitle("Events");
  hprof2d_vpeaksum_coin_138000_142000_ns->Draw("colz");
  c4_2_sum->cd();
  c4_2_sum->SetGridx();
  c4_2_sum->SetGridy();
  hprof2d_vpeaksum_coin_67532000_67538000_ns->SetStats(kFALSE);
  hprof2d_vpeaksum_coin_67532000_67538000_ns->GetXaxis()->SetTitle("Time(ns)");
  hprof2d_vpeaksum_coin_67532000_67538000_ns->GetYaxis()->SetTitle("Events");
  hprof2d_vpeaksum_coin_67532000_67538000_ns->Draw("colz");

  c_npeakheigh->cd();
  c_npeakheigh->SetGridx();
  c_npeakheigh->SetGridy();
  npeakheigh->GetXaxis()->SetTitle("number of peak");
  npeakheigh->Draw();

  c_npeaksum->cd();
  c_npeaksum->SetGridx();
  c_npeaksum->SetGridy();
  npeaksum->GetXaxis()->SetTitle("number of sum");
  npeaksum->Draw();
  c_ndelta_peak_sum->cd();
  c_ndelta_peak_sum->SetGridx();
  c_ndelta_peak_sum->SetGridy();
  ndelta_peak_sum->GetXaxis()->SetTitle("delta");
  ndelta_peak_sum->Draw();

  c_n_peak_sum->cd();
  c_n_peak_sum->SetGridx();
  c_n_peak_sum->SetGridy();
  peak2f_high_sum->GetXaxis()->SetTitle("No. of peak heigh");
  peak2f_high_sum->GetYaxis()->SetTitle("No. of peak sum");
  peak2f_high_sum->Draw("cont3z");

  c_ratio_peak_sum->cd();
  c_ratio_peak_sum->SetGridx();
  c_ratio_peak_sum->SetGridy();
  peakh1_high_sum->GetXaxis()->SetTitle("No. of peak heigh / No. of peak sum");
  peakh1_high_sum->Draw();
  //
  // peak height
  //
  c_bg_height->cd();
  c_bg_height->SetGridx();
  c_bg_height->SetGridy();
  sig_height->GetXaxis()->SetTitle("peak height");
  //bg_height->GetXaxis()->SetTitle("peak height");
  sig_height->Draw();
  bg_height->SetLineColor(kRed);
  bg_height->Draw("same");

  c_bg_sum->cd();
  c_bg_sum->SetGridx();
  c_bg_sum->SetGridy();
  bg_sum->GetXaxis()->SetTitle("peak sum");
  bg_sum->Draw();

  // sum tail / total vs peak high
  c_sum_tail_peak_high ->cd();
  sum_tail_peak_high -> Draw("colz");

  c_bg_sum_tail_peak_high ->cd();
  bg_sum_tail_peak_high -> Draw("colz");

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
