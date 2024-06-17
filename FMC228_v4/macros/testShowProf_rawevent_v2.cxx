#include <TTree.h>
#include <TGraph.h>
#include <TFile.h>
#include <TSystem.h>
#include <TCanvas.h>
#include <TProfile2D.h>
#include <TStyle.h>



void testShowProf_rawevent_v2(char* rootfile )
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
  tr->SetBranchAddress("ch0.",&revent);
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

  int nevents = tr->GetEntries();
  //hprof2d = new TProfile2D("hprof2d","profile 2D",40,-4,4,40,-4,4,0,20);
  //hprof2d = new TProfile2D("hprof2d","profile 2D",600,0,600,2000,-2000,2000,0,20);
  peahsum_h1 = new TH1F("peaksum_h1","peaksum histogram",3000,-30000,0);
  peahhigh_h1 = new TH1F("peakhigh_h1","peak high histogram",2000,-2000,0);
  vpeahhigh_h1 = new TH1F("vpeakhigh_h1","v peak high histogram",200,-2000,0);

  hprof2d = new TProfile2D("hprof2d","profile 2D ",600,0,600,1000,0,1000,-2000,2000);
  hprof2d_peakhigh = new TProfile2D("hprof2d_peakhigh","profile 2D peakhigh  ",1000,0,600000,1000,0,200,-2000,0);
  hprof2d_vpeakhigh = new TProfile2D("hprof2d_vpeakhigh","vprofile 2D peakhigh  ",1000,0,600000,1000,0,200,-2000,0);
  hprof2d_vpeakhightest = new TProfile2D("hprof2d_vpeakhightest","vprofile 2D peakhigh test  ",1000,0,600000,200,0,2000,0,1);

  hprof2d_peaksum1 = new TProfile2D("hprof2d_peaksum1","profile 2D peaksum  ",20000,0,20000,1000,0,1000,-300000,0);
  hprof2d_peaksum2 = new TProfile2D("hprof2d_peaksum2","profile 2D peaksum  ",20000,0,20000,1000,0,1000,-300000,0);
  hprof2d_vpeaksum1 = new TProfile2D("hprof2d_vpeaksum1","profile 2D peaksum  ",20000,0,200000,1000,0,1000,-50000,0);
  hprof2d_vpeaksum2 = new TProfile2D("hprof2d_vpeaksum2","profile 2D peaksum  ",20000,0,200000,1000,0,1000,-50000,0);

  //hprof2d = new TProfile2D("hprof2d","profile 2D",600,0,600,2000,-2000,2000,0,20);


  for(int i =0; i<nevents; i++)//nevents; i++)
    {
       printf("event %d \n",i);
	tr->GetEntry(i);
	//int npeak = ch0.fPeakHigh->GetSize();
	//printf("npeak = %d \n", npeak);
	for(int j=0; j<600; j++){
	   x[j]=revent->GetTime(j);
	   y[j]=revent->GetAmp(j);

	   peakhigh[j]=revent->GetPeakHigh(j);
	   peaktime[j]=revent->GetPeakHighTime(j);

	   //gr[i]->SetPoint(j,revent->GetTime(j),revent->GetAmp(j));

	   peaksum[j]=revent->GetPeakSum(j);
	   peaksumtime1[j]=revent->GetPeakSumTime1(j);
	   peaksumtime2[j]=revent->GetPeakSumTime2(j);

	   peahsum_h1->Fill(revent->GetPeakSum(j));
	   peahhigh_h1->Fill(peakhigh[j]);
	   hprof2d -> Fill(x[j],i,y[j],1);
	   hprof2d_peakhigh -> Fill(peaktime[j],i,peakhigh[j],1);
	   hprof2d_peaksum1 -> Fill(peaksumtime1[j],i,peaksum[j],1);
	   hprof2d_peaksum2 -> Fill(peaksumtime2[j],i,peaksum[j],1);
	}

       gr[i] = new TGraph(600,x,y);


	int npeak = revent->GetVPeakHighSize();
	printf("npeak = %d\n",npeak);
	for(int j =0; j< npeak ;j++){	   
	   vpeakhigh[j]=revent->GetVPeakHigh()[j];
	   hprof2d_vpeakhigh -> Fill(revent->GetVPeakHighTime()[j],i,revent->GetVPeakHigh()[j],1);
	   hprof2d_vpeakhightest -> Fill(revent->GetVPeakHighTime()[j],i,1,1);
	   vpeakhigh_h1 -> Fill(revent->GetVPeakHigh()[j]);
	   printf("peakhigh time = %d \n",revent->GetVPeakHighTime()[j]);

	}

	int nsum= revent->GetVPeakSumSize();
	printf("nsum = %d\n",nsum);
	for(int j =0; j< nsum ;j++){	   
	   vpeaksum[j]=revent->GetVPeakSum()[j];
	   hprof2d_vpeaksum1 -> Fill(revent->GetVPeakSumTime1()[j],i,revent->GetVPeakSum()[j],1);
	   hprof2d_vpeaksum2 -> Fill(revent->GetVPeakSumTime2()[j],i,revent->GetVPeakSum()[j],1);
	   printf("peaksum time1 = %d \n",revent->GetVPeakSumTime1()[j]);
	   printf("peaksum time2 = %d \n",revent->GetVPeakSumTime2()[j]);
	   printf("peaksum value = %d \n",revent->GetVPeakSum()[j]);


	}

    //}
    //gr[i] = new TGraph(600,x,y);
   }

   TCanvas *c1 = new TCanvas("c1","profile",200,10,700,500);
   TCanvas *c2 = new TCanvas("c2","graph",200,10,700,500);

   TCanvas *c3 = new TCanvas("c3","profile",200,10,700,500);
   TCanvas *c4 = new TCanvas("c4","profile",200,10,700,500);
   //TCanvas *c5 = new TCanvas("c5","profile",200,10,700,500);
   //TCanvas *c6 = new TCanvas("c6","profile",200,10,700,500);

   c1->cd();
   hprof2d->GetXaxis()->SetTitle("Time(ns)");
   hprof2d->GetYaxis()->SetTitle("Events");
   hprof2d->Draw("colz");

   int gra_begin =0;
   c2->Divide(2,2);
   c2->cd(1);
   gr[1+gra_begin] ->Draw("AL*");
   c2->cd(2);
   gr[2+gra_begin] ->Draw("AL*");
   c2->cd(3);
   gr[3+gra_begin] ->Draw("AL*");
   c2->cd(4);
   gr[4+gra_begin] ->Draw("AL*");

   //for(int k=1;k<5; k++)
   //  {
   //    c2->cd(k+1);
   //    gr[k]->Draw("APL");
   //  }

  c3->Divide(2,3);
  c3->cd(1);
  hprof2d_peakhigh->GetXaxis()->SetTitle("Time(ns)");
  hprof2d_peakhigh->GetYaxis()->SetTitle("Events");
  hprof2d_peakhigh->Draw("colz");
  c3->cd(2);
  hprof2d_vpeakhigh->GetXaxis()->SetTitle("Time(ns)");
  hprof2d_vpeakhigh->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh->Draw("colz");
  c3->cd(3);
  hprof2d_peaksum1->Draw("colz");
  //peakhigh_h1->Draw();
  c3->cd(4);
  hprof2d_vpeaksum1->Draw("colz");
  //vpeakhigh_h1->GetXaxis()->SetTitle("Peak high(adc)");
  //vpeakhigh_h1->GetYaxis()->SetTitle("Counts");
  //vpeakhigh_h1->Draw();
  c3->cd(5);
  hprof2d_vpeakhightest->Draw("colz");
  c3->cd(6);
  hprof2d_vpeaksum2->Draw("colz");

  c4->Divide(1,2);
  c4->cd(1);
  hprof2d_vpeakhigh->Draw("colz");
  c4->cd(2);
  vpeakhigh_h1->Draw();
  //c6->cd();
  //tr->Draw("ch0.vpeakhigh:ch0.vpeaksum");
  
}
