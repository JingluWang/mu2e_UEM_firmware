#include <TTree.h>
#include <TGraph.h>
#include <TFile.h>
#include <TSystem.h>
#include <TCanvas.h>
#include <TProfile2D.h>
#include <TStyle.h>



void testShowGraphs_rawevent_v3(char* rootfile, int maxevn )
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

  TGraph *gr[8][10000];
  Int_t x[10000];
  Int_t y[10000];
  Int_t peakhigh[10000];
  Int_t vpeakhigh[10000];
  Int_t vpeaksum[10000];
  Int_t peaktime[10000];
  Int_t peaksum[10000];
  Int_t peaksumtime1[10000];
  Int_t peaksumtime2[10000];


  Int_t ch_vpeakhigh[5000][8][10000];
  Int_t ch_vpeakhigh_time[5000][8][10000];

  Int_t ch_vpeaksum[5000][8][10000];
  Int_t ch_vpeaksum_time[5000][8][10000];

  int nevents = tr->GetEntries();
  printf("nevents = %d\n", nevents);
  tr->SetBranchAddress("ch0.",&revent);
  //tr->SetBranchAddress("ch3.",&revent);
  for(int i= 0; i< maxevn ;i++)
  //for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
        tr->GetEntry(i);
        int nAmp_ch0 = revent->GetVAmpSize();
        printf("nAmp_ch0 = %d\n",nAmp_ch0);
        for(int j =0; j< nAmp_ch0 ;j++)
        {	   
           y[j]=revent->GetVAmp()[j];
           x[j]=revent->GetVTime()[j];
         }
       gr[0][i] = new TGraph(nAmp_ch0,x,y);
        
   }
  tr->SetBranchAddress("ch2.",&revent);
  for(int i= 0; i< maxevn ;i++)
  //for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
        tr->GetEntry(i);
        int nAmp_ch2 = revent->GetVAmpSize();
        printf("nAmp_ch2 = %d\n",nAmp_ch2);
        for(int j =0; j< nAmp_ch0 ;j++)
        {	   
           y[j]=revent->GetVAmp()[j];
           x[j]=revent->GetVTime()[j];
         }
       gr[2][i] = new TGraph(nAmp_ch2,x,y);
        
   }


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
  //

  
   TCanvas *c1 = new TCanvas("c1","profile",200,10,700,500);

   int gra_begin = 5;
   c1->Divide(2,4);
   c1->cd(1);
   //gr[0][1] ->Draw("AL*");
   gr[0][1+gra_begin] ->Draw("AL*");
   c1->cd(2);
   gr[2][1+gra_begin] ->Draw("AL*");
   c1->cd(3);
   gr[0][2+gra_begin] ->Draw("AL*");
   c1->cd(4);
   gr[2][2+gra_begin] ->Draw("AL*");
   c1->cd(5);
   gr[0][3+gra_begin] ->Draw("AL*");
   c1->cd(6);
   gr[2][3+gra_begin] ->GetYaxis()->SetRangeUser(-2048,2048);
   gr[2][3+gra_begin] ->Draw("AL*");

   TCanvas *c2 = new TCanvas("c2","profile",200,10,700,500);

   gr[2][7] -> Draw("AL*");
  // gr[2+gra_begin] ->Draw("AL*");
  // c1->cd(3);
  // gr[3+gra_begin] ->Draw("AL*");
  // c1->cd(4);
  // gr[4+gra_begin] ->Draw("AL*");
  // c1->cd(5);
  // gr[5+gra_begin] ->Draw("AL*");
  // c1->cd(6);
  // gr[6+gra_begin] ->Draw("AL*");
  // c1->cd(7);
  // gr[7+gra_begin] ->Draw("AL*");
  // c1->cd(8);
  // gr[8+gra_begin] ->Draw("AL*");


  //tr->Draw("ch0.vpeakhigh:ch0.vpeaksum");
  
}
