#include <TTree.h>
#include <TGraph.h>
#include <TFile.h>
#include <TSystem.h>
#include <TCanvas.h>
#include <TProfile2D.h>
#include <TStyle.h>



void testShowProf_rawevent_v4(char* rootfile )
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
  Int_t ch_vpeakhigh_time[10000][4][10000];
  Int_t ch_vpeakhigh_short[10000][4][10000];
  Int_t ch_vpeakhigh_time_short[10000][4][10000];

  Int_t ch_vpeaksum[10000][4][10000];
  Int_t ch_vpeaksum_time[10000][4][10000];

  int nevents = tr->GetEntries();
  tr->SetBranchAddress("ch0.",&revent);
  for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
        tr->GetEntry(i);
        int npeak_ch0 = revent->GetVPeakHighSize();
        int nsum_ch0 = revent->GetVPeakSumSize();
        printf("npeak_ch0 = %d\t",npeak_ch0);
        printf("nsum_ch0 = %d\n",nsum_ch0);
        for(int j =0; j< npeak_ch0 ;j++)
        {	   
           ch_vpeakhigh[i][0][j]=revent->GetVPeakHigh()[j];
           ch_vpeakhigh_time[i][0][j]=revent->GetVPeakHighTime()[j]*0.001; //convert to us
           ch_vpeakhigh_time_short[i][0][j]=revent->GetVPeakHighTime()[j]; //ns
         }

        for(int j =0; j< nsum_ch0 ;j++)
        {
           ch_vpeaksum[i][0][j]=revent->GetVPeakSum()[j];
           ch_vpeaksum_time[i][0][j]=revent->GetVPeakSumTime1()[j]*0.001; //convert to us
        }
        
   }

  tr->SetBranchAddress("ch1.",&revent);
  for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
        tr->GetEntry(i);
        int npeak_ch1 = revent->GetVPeakHighSize();
        int nsum_ch1 = revent->GetVPeakSumSize();
        printf("npeak_ch1 = %d\t",npeak_ch1);
        printf("nsum_ch1 = %d\n",nsum_ch1);
        for(int j =0; j< npeak_ch1 ;j++)
        {	   
           ch_vpeakhigh[i][1][j]=revent->GetVPeakHigh()[j];
           ch_vpeakhigh_time[i][1][j]=revent->GetVPeakHighTime()[j]*0.001; //convert to us
           ch_vpeakhigh_time_short[i][1][j]=revent->GetVPeakHighTime()[j]; //ns
         }

        for(int j =0; j< nsum_ch1 ;j++)
        {
           ch_vpeaksum[i][1][j]=revent->GetVPeakSum()[j];
           ch_vpeaksum_time[i][1][j]=revent->GetVPeakSumTime1()[j]*0.001; //convert to us
        }
        
   }

  tr->SetBranchAddress("ch2.",&revent);
  for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
        tr->GetEntry(i);
        int npeak_ch2 = revent->GetVPeakHighSize();
        int nsum_ch2 = revent->GetVPeakSumSize();
        printf("npeak_ch2 = %d\t",npeak_ch2);
        printf("nsum_ch2 = %d\n",nsum_ch2);
        for(int j =0; j< npeak_ch2 ;j++)
        {	   
           ch_vpeakhigh[i][2][j]=revent->GetVPeakHigh()[j];
           ch_vpeakhigh_time[i][2][j]=revent->GetVPeakHighTime()[j]*0.001; //convert to us
           ch_vpeakhigh_time_short[i][2][j]=revent->GetVPeakHighTime()[j]; //ns
         }

        for(int j =0; j< nsum_ch2 ;j++)
        {
           ch_vpeaksum[i][2][j]=revent->GetVPeakSum()[j];
           ch_vpeaksum_time[i][2][j]=revent->GetVPeakSumTime1()[j]*0.001; //convert to us
        }
        
   }

  hprof2d_vpeakhigh_coin = new TProfile2D("hprof2d_vpeakhigh_coin","vprofile 2D peakhigh coin  ",6000,0,600000,100,0,10000,-2500,0);
  hprof2d_vpeakhigh_coin_short = new TProfile2D("hprof2d_vpeakhigh_coin_short","vprofile 2D peakhigh coin  ",15000,42000,57000,10000,0,10000,-2500,0);
  hprof2d_vpeakhigh_coin_short_v2 = new TProfile2D("hprof2d_vpeakhigh_coin_short_v2","vprofile 2D peakhigh coin  ",15000,475000,490000,10000,0,10000,-2500,0);
  hprof2d_vpeaksum_coin = new TProfile2D("hprof2d_vpeaksum_coin","vprofile 2D peaksum coin  ",20000,0,600,100,0,10000,-40000,0);
  vpeahhigh_pmt3 = new TH1F("vpeakhigh_pmt3","v peak high histogram",300,-3000,0);
  vpeahhigh_pmt3_500 = new TH1F("vpeakhigh_pmt3_500","v peak high histogram",300,-3000,0);
  vpeahhightime_pmt3 = new TH1F("vpeakhightime_pmt3","v peak high time histogram",30000,600,0);
  tr->SetBranchAddress("ch3.",&revent);
  for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
        tr->GetEntry(i);
        int npeak_ch3 = revent->GetVPeakHighSize();
        int nsum_ch3 = revent->GetVPeakSumSize();
        printf("npeak_ch3 = %d\t",npeak_ch3);
        printf("nsum_ch3 = %d\n",nsum_ch3);
        for(int j =0; j< npeak_ch3 ;j++)
        {	   
           ch_vpeakhigh[i][3][j]=revent->GetVPeakHigh()[j];
           ch_vpeakhigh_time[i][3][j]=revent->GetVPeakHighTime()[j]*0.001; //convert to us
           ch_vpeakhigh_time_short[i][3][j]=revent->GetVPeakHighTime()[j]; //ns
	   for(int k = 0; k<npeak_ch3 ; k++) {
                  int delta_time3 = ch_vpeakhigh_time_short[i][3][j] - ch_vpeakhigh_time_short[i][0][k];
                  int delta_time2 = ch_vpeakhigh_time_short[i][2][j] - ch_vpeakhigh_time_short[i][0][k];
                  int delta_time1 = ch_vpeakhigh_time_short[i][1][j] - ch_vpeakhigh_time_short[i][0][k];
                  printf("delta_time1 = %d \t delta_time2 = %d \t delta_time3 = %d \n",delta_time1,delta_time2, delta_time3);
                  if( (delta_time3 <10 && delta_time3 > -1 )
		      && (delta_time2 <10 && delta_time2 > -1)
		      && (delta_time1 <10 && delta_time1 > -1)
		     ){
                     hprof2d_vpeakhigh_coin -> Fill(ch_vpeakhigh_time_short[i][3][j],i,ch_vpeakhigh[i][3][j],1);
                     hprof2d_vpeakhigh_coin_short -> Fill(ch_vpeakhigh_time_short[i][3][j],i,ch_vpeakhigh[i][3][j],1);
                     hprof2d_vpeakhigh_coin_short_v2 -> Fill(ch_vpeakhigh_time_short[i][3][j],i,ch_vpeakhigh[i][3][j],1);
		     vpeakhigh_pmt3-> Fill(ch_vpeakhigh[i][3][j]);
		     vpeakhightime_pmt3-> Fill(ch_vpeakhigh_time_short[i][3][j]);
		     if(ch_vpeakhigh_time[i][3][j]>300)
		       {
			 vpeakhigh_pmt3_500->Fill(ch_vpeakhigh[i][3][j]);
		       }
                   }
           }
        }
        
        for(int j =0; j< nsum_ch3 ;j++)
        {	   
           ch_vpeaksum[i][3][j]=revent->GetVPeakSum()[j];
           ch_vpeaksum_time[i][3][j]=revent->GetVPeakSumTime1()[j]*0.001;
	   for(int k = 0; k<nsum_ch0 ; k++) {
                  int delta_time_sum3 = ch_vpeaksum_time[i][3][j] - ch_vpeaksum_time[i][0][k];
                  int delta_time_sum2 = ch_vpeaksum_time[i][2][j] - ch_vpeaksum_time[i][0][k];
                  int delta_time_sum1 = ch_vpeaksum_time[i][1][j] - ch_vpeaksum_time[i][0][k];
                  printf("delta_time_sum1= %d \t delta_time_sum2 = %d \t delta_time_sum3=%d \n",delta_time_sum1,delta_time_sum2,delta_time_sum3);
                  if( (delta_time_sum3 <0.01 && delta_time_sum3 >=0 )
                      && (delta_time_sum2 <0.01 && delta_time_sum2 >=0 )
                      && (delta_time_sum1 <0.01 && delta_time_sum1 >=0 )
                     ){
                     hprof2d_vpeaksum_coin -> Fill(ch_vpeaksum_time[i][3][j],i,ch_vpeaksum[i][3][j],1);
                  }
           }
        }
        
   }
 
  

  //hprof2d = new TProfile2D("hprof2d","profile 2D",40,-4,4,40,-4,4,0,20);
  //hprof2d = new TProfile2D("hprof2d","profile 2D",600,0,600,2000,-2000,2000,0,20);
  peahsum_h1 = new TH1F("peaksum_h1","peaksum histogram",3000,-30000,0);
  peahhigh_h1 = new TH1F("peakhigh_h1","peak high histogram",2000,-2000,0);
  vpeahhigh_h1 = new TH1F("vpeakhigh_h1","v peak high histogram",200,-2000,0);

  hprof2d = new TProfile2D("hprof2d","profile 2D ",600,0,600,1000,0,1000,-2000,2000);
  hprof2d_peakhigh = new TProfile2D("hprof2d_peakhigh","profile 2D peakhigh  ",1000,0,600000,1000,0,200,-2000,0);
  //hprof2d_vpeakhigh = new TProfile2D("hprof2d_vpeakhigh","vprofile 2D peakhigh  ",1000,0,600000,1000,0,200,-2000,0);
  hprof2d_vpeakhigh = new TProfile2D("hprof2d_vpeakhigh","vprofile 2D peakhigh  ",200,0,2000,100,0,5000,-2000,0);
  hprof2d_vpeakhightest = new TProfile2D("hprof2d_vpeakhightest","vprofile 2D peakhigh test  ",1000,0,600000,200,0,2000,0,1);

  hprof2d_peaksum1 = new TProfile2D("hprof2d_peaksum1","profile 2D peaksum  ",20000,0,20000,1000,0,1000,-300000,0);
  hprof2d_peaksum2 = new TProfile2D("hprof2d_peaksum2","profile 2D peaksum  ",20000,0,20000,1000,0,1000,-300000,0);
  hprof2d_vpeaksum1 = new TProfile2D("hprof2d_vpeaksum1","profile 2D peaksum  ",20000,0,200000,1000,0,1000,-50000,0);
  hprof2d_vpeaksum2 = new TProfile2D("hprof2d_vpeaksum2","profile 2D peaksum  ",20000,0,200000,1000,0,1000,-50000,0);

  //hprof2d = new TProfile2D("hprof2d","profile 2D",600,0,600,2000,-2000,2000,0,20);



  //for(int i =0; i<nevents; i++)//nevents; i++)
  //for(int i =0; i<1; i++)//nevents; i++)
  //  {
  //     printf("event %d \n",i);
  //      tr->GetEntry(i);
  //      //int npeak = ch0.fPeakHigh->GetSize();
  //      //printf("npeak = %d \n", npeak);
  //      for(int j=0; j<600; j++){
  //         x[j]=revent->GetTime(j);
  //         y[j]=revent->GetAmp(j);

  //         peakhigh[j]=revent->GetPeakHigh(j);
  //         peaktime[j]=revent->GetPeakHighTime(j);

  //         //gr[i]->SetPoint(j,revent->GetTime(j),revent->GetAmp(j));

  //         peaksum[j]=revent->GetPeakSum(j);
  //         peaksumtime1[j]=revent->GetPeakSumTime1(j);
  //         peaksumtime2[j]=revent->GetPeakSumTime2(j);

  //         peahsum_h1->Fill(revent->GetPeakSum(j));
  //         peahhigh_h1->Fill(peakhigh[j]);
  //         hprof2d -> Fill(x[j],i,y[j],1);
  //         hprof2d_peakhigh -> Fill(peaktime[j],i,peakhigh[j],1);
  //         hprof2d_peaksum1 -> Fill(peaksumtime1[j],i,peaksum[j],1);
  //         hprof2d_peaksum2 -> Fill(peaksumtime2[j],i,peaksum[j],1);
  //      }

  //     gr[i] = new TGraph(600,x,y);


  //      int npeak = revent->GetVPeakHighSize();
  //      printf("npeak = %d\n",npeak);
  //      for(int j =0; j< npeak ;j++){	   
  //         vpeakhigh[j]=revent->GetVPeakHigh()[j];
  //         hprof2d_vpeakhigh -> Fill(revent->GetVPeakHighTime()[j]*0.001,i,revent->GetVPeakHigh()[j],1); //convert to us
  //         hprof2d_vpeakhightest -> Fill(revent->GetVPeakHighTime()[j],i,1,1);
  //         vpeakhigh_h1 -> Fill(revent->GetVPeakHigh()[j]);
  //         printf("peakhigh time = %d \n",revent->GetVPeakHighTime()[j]);

  //      }

  //      int nsum= revent->GetVPeakSumSize();
  //      printf("nsum = %d\n",nsum);
  //      for(int j =0; j< nsum ;j++){	   
  //         vpeaksum[j]=revent->GetVPeakSum()[j];
  //         hprof2d_vpeaksum1 -> Fill(revent->GetVPeakSumTime1()[j],i,revent->GetVPeakSum()[j],1);
  //         hprof2d_vpeaksum2 -> Fill(revent->GetVPeakSumTime2()[j],i,revent->GetVPeakSum()[j],1);
  //         printf("peaksum time1 = %d \n",revent->GetVPeakSumTime1()[j]);
  //         printf("peaksum time2 = %d \n",revent->GetVPeakSumTime2()[j]);
  //         printf("peaksum value = %d \n",revent->GetVPeakSum()[j]);


  //      }

  //  //}
  //  //gr[i] = new TGraph(600,x,y);
  // }

   //TCanvas *c1 = new TCanvas("c1","profile",200,10,700,500);
   //TCanvas *c2 = new TCanvas("c2","graph",200,10,700,500);

   //TCanvas *c3 = new TCanvas("c3","profile",200,10,700,500);
   //TCanvas *c4 = new TCanvas("c4","profile",200,10,700,500);
   TCanvas *c5 = new TCanvas("c5","profile",200,10,700,500);
   TCanvas *c6 = new TCanvas("c6","profile",200,10,700,500);
   TCanvas *c7 = new TCanvas("c7","peakhigh",200,10,700,500);
   TCanvas *c8 = new TCanvas("c8","peakhigh",200,10,700,500);
   TCanvas *c9 = new TCanvas("c9","peakhigh",200,10,700,500);
   TCanvas *c10 = new TCanvas("c10","peakhigh",200,10,700,500);
   TCanvas *c11 = new TCanvas("c11","peakhigh",200,10,700,500);
   const Int_t Number =3;
   Double_t Red[Number] = {1.00, 0.00, 0.00};
   Double_t Green[Number] = {0.00, 1.00, 0.00};
   Double_t Blue[Number] = {0.00, 0.00, 1.00};
   Double_t Length[Number] = {0.00, 0.50, 1.00};
   Int_t nb=50;
   TColor::CreateGradientColorTable(Number, Length,Red,Green,Blue,nb);
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
  hprof2d_vpeakhigh_coin->GetXaxis()->SetTitle("Time(us)");
  hprof2d_vpeakhigh_coin->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_coin->Draw("colz");
  c6->cd();
  c6->SetGridx();
  c6->SetGridy();
  hprof2d_vpeaksum_coin->GetXaxis()->SetTitle("Time(us)");
  hprof2d_vpeaksum_coin->GetYaxis()->SetTitle("Events");
  hprof2d_vpeaksum_coin->Draw("colz");
  //c7->Divide(1,2);
  c7->cd();
  c7->SetGridx();
  c7->SetGridy();
  vpeakhigh_pmt3->SetXTitle("Peakhigh(adc)");
  vpeakhigh_pmt3->Draw();
  c8->cd();
  c8->SetGridx();
  c8->SetGridy();
  vpeakhightime_pmt3->SetXTitle("Time(us)");
  vpeakhightime_pmt3->Draw();
  c9->cd();
  c9->SetGridx();
  c9->SetGridy();
  vpeakhigh_pmt3_500->SetXTitle("Peakhigh(adc)");
  vpeakhigh_pmt3_500->Draw();
  c10->cd();
  c10->SetGridx();
  c10->SetGridy();
  hprof2d_vpeakhigh_coin_short->SetStats(kFALSE);
  hprof2d_vpeakhigh_coin_short->SetXTitle("Time(ns)");
  hprof2d_vpeakhigh_coin_short->SetYTitle("Events");
  hprof2d_vpeakhigh_coin_short->Draw("colz");
  c11->cd();
  c11->SetGridx();
  c11->SetGridy();
  //hprof2d_vpeakhigh_coin_short_v2->SetColor(60);
  //gPad->SetFrameFillColor(60);
  hprof2d_vpeakhigh_coin_short_v2->SetStats(kFALSE);
  hprof2d_vpeakhigh_coin_short_v2->SetXTitle("Time(ns)");
  hprof2d_vpeakhigh_coin_short_v2->SetYTitle("Events");
  hprof2d_vpeakhigh_coin_short_v2->Draw("colz");
  //hprof2d_vpeakhigh->Draw("colz");

  //tr->Draw("ch0.vpeakhigh:ch0.vpeaksum");
  
}
