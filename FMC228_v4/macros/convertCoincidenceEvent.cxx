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
#include "../dataClasses/CoinEvent.h"


void convertCoincidenceEvent(char* rootfile, char* coinrootfile, int nevn)
{

  using std::count;
  using std::endl;
  gStyle ->SetCanvasDefH(900);
  gStyle ->SetCanvasDefW(1500);

  //const char *foldername = "nustar_present";
  //const char *ext =".pdf";
  gSystem->Load("../libData.so");


  TFile *fcoin = new TFile(coinrootfile,"RECREATE");
  TTree *cointree = new TTree("cointree","tree for coincidence event");
  //TString bname;
  CoinEvent[4]* =new CoinEvent();

  //for(Int_t i =0; i<4; i++){
  //      coinevent[i] = new CoinEvent();
  //      bname.Form("ch%d.",i);
  //      cointree->Branch(bname.Data(),"CoinEvent",&coinevent[i]);
  //}
   
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
  Int_t ch_vpeakhigh_time_ms[10000][4][10000];
  Int_t ch_vpeakhigh_time_us[10000][4][10000];
  Int_t ch_vpeakhigh_time_ns[10000][4][10000];

  Int_t ch_vpeaksum[10000][4][10000];
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
  hprof2d_vpeakhigh_ch0 = new TProfile2D("hprof2d_vpeakhigh_ch0","vprofile 2D peakhigh ch0  ",40000,0,40000,1000,0,1000,-2500,0);
  tr->SetBranchAddress("ch0.",&revent);
  for(int i= 0; i< nevn ;i++)
  //for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
        tr->GetEntry(i);
        //printf("event %d \n",i);
        //printf("ch0  \n");
        npeak_ch0[i] = revent->GetVPeakHighSize();
        nsum_ch0[i] = revent->GetVPeakSumSize();
        printf("npeak_ch0 = %d\t",npeak_ch0[i]);
        printf("nsum_ch0 = %d\n",nsum_ch0[i]);
        for(int j =0; j< npeak_ch0[i] ;j++)
        {	   
           ch_vpeakhigh[i][0][j]=revent->GetVPeakHigh()[j];
           ch_vpeakhigh_time_ms[i][0][j]=revent->GetVPeakHighTime()[j]*0.000001; //convert to ms
           ch_vpeakhigh_time_us[i][0][j]=revent->GetVPeakHighTime()[j]*0.001; //convert to us
           ch_vpeakhigh_time_ns[i][0][j]=revent->GetVPeakHighTime()[j]; //ns
           hprof2d_vpeakhigh_ch0 -> Fill(ch_vpeakhigh_time_us[i][0][j],i,ch_vpeakhigh[i][0][j],1);
           //printf("time %d \t",ch_vpeakhigh_time_ns[i][0][j]);
         }
         //printf("\n");

        for(int j =0; j< nsum_ch0[i] ;j++)
        {
           ch_vpeaksum[i][0][j]=revent->GetVPeakSum()[j];
           ch_vpeaksum_time_us[i][0][j]=revent->GetVPeakSumTime1()[j]*0.001; //convert to us
           ch_vpeaksum_time_ns[i][0][j]=revent->GetVPeakSumTime1()[j]; //ns
        }
        
   }

  hprof2d_vpeakhigh_ch1 = new TProfile2D("hprof2d_vpeakhigh_ch1","vprofile 2D peakhigh ch1  ",40000,0,40000,1000,0,1000,-2500,0);
  tr->SetBranchAddress("ch1.",&revent);
  for(int i= 0; i< nevn ;i++)
  //for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
        tr->GetEntry(i);
        //printf("event %d \n",i);
        //printf("ch1 \n");
        npeak_ch1[i] = revent->GetVPeakHighSize();
        nsum_ch1[i] = revent->GetVPeakSumSize();
        printf("npeak_ch1 = %d\t",npeak_ch1[i]);
        printf("nsum_ch1 = %d\n",nsum_ch1[i]);
        for(int j =0; j< npeak_ch1[i] ;j++)
        {	   
           ch_vpeakhigh[i][1][j]=revent->GetVPeakHigh()[j];
           ch_vpeakhigh_time_ms[i][1][j]=revent->GetVPeakHighTime()[j]*0.000001; //convert to ms
           ch_vpeakhigh_time_us[i][1][j]=revent->GetVPeakHighTime()[j]*0.001; //convert to us
           ch_vpeakhigh_time_ns[i][1][j]=revent->GetVPeakHighTime()[j]; //ns
           hprof2d_vpeakhigh_ch1 -> Fill(ch_vpeakhigh_time_us[i][1][j],i,ch_vpeakhigh[i][1][j],1);
           //printf("time %d \t",ch_vpeakhigh_time_ns[i][1][j]);
         }
         //printf("\n");

        for(int j =0; j< nsum_ch1[i] ;j++)
        {
           ch_vpeaksum[i][1][j]=revent->GetVPeakSum()[j];
           ch_vpeaksum_time_us[i][1][j]=revent->GetVPeakSumTime1()[j]*0.001; //convert to us
           ch_vpeaksum_time_ns[i][1][j]=revent->GetVPeakSumTime1()[j]; //ns
        }
        
   }

  hprof2d_vpeakhigh_ch2 = new TProfile2D("hprof2d_vpeakhigh_ch2","vprofile 2D peakhigh ch2  ",40000,0,40000,1000,0,5000,-2500,0);
  tr->SetBranchAddress("ch2.",&revent);
  for(int i= 0; i< nevn ;i++)
  //for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
        tr->GetEntry(i);
        //printf("event %d \n",i);
        //printf("ch2  \n");
        npeak_ch2[i] = revent->GetVPeakHighSize();
        nsum_ch2[i] = revent->GetVPeakSumSize();
        printf("npeak_ch2 = %d\t",npeak_ch2[i]);
        printf("nsum_ch2 = %d\n",nsum_ch2[i]);
        for(int j =0; j< npeak_ch2[i] ;j++)
        {	   
           ch_vpeakhigh[i][2][j]=revent->GetVPeakHigh()[j];
           ch_vpeakhigh_time_ms[i][2][j]=revent->GetVPeakHighTime()[j]*0.000001; //convert to ms
           ch_vpeakhigh_time_us[i][2][j]=revent->GetVPeakHighTime()[j]*0.001; //convert to us
           ch_vpeakhigh_time_ns[i][2][j]=revent->GetVPeakHighTime()[j]; //ns
           hprof2d_vpeakhigh_ch2 -> Fill(ch_vpeakhigh_time_us[i][2][j],i,ch_vpeakhigh[i][2][j],1);
           //printf("time %d \t",ch_vpeakhigh_time_ns[i][2][j]);
         }
         //printf("\n");

        for(int j =0; j< nsum_ch2[i] ;j++)
        {
           ch_vpeaksum[i][2][j]=revent->GetVPeakSum()[j];
           ch_vpeaksum_time_us[i][2][j]=revent->GetVPeakSumTime1()[j]*0.001; //convert to us
           ch_vpeaksum_time_ns[i][2][j]=revent->GetVPeakSumTime1()[j]; //convert to us
        }
        
   }

  hprof2d_vpeakhigh_ch3 = new TProfile2D("hprof2d_vpeakhigh_ch3","vprofile 2D peakhigh ch3  ",400,0,40000,1000,0,5000,-2500,0);
  hprof2d_vpeakhigh_coin_ms = new TProfile2D("hprof2d_vpeakhigh_coin_ms","vprofile 2D peakhigh coin ms  ",600,-50,550,2000,0,2000,-2500,0);
  hprof2d_vpeakhigh_coin_us = new TProfile2D("hprof2d_vpeakhigh_coin_us","vprofile 2D peakhigh coin_us  ",3000,0,3000,5000,0,5000,-2500,0);
  hprof2d_vpeakhigh_coin_138000_142000_ns = new TProfile2D("hprof2d_vpeakhigh_coin_138000_142000_ns","vprofile 2D peakhigh coin_ns  ",4000,138000,142000,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_v2 = new TProfile2D("hprof2d_vpeakhigh_coin_v2","vprofile 2D peakhigh coin  ",100000,0,1000000,5000,0,5000,-2500,0);
  //hprof2d_vpeakhigh_coin_55000_58000 = new TProfile2D("hprof2d_vpeakhigh_coin_55000_58000","vprofile 2D peakhigh coin  ",3000,55000,58000,5000,0,5000,-2500,0);
  hprof2d_vpeakhigh_coin_55000_58000 = new TProfile2D("hprof2d_vpeakhigh_coin_55000_58000","vprofile 2D peakhigh coin  ",4000,48000,52000,10000,0,10000,-2500,0);
  hprof2d_vpeakhigh_coin_475000_490000 = new TProfile2D("hprof2d_vpeakhigh_coin_475000_490000","vprofile 2D peakhigh coin  ",15000,475000,490000,5000,0,5000,-2500,0);
  hprof2d_vpeakhigh_coin_666000_670000 = new TProfile2D("hprof2d_vpeakhigh_coin_666000_670000","vprofile 2D peakhigh coin  ",4000,666000,670000,5000,0,5000,-2500,0);
  hprof2d_vpeakhigh_coin_899000_902000 = new TProfile2D("hprof2d_vpeakhigh_coin_899000_902000","vprofile 2D peakhigh coin  ",3000,899000,902000,5000,0,5000,-2500,0);

  h1 = new TH1F("h1","background",2500,-2500,0);
  peakhigh_coin = new TH1F("peakhigh_coin","peakhigh_coin",2500,-2500,0);

  int coin0 =0;
  int coin1 =0;
  int coin2 =0;
  tr->SetBranchAddress("ch3.",&revent);
  for(int i= 0; i< nevn ;i++)
  //for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
        tr->GetEntry(i);
        //printf("event %d \n",i);
        //printf("ch3  \n");
        npeak_ch3[i] = revent->GetVPeakHighSize();
        nsum_ch3[i] = revent->GetVPeakSumSize();
        printf("npeak_ch3 = %d\t",npeak_ch3[i]);
        printf("nsum_ch3 = %d\n",nsum_ch3[i]);
        for(int j =0; j< npeak_ch3[i] ;j++)
        {	   
           ch_vpeakhigh[i][3][j]=revent->GetVPeakHigh()[j];
           ch_vpeakhigh_time_ms[i][3][j]=revent->GetVPeakHighTime()[j]*0.000001; //convert to us
           ch_vpeakhigh_time_us[i][3][j]=revent->GetVPeakHighTime()[j]*0.001; //convert to us
           ch_vpeakhigh_time_ns[i][3][j]=revent->GetVPeakHighTime()[j]; //ns
           hprof2d_vpeakhigh_ch3 -> Fill(ch_vpeakhigh_time_us[i][3][j],i,ch_vpeakhigh[i][3][j],1);
           //hprof2d_vpeakhigh_coin -> Fill(ch_vpeakhigh_time_us[i][3][j],i,ch_vpeakhigh[i][3][j],1);
           //hprof2d_vpeakhigh_coin_55000_58000 -> Fill(ch_vpeakhigh_time_ns[i][3][j],i,ch_vpeakhigh[i][3][j],1);
        
           //printf("time %d \t",ch_vpeakhigh_time_ns[i][3][j]);

	   //calculate delta
	   //	  printf("delta0 \n");
           for(int k = 0; k<npeak_ch0[i] ; k++) 
	     {
                  int delta_time0 = ch_vpeakhigh_time_ns[i][3][j] - ch_vpeakhigh_time_ns[i][0][k];
		  //printf("%d \t",delta_time0);
		  if( delta_time0 <20 && delta_time0 >=0) 
		   {
		    coin0 = 1;
		    break;
		   }else 
			{
			 coin0 =0;
			}
		   
		  //if( delta_time0 > 300) break;
	     }
	    //printf("coin0 %d\n",coin0);
            //printf("\n");
	    //	  printf("delta1 \n");
           for(int l = 0; l<npeak_ch1[i] ; l++) 
	     {
                  int delta_time1 = ch_vpeakhigh_time_ns[i][3][j] - ch_vpeakhigh_time_ns[i][1][l];
		  //printf(" %d \t",delta_time1);
		  if( delta_time1 <20 && delta_time1 >=0)
		   {
		    coin1 = 1;
		    break;
		   }else 
			{
			 coin1 =0;
			}
		  //if( delta_time1 > 300) break;
	     }
	    //printf("coin1 %d\n",coin1);
            //printf("\n");
	    //	  printf("delta2 \n");
           for(int m = 0; m<npeak_ch2[i] ; m++) 
	     {
                  int delta_time2 = ch_vpeakhigh_time_ns[i][3][j] - ch_vpeakhigh_time_ns[i][2][m];
		  //printf(" %d \t",delta_time2);
		  if( delta_time2 <20 && delta_time2 >=0)
		   {
		    coin2 = 1;
		    break;
		   }else 
			{
			 coin2 =0;
			}
		  //if( delta_time2 > 300) break;
	     }
	    //printf("coin2 %d\n",coin1);
            //printf("\n");
	  
            //printf("coin0 = %d \t coin1 = %d \t coin2 = %d \n",coin0,coin1, coin2);
                  //if( (delta_time0 <10 && delta_time0 > 0 )
		  //    && (delta_time2 <10 && delta_time2 > 0)
		  //    && (delta_time1 <10 && delta_time1 > 0)
		  if(coin0 == 1 && coin1 == 1 && coin2 ==1)
		    {
		     //printf("coin coin coin coin\n ");
                     hprof2d_vpeakhigh_coin_ms -> Fill(ch_vpeakhigh_time_ms[i][3][j],i,ch_vpeakhigh[i][3][j],1);
                     hprof2d_vpeakhigh_coin_us -> Fill(ch_vpeakhigh_time_us[i][3][j],i,ch_vpeakhigh[i][3][j],1);
                     hprof2d_vpeakhigh_coin_138000_142000_ns -> Fill(ch_vpeakhigh_time_ns[i][3][j],i,ch_vpeakhigh[i][3][j],1);
                     hprof2d_vpeakhigh_coin_55000_58000 -> Fill(ch_vpeakhigh_time_ns[i][3][j],i,ch_vpeakhigh[i][3][j],1);
                     hprof2d_vpeakhigh_coin_475000_490000 -> Fill(ch_vpeakhigh_time_ns[i][3][j],i,ch_vpeakhigh[i][3][j],1);
                     hprof2d_vpeakhigh_coin_666000_670000 -> Fill(ch_vpeakhigh_time_ns[i][3][j],i,ch_vpeakhigh[i][3][j],1);
                     hprof2d_vpeakhigh_coin_899000_902000 -> Fill(ch_vpeakhigh_time_ns[i][3][j],i,ch_vpeakhigh[i][3][j],1);
		     peakhigh_coin -> Fill(ch_vpeakhigh[i][3][j]);
		     //if( ch_vpeakhigh_time_ns[i][3][j] <55000 || 
		     //	 (ch_vpeakhigh_time_ns[i][3][j] <575000 && ch_vpeakhigh_time_ns[i][3][j] >260000) ||
		    //	 (ch_vpeakhigh_time_ns[i][3][j] <895000 && ch_vpeakhigh_time_ns[i][3][j] >810000) 
		     if( ch_vpeakhigh_time_ns[i][3][j] <64000000 
			 && ch_vpeakhigh_time_ns[i][3][j] >10000000  
			){
			  h1->Fill(ch_vpeakhigh[i][3][j]);
			 }
		
                   }
       }               
       //printf("\n");
//        for(int j =0; j< nsum_ch3 ;j++)
//        {	   
//           ch_vpeaksum[i][3][j]=revent->GetVPeakSum()[j];
//           ch_vpeaksum_time_us[i][3][j]=revent->GetVPeakSumTime1()[j]*0.001; //convert to us
//           ch_vpeaksum_time_ns[i][3][j]=revent->GetVPeakSumTime1()[j]; //ns
//	}
//
  }
        
        
 
  

   TCanvas *c2 = new TCanvas("c2","profile",200,10,700,500);
   TCanvas *c3 = new TCanvas("c3","profile",200,10,700,500);
   TCanvas *c4 = new TCanvas("c4","profile",200,10,700,500);
   TCanvas *c5 = new TCanvas("c5","profile",200,10,700,500);
   TCanvas *c6 = new TCanvas("c6","profile",200,10,700,500);
   TCanvas *c7 = new TCanvas("c7","peakhigh",200,10,700,500);
   TCanvas *c8 = new TCanvas("c8","peakhigh",200,10,700,500);
   TCanvas *c9 = new TCanvas("c9","peakhigh",200,10,700,500);
   TCanvas *c10 = new TCanvas("c10","peakhigh",200,10,700,500);
   //TCanvas *c11 = new TCanvas("c11","peakhigh",200,10,700,500);
   const Int_t Number =3;
   Double_t Red[Number] = {1.00, 0.00, 0.00};
   //Double_t Green[Number] = {0.00, 1.00, 0.00};
   Double_t Green[Number] = {0.00, 0.00, 0.00};
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

  c2->cd();
  c2->SetGridx();
  c2->SetGridy();
  hprof2d_vpeakhigh_coin_ms->SetStats(kFALSE);
  hprof2d_vpeakhigh_coin_ms->GetXaxis()->SetTitle("Time(ms)");
  hprof2d_vpeakhigh_coin_ms->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_coin_ms->Draw("colz");
  c3->cd();
  c3->SetGridx();
  c3->SetGridy();
  hprof2d_vpeakhigh_coin_us->SetStats(kFALSE);
  hprof2d_vpeakhigh_coin_us->GetXaxis()->SetTitle("Time(us)");
  hprof2d_vpeakhigh_coin_us->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_coin_us->Draw("colz");
  c4->cd();
  c4->SetGridx();
  c4->SetGridy();
  hprof2d_vpeakhigh_coin_138000_142000_ns->SetStats(kFALSE);
  hprof2d_vpeakhigh_coin_138000_142000_ns->GetXaxis()->SetTitle("Time(ns)");
  hprof2d_vpeakhigh_coin_138000_142000_ns->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_coin_138000_142000_ns->Draw("colz");
  c5->cd();
  c5->Divide(2,2);
  c5->cd(1);
  c5->SetGridx();
  c5->SetGridy();
  //hprof2d_vpeakhigh_coin->SetStats(kFALSE);
  hprof2d_vpeakhigh_ch3->GetXaxis()->SetTitle("Time(us)");
  hprof2d_vpeakhigh_ch3->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_ch3->Draw("colz");
  c5->cd(2);
  c5->SetGridx();
  c5->SetGridy();
  //hprof2d_vpeakhigh_coin->SetStats(kFALSE);
  hprof2d_vpeakhigh_ch2->GetXaxis()->SetTitle("Time(us)");
  hprof2d_vpeakhigh_ch2->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_ch2->Draw("colz");
  c5->cd(3);
  c5->SetGridx();
  c5->SetGridy();
  //hprof2d_vpeakhigh_coin->SetStats(kFALSE);
  hprof2d_vpeakhigh_ch1->GetXaxis()->SetTitle("Time(us)");
  hprof2d_vpeakhigh_ch1->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_ch1->Draw("colz");
  c5->cd(4);
  c5->SetGridx();
  c5->SetGridy();
  //hprof2d_vpeakhigh_coin->SetStats(kFALSE);
  hprof2d_vpeakhigh_ch0->GetXaxis()->SetTitle("Time(us)");
  hprof2d_vpeakhigh_ch0->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_ch0->Draw("colz");
  c6->cd();
  c6->SetGridx();
  c6->SetGridy();
  hprof2d_vpeakhigh_coin_55000_58000->SetStats(kFALSE);
  hprof2d_vpeakhigh_coin_55000_58000->GetXaxis()->SetTitle("Time(ns)");
  hprof2d_vpeakhigh_coin_55000_58000->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_coin_55000_58000->Draw("colz");
  c7->cd();
  c7->SetGridx();
  c7->SetGridy();
  hprof2d_vpeakhigh_coin_666000_670000->SetStats(kFALSE);
  hprof2d_vpeakhigh_coin_666000_670000->GetXaxis()->SetTitle("Time(ns)");
  hprof2d_vpeakhigh_coin_666000_670000->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_coin_666000_670000->Draw("colz");
  c8->cd();
  c8->SetGridx();
  c8->SetGridy();
  hprof2d_vpeakhigh_coin_899000_902000->SetStats(kFALSE);
  hprof2d_vpeakhigh_coin_899000_902000->GetXaxis()->SetTitle("Time(ns)");
  hprof2d_vpeakhigh_coin_899000_902000->GetYaxis()->SetTitle("Events");
  hprof2d_vpeakhigh_coin_899000_902000->Draw("colz");
  //hprof2d_vpeaksum_coin->GetYaxis()->SetTitle("Events");
  //hprof2d_vpeaksum_coin->Draw("colz");
  ///c7->Divide(1,2);
  //c7->cd();
  //c7->SetGridx();
  //c7->SetGridy();
  //vpeakhigh_pmt3->SetXTitle("Peakhigh(adc)");
  //vpeakhigh_pmt3->Draw();
  //c8->cd();
  //c8->SetGridx();
  //c8->SetGridy();
  //vpeakhightime_pmt3->SetXTitle("Time(us)");
  //vpeakhightime_pmt3->Draw();
  c9->cd();
  c9->SetGridx();
  c9->SetGridy();
  h1->SetXTitle("Peakhigh(adc)");
  h1->Draw();
  c10->cd();
  c10->SetGridx();
  c10->SetGridy();
  peakhigh_coin->SetXTitle("Peakhigh(adc)");
  peakhigh_coin->Draw();
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
