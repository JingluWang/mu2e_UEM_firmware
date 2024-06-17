#include <TTree.h>
#include <TGraph.h>
#include <TFile.h>
#include <TSystem.h>
#include <TCanvas.h>
#include <TProfile2D.h>
#include <TStyle.h>



void testShowGraphs_rawevent_fitfunction(char* rootfile, int maxevn )
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
  double xmin = 50;
  double xmax = 200;
  TF1 *f = new TF1("f","[0]*(TMath::Exp(-x/[1]) - TMath::Exp(-x/[2]) ) ",xmin,xmax);
  TF1 *f2 = new TF1("f2","[0]*(1-TMath::Exp(x/[1]))*( TMath::Exp(-x/[2]) ) ",xmin,xmax);
  TF1 *f3 = new TF1("f3","([0]/[1])*(TMath::Exp(x/[1])) + ( (1-[0])/[2])*( TMath::Exp(-x/[2]) ) ",xmin,xmax);
  TF1 *f4 = new TF1("f4","gaus(0)+ [3]*( (TMath::Exp(-x/[4])) - (TMath::Exp(-x/[5])) ) ",xmin,xmax);

  TF1 *fmix = new TF1("fmix","gaus(0)*([3]*(1-TMath::Exp(-x/[4]))*TMath::Exp(-x/[5])) ",xmin,xmax);
  
  TF1 *flandau = new TF1("flandau","landau",xmin,xmax);
  TF1 *flandau_gaus = new TF1("flandau_gaus","landau(0)+gaus(2)",xmin,xmax);
  TF1 *fgaus_f = new TF1("fgaus_f","gaus(0)+([3]/([5]-[4]))*(TMath::Exp(-x/[4]) - TMath::Exp(-x/[5]) ) ",xmin,xmax);
  TF1 *fgaus_f2 = new TF1("fgaus_f2","gaus(0)+( [3]*([5]+[4])/([5]*[5]) )*(1- TMath::Exp(-x/[4]))*( TMath::Exp(-x/[5]))  ",xmin,xmax);

  TF1 *frising = new TF1("frising","([0]*TMath::Exp(x/[1]) ) ",xmin,xmax);
  TF1 *fdecay = new TF1("fdecay","([0]*TMath::Exp(-x/[1]) ) ",xmin,xmax);

  TF1 *fgaus_f3 = new TF1("fgaus_f3","([0]/([2]*2.5)*TMath::Exp( -TMath::Power((x-100 - [1]),2)/(2*[2]*[2]) ) )",xmin,xmax);

  TF1 *fa = new TF1("fa","([0]/([1]*2.5))*TMath::Exp(-TMath::Power((x-100-[2]),2)/(2*[1]*[1]) ) ",0,200);
  TF1 *fb = new TF1("fb","([0]/([1]*2.5))*TMath::Exp(-TMath::Power((x-100-[2]),2)/(2*[1]*[1]) ) + [0]*[3]*TMath::Exp(-x*[4])  ",0,200);
  
  h1 = new TH1F("h1","signal",600,0,600);
  h2d_signal = new TH2F("h2d_signal","2d signal",600,0,600,2500,0,-2500);
 
  TF1 *f_fit = new TF1("f_fit","-6270*TMath::Landau(x,11000,7)",10800,11350); 

  //TGraph *gr[4][10000];
  Int_t x[1000][4][10000];
  Int_t y[1000][4][10000];
  Int_t ymean[4][10000]=0;
  Int_t ysum[4][10000];
  Int_t peakhigh[10000];
  Int_t vpeakhigh[10000];
  Int_t vpeaksum[10000];
  Int_t peaktime[10000];
  Int_t peaksum[10000];
  Int_t peaksumtime1[10000];
  Int_t peaksumtime2[10000];


  Int_t ch_vpeakhigh[5000][4][10000];
  Int_t ch_vpeakhigh_time[5000][4][10000];

  Int_t ch_vpeaksum[5000][4][10000];
  Int_t ch_vpeaksum_time[5000][4][10000];

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
           y[i][0][j]=revent->GetVAmp()[j];
           //ymean[0][j]=y[i][0][j]/(maxevn) +ymean[0][j];
           x[i][0][j]=revent->GetVTime()[j];
           h1->Fill(y[i][0][j]);
           h2d_signal ->Fill(x[i][0][j],y[i][0][j]);
         }
       //gr[0][i] = new TGraph(nAmp_ch0,x,y);

        
   }
  tr->SetBranchAddress("ch1.",&revent);
  for(int i= 0; i< maxevn ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
        tr->GetEntry(i);
        int nAmp_ch1 = revent->GetVAmpSize();
        printf("nAmp_ch1 = %d\n",nAmp_ch1);
        for(int j =0; j< nAmp_ch1 ;j++)
        {	   
           y[i][1][j]=revent->GetVAmp()[j];
           //ymean[0][j]=y[i][1][j]/(maxevn) +ymean[0][j];
           x[i][1][j]=revent->GetVTime()[j];
           h1->Fill(y[i][1][j]);
           h2d_signal ->Fill(x[i][1][j],y[i][1][j]);
         }
        
   }
  tr->SetBranchAddress("ch2.",&revent);
  for(int i= 0; i< maxevn ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
        tr->GetEntry(i);
        int nAmp_ch2 = revent->GetVAmpSize();
        printf("nAmp_ch2 = %d\n",nAmp_ch2);
        for(int j =0; j< nAmp_ch2 ;j++)
        {	   
           y[i][2][j]=revent->GetVAmp()[j];
           //ymean[0][j]=y[i][2][j]/(maxevn) +ymean[0][j];
           x[i][2][j]=revent->GetVTime()[j];
           h1->Fill(y[i][2][j]);
           h2d_signal ->Fill(x[i][2][j],y[i][2][j]);
         }
        
   }
  tr->SetBranchAddress("ch3.",&revent);
  for(int i= 0; i< maxevn ;i++)
  //for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
        tr->GetEntry(i);
        int nAmp_ch3 = revent->GetVAmpSize();
        printf("nAmp_ch3 = %d\n",nAmp_ch3);
        for(int j =0; j< nAmp_ch3 ;j++)
        {	   
           y[i][3][j]=revent->GetVAmp()[j];
           ymean[0][j]=y[i][3][j]/(maxevn) +ymean[0][j];
           x[i][3][j]=revent->GetVTime()[j];
           h2d_signal ->Fill(x[i][3][j],y[i][3][j]);
         }
       //gr[2][i] = new TGraph(nAmp_ch2,x,y);
        
   }

   TGraph* gr1 = new TGraph(nAmp_ch2,x[11][2],y[11][2]);
   TGraph* gr2 = new TGraph(nAmp_ch2,x[12][2],y[12][2]);
   TGraph* gr3 = new TGraph(nAmp_ch2,x[13][2],y[13][2]);
   TGraph* gr4 = new TGraph(nAmp_ch2,x[14][2],y[14][2]);
   TGraph* gr_mean = new TGraph(nAmp_ch1,x[0][1],ymean[0]);

   TMultiGraph *mg = new TMultiGraph();
   mg->Add(gr1);
   mg->Add(gr2);
   mg->Add(gr3);
   mg->Add(gr4);
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

  
   //TCanvas *c1 = new TCanvas("c1","profile",200,10,700,500);
   TCanvas *c_gr1 = new TCanvas("c_gr1","signal",200,10,700,500);
   TCanvas *c_gr2 = new TCanvas("c_gr2","signal",200,10,700,500);
   TCanvas *c_gr3 = new TCanvas("c_gr3","signal",200,10,700,500);
   TCanvas *c_gr4 = new TCanvas("c_gr4","signal",200,10,700,500);
   TCanvas *c_mg = new TCanvas("c_mg","signal",200,10,700,500);
   TCanvas *c_sig = new TCanvas("c_sig","signal",200,10,700,500);
   TCanvas *c_profsig = new TCanvas("c_profsig","prof signal",200,10,700,500);
   TCanvas *c_projectionsig = new TCanvas("c_projectionsig","projection signal",200,10,700,500);
   TCanvas *c_mean = new TCanvas("c_mean","mean signal",200,10,700,500);
   TCanvas *c_fun = new TCanvas("c_fun","function",200,10,700,500);

   //int gra_begin = 10;
   //c1->Divide(2,4);
   //c1->cd(1);
   ////gr[0][1] ->Draw("AL*");
   //gr[0][1+gra_begin] ->Draw("AL*");
   //c1->cd(2);
   //gr[2][1+gra_begin] ->Draw("AL*");
   //c1->cd(3);
   //gr[0][2+gra_begin] ->Draw("AL*");
   //c1->cd(4);
   //gr[2][2+gra_begin] ->Draw("AL*");
   //c1->cd(5);
   //gr[0][3+gra_begin] ->Draw("AL*");
   //c1->cd(6);
   //gr[2][3+gra_begin] ->GetYaxis()->SetRangeUser(-2048,2048);
   //gr[2][3+gra_begin] ->Draw("AL*");
   fgaus_f2->SetParameters(-2500,100,20,10,20,60);
   fgaus_f->SetParameters(-2500,100,20,10,20,60);
   fa->SetParameters(-2500,10,5,-2500,80,85);
   c_gr1->cd();
   gr1 ->Draw("AL*");
   gr1->Fit("landau","","",80,350);

   c_gr2->cd();
   gr2 ->Draw("AL*");
   gr2->Fit("landau","","",80,350);

   c_gr3->cd();
   gr3 ->Draw("AL*");
   gr3->Fit("landau","","",80,350);

   c_gr4->cd();
   gr4 ->Draw("AL*");
   gr4->Fit("landau","","",80,350);

   c_mg->cd();
   mg ->Draw("AL*");

   f->SetParameters(-2500,20,25);
   f2->SetParameters(-250000,10,20);
   f3->SetParameters(-250000,10,20);
   //f4->SetParameters(-2500,0.05,70);
   frising->SetParameters(-2500,20);
   fdecay->SetParameters(-2500,20);
   //gr1->Fit("flandau");
   //gr[0][11]->Fit("f2");
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

  c_sig -> cd();
  h1->Draw();
  c_profsig -> cd();
  h2d_signal->Draw("col");
  
  TH1D *projh2d_signal_X = h2d_signal->ProjectionX();
  TH1D *projh2d_signal_Y = h2d_signal->ProjectionY();
  c_projectionsig -> cd();
  c_projectionsig->Divide(1,2);

  c_projectionsig->cd(1);
  projh2d_signal_X->Draw();
  c_projectionsig->cd(2);
  projh2d_signal_Y->Draw();
 
  c_mean->cd();
  gr_mean->Draw("AL*");
  gr_mean->Fit("landau","","",80,350);

  c_fun->cd();
  f_fit->Draw();

}
