//
// show profile of count
//


#include <TTree.h>
#include <TGraph.h>
#include <TFile.h>
#include <TSystem.h>
#include <TCanvas.h>
#include <TProfile2D.h>
#include <TStyle.h>



//void testShowProf_count(char* rootfile, int nevn_begin, int nevn,char* rootfilehist)
void testShowProf_count(char* rootfile, int nevn_begin, int nevn)
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
  //TFile *fintimeouttime = new TFile(rootfile);
  TFile *fcountevent = new TFile(rootfile);
  //TFile *fr = new TFile("../convertFMC228/data_Nov18/data_selftrig_coin4.root");
  //TFile *fr = new TFile("../convertFMC228/data_Nov18/data_selftrig_ch0.root");
  //TFile *fr = new TFile("../convertFMC228/data_Nov18/data_exttrig.root");
  //TFile *fr = new TFile("../convertFMC228/data_Nov19_testersignal/data_test_ch0_600ns_exttrig_org_mornitor.root");
  //
  //TTree *tr = (TTree*)fcoin->Get("cointree");
  //TTree *tr = (TTree*)fcoinfitfunction->Get("cointreefitfunction");
  //TTree *tr = (TTree*)fintimeouttime->Get("treeintimeouttime");
  TTree *tr = (TTree*)fcountevent->Get("treecountevent");

  //CoinEventFitFunction *coineventfitfunction = new CoinEventFitFunction();
  //InTimeOutTimeEvent *intimeouttimeevent = new InTimeOutTimeEvent();
  CountEvent *countevent = new CountEvent();
  //



  Int_t Count[2000][1000]; //[i bin][j Recycler beam turn]
  Int_t Count_peaksum[2000][1000]; //[i bin][j Recycler beam turn]
  Int_t Count_event_batch1[2000][5000]; //[i bin][event number Recycler]
  Int_t Count_event_batch2[2000][5000]; //[i bin][event number Recycler]
  Int_t Sum_Count[2000][1000]; //[i bin][j Recycler beam turn]
  Int_t Sum_Count_peaksum[2000][1000]; //[i bin][j Recycler beam turn]
  Int_t sum10Count[2000][1000]; //[i bin][j Recycler beam turn]
  printf("come var1 \n");
  for(int i=0; i<2000;i++)
     {
      for(int j=0; j<1000; j++)
        {
           Count[i][j]=0;
           Count_peaksum[i][j]=0;
           Sum_Count[i][j]=0;
           Sum_Count_peaksum[i][j]=0;
           sum10Count[i][j]=0;
        }
     }

  for(int i=0; i<2000;i++)
     {
      for(int k=0; k<5000; k++)
        {
           Count_event_batch1[i][k]=0;
           Count_event_batch2[i][k]=0;
        }
     }
  printf("come var2 \n");

  int nbin_Count_event_batch1[10000]; 
  int nbin_Count_event_batch2[10000]; 
  int nbin_Count[10000]; 
  int nturn_Count[10000]; 
  int nturn_Count_peaksum[10000]; 
  int nbin_Count_peaksum[10000]; 

  Int_t sum_Count_event_batch1[2000]; 
  Int_t sum_Count_event_batch2[2000]; 
  for(int ibin=0; ibin <2000; ibin++)
   {
     sum_Count_event_batch1[ibin]=0;
     sum_Count_event_batch2[ibin]=0;
   }

  int nevents = tr->GetEntries();
  printf("nevents = %d \n", nevents);

  int nbin = 2000;
  int nbin_turn = 26;
  int nbin_turn10 = 55;
 
  hprof2d_count = new TProfile2D("hprof2d_count"," count of ibin vs j Recycler Beam Turn ",nbin,0,nbin*5,nbin_turn,0,nbin_turn*25,0,50);
  hprof2d_count_peaksum = new TProfile2D("hprof2d_count_peaksum"," count_peaksum of ibin vs j Recycler Beam Turn ",nbin,0,nbin*5,nbin_turn,0,nbin_turn*25,0,50);
  hprof2d_sum_count = new TProfile2D("hprof2d_sum_count","sum count of ibin vs j Recycler Beam Turn ",nbin,0,nbin*5,nbin_turn,0,nbin_turn*25,0,50);
  hprof2d_sum_count_peaksum = new TProfile2D("hprof2d_sum_count_peaksum","sum count_peaksum of ibin vs j Recycler Beam Turn ",nbin,0,nbin*5,nbin_turn,0,nbin_turn*25,0,50);
  hprof2d_count_log = new TProfile2D("hprof2d_count_log","log10(count) of ibin vs j Recycler Beam Turn ",nbin,0,nbin*5,nbin_turn,0,nbin_turn*25,0,1);

  hprof2d_count_event_batch1 = new TProfile2D("hprof2d_count_event_batch1"," count of ibin vs j event batch1 ",nbin,0,nbin*5,nevn - nevn_begin,nevn_begin,nevn,0,50);
  hprof2d_count_event_batch2 = new TProfile2D("hprof2d_count_event_batch2"," count of ibin vs j event batch2 ",nbin,0,nbin*5,nevn - nevn_begin,nevn_begin,nevn,0,50);

  hprof2d_count_event_turn10 = new TProfile2D("hprof2d_count_event_turn10"," count of ibin vs j turn 10",nbin,0,nbin*5,nbin_turn10,0,nbin_turn10*10,0,50);

  h1_batch1 = new TH1F("h1_batch1","histogram count_event_batch1",nbin,0,nbin*5);
  h1_batch2 = new TH1F("h1_batch2","histogram count_event_batch2",nbin,0,nbin*5);

  printf("come here 0 \n");
  //tr->SetBranchAddress("ch3.",&coineventfitfunction);
  //tr->SetBranchAddress("inout.",&intimeouttimeevent);
  tr->SetBranchAddress("countbin.",&countevent);
  printf("come here 1 \n");
  for(int i= nevn_begin; i< nevn ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
	printf("event %d \n",i);
        tr->GetEntry(i);
        //printf("event %d \n",i);
        //printf("ch3  \n");

        nbin_Count_event_batch1[i] = countevent->GetVCount_Event_Batch1_Size();
        nbin_Count_event_batch2[i] = countevent->GetVCount_Event_Batch2_Size();
        printf("nbin_Count_event_batch1 = %d\n",nbin_Count_event_batch1[i]);
        printf("nbin_Count_event_batch2 = %d\n",nbin_Count_event_batch2[i]);
        printf("sum_Count_event_batch1 = %d\n",sum_Count_event_batch1[0]);
        int sumtest_Count_batch1=0;
        int sumtest_sumCount_batch1=0;
        for(int ibin =0; ibin< nbin_Count_event_batch1[i] ;ibin++)
        {	   
           Count_event_batch1[ibin][i]=countevent->GetVCount_Event_Batch1()[ibin];
           Count_event_batch2[ibin][i]=countevent->GetVCount_Event_Batch2()[ibin];

           sum_Count_event_batch1[ibin]= sum_Count_event_batch1[ibin] + Count_event_batch1[ibin][i];
           sum_Count_event_batch2[ibin]= sum_Count_event_batch2[ibin] + Count_event_batch2[ibin][i];

           sumtest_Count_batch1 = sumtest_Count_batch1 + Count_event_batch1[ibin][i];
           sumtest_sumCount_batch1 = sumtest_sumCount_batch1 + sum_Count_event_batch1[ibin];

           hprof2d_count_event_batch1 -> Fill(ibin*5,i,Count_event_batch1[ibin][i],1);
           hprof2d_count_event_batch2 -> Fill(ibin*5,i,Count_event_batch2[ibin][i],1);

        }
       printf("sumtest_Count_batch1 %d\n", sumtest_Count_batch1);
       printf("sum_Count_event_batch1 = %d\n",sum_Count_event_batch1[0]);
       printf("sumtest_sumCount_batch1 %d\n", sumtest_sumCount_batch1);
       printf("Come here here\n");
        nturn_Count[i] = countevent->GetVCount_Row_Size();
        nbin_Count[i] = countevent->GetVCount_Col_Size();
        printf("nbin_Count %d\n",nbin_Count[i]);
        printf("nturn_Count %d\n",nturn_Count[i]);
        int sumtest=0;
        int sumtest_sum=0;
       for(int jturn = 0; jturn <nturn_Count[i]; jturn++)
         {
            for(int ibin =0; ibin<nbin_Count[i]; ibin++)
             {
               Count[ibin][jturn] = countevent->GetVCount(ibin)[jturn];
               sumtest= sumtest+Count[ibin][jturn];
               hprof2d_count -> Fill(ibin*5,jturn,Count[ibin][jturn],1);
             }
            if(  (jturn % 10) == 0)
             {
                for(int ibin =0; ibin<nbin_Count[i]; ibin++)
                 {
                   //sumCount[ibin][jturn] = sumCount[ibin][jturn] + Count[ibin][jturn];
                   //hprof2d_count_event_turn10 -> Fill(ibin*5,jturn,sumCount[ibin][jturn],1);
                 }
             }
         }
        nturn_Count_peaksum[i] = countevent->GetVCount_sum_Row_Size();
        nbin_Count_peaksum[i] = countevent->GetVCount_sum_Col_Size();
        printf("nbin_Count_peaksum %d\n",nbin_Count_peaksum[i]);
        printf("nturn_Count_peaksum %d\n",nturn_Count_peaksum[i]);

       for(int jturn_peaksum = 0; jturn_peaksum <nturn_Count_peaksum[i]; jturn_peaksum++)
         {
            for(int ibin_peaksum =0; ibin_peaksum<nbin_Count_peaksum[i]; ibin_peaksum++)
             {
               Count_peaksum[ibin_peaksum][jturn_peaksum] = countevent->GetVCount_sum(ibin_peaksum)[jturn_peaksum];
               hprof2d_count_peaksum -> Fill(ibin_peaksum*5,jturn_peaksum,Count_peaksum[ibin_peaksum][jturn_peaksum],1);
             }
         }

      for(int ibin =0; ibin<nbin_Count[i]; ibin++)
       {
         Sum_Count[ibin][0] = Count[ibin][0];
         Sum_Count[ibin][nturn_Count[i]/2] = Count[ibin][nturn_Count[i]/2];
         Sum_Count_peaksum[ibin][0] = Count_peaksum[ibin][0];
         Sum_Count_peaksum[ibin][nturn_Count[i]/2] = Count_peaksum[ibin][nturn_Count[i]/2];
         sum10Count[ibin][0] = Count[ibin][0];
         sum10Count[ibin][nturn_Count[i]/2] = Count[ibin][nturn_Count[i]/2];
       }
       for(int jturn = 1; jturn <nturn_Count[i]/2; jturn++)
         {
            for(int ibin =0; ibin<nbin_Count[i]; ibin++)
             {
               Sum_Count[ibin][jturn] = Sum_Count[ibin][jturn-1] + Count[ibin][jturn];
               Sum_Count_peaksum[ibin][jturn] = Sum_Count_peaksum[ibin][jturn-1] + Count_peaksum[ibin][jturn];
               sumtest_sum= sumtest+Sum_Count[ibin][jturn];
               hprof2d_sum_count -> Fill(ibin*5,jturn,Sum_Count[ibin][jturn],1);
               hprof2d_sum_count_peaksum -> Fill(ibin*5,jturn,Sum_Count_peaksum[ibin][jturn],1);
             }
           if( (jturn %10)==0)
             {
              for(int ibin =0; ibin<nbin_Count[i]; ibin++)
               {
                   sum10Count[ibin][jturn] = sum10Count[ibin][jturn-1] + Count[ibin][jturn];
                   hprof2d_count_event_turn10 -> Fill(ibin*5,jturn,sum10Count[ibin][jturn],1);
                }
            }
         }
       for(int jturn = nturn_Count[i]/2 +1; jturn <nturn_Count[i]; jturn++)
         {
            for(int ibin =0; ibin<nbin_Count[i]; ibin++)
             {
               Sum_Count[ibin][jturn] = Sum_Count[ibin][jturn-1] + Count[ibin][jturn];
               Sum_Count_peaksum[ibin][jturn] = Sum_Count_peaksum[ibin][jturn-1] + Count_peaksum[ibin][jturn];
               sumtest_sum= sumtest+Sum_Count[ibin][jturn];
               hprof2d_sum_count -> Fill(ibin*5,jturn,Sum_Count[ibin][jturn],1);
               hprof2d_sum_count_peaksum -> Fill(ibin*5,jturn,Sum_Count_peaksum[ibin][jturn],1);
               //hprof2d_count_event_turn10 -> Fill(ibin*5,i,Sum_Count[ibin][jturn],1);
             }
           if( (jturn %10)==0)
             {
              for(int ibin =0; ibin<nbin_Count[i]; ibin++)
               {
                   sum10Count[ibin][jturn] = sum10Count[ibin][jturn-1] + Count[ibin][jturn];
                   hprof2d_count_event_turn10 -> Fill(ibin*5,jturn,sum10Count[ibin][jturn],1);
                }
            }
           //hprof2d_count_event_turn10 -> Fill(ibin*5,jturn,sum10Count[ibin][jturn],1);
         }
       printf("sumtest %d \n",sumtest); 
       printf("sumtest_sum %d \n",sumtest_sum); 
       printf("Come here here here\n");
 

  }
 
  for(int ibin =0; ibin <2000; ibin++)
   {
     h1_batch1->SetBinContent(ibin,sum_Count_event_batch1[ibin]);
     h1_batch2->SetBinContent(ibin,sum_Count_event_batch2[ibin]);
   }

  double integral_outtime = h1_batch1->Integral(1000/5,3000/5); 
  double integral_intime = h1_batch1->Integral(3000/5,5000/5);
  printf("integral_intime %d \n", integral_intime); 
  printf("integral_outtime %d \n", integral_outtime); 
  //int ibin_turn=0;
  //for(int ievn =nevn_begin; ievn<nevn; ievn++)
  //  {
  //    printf("ievn %d \n",ievn);
  //     for(int ipeak=0; ipeak<nInTimepeak[ievn]; ipeak++)
  //      {
  //         //printf("vInTimepeakhigh_time_ns = %d\n",vInTimepeakhigh_time_ns[ievn][ipeak]);
  //         ibin_turn =0;
  //         for(int ibegin=0; ibegin <nInTimeBeginInTime[nevn_begin]; ibegin++)
  //          {
  //            //printf("vInTimeBeginInTime %d \n", vInTimeBeginInTime[nevn_begin][ibegin]);
  //            //printf("ibin_turn =%d \n",ibin_turn);
  //            for(int ibin=0; ibin < nbin ; ibin++)
  //              {
  //                if(vInTimepeakhigh_time_ns[ievn][ipeak] >= vInTimeBeginInTime[nevn_begin][ibegin]*1000 + ibin*5
  //                    && vInTimepeakhigh_time_ns[ievn][ipeak] <= vInTimeBeginInTime[nevn_begin][ibegin]*1000 + (ibin+1)*5
  //                  ){
  //                      //Count[ibin][ibegin]=Count[ibin][ibegin]+1;
  //                      Count[ibin][ibin_turn]=Count[ibin][ibin_turn]+1;
  //                      if(ibegin < 314)
  //                       {
  //                         Count_event_batch1[ibin][ievn]=Count_event_batch1[ibin][ievn]+1;
  //                       }
  //                      if(ibegin>313)
  //                       {
  //                         Count_event_batch2[ibin][ievn]=Count_event_batch2[ibin][ievn]+1;
  //                       }
  //                      hprof2d_peakhigh -> Fill(ibin*5,ibegin,vInTimepeakhigh[ievn][ipeak],1);
  //                      //printf("vInTimeBeginInTime %d \n", vInTimeBeginInTime[i][ibegin]*1000+ibin*15.9 );
  //                      //printf("vInTimepeakhigh_time_ns %d \n", vInTimepeakhigh_time_ns[i][ipeak] );
  //                   }
  //                   
  //              }
  //            if(ibegin % 25 ==0)
  //             {
  //               ibin_turn = ibin_turn+1;
  //             }
  //          }
 
  //      }
  //   }   

//double count_sum=0;
//    //for(int ibegin = 0; ibegin < nInTimeBeginInTime[nevn_begin]; ibegin++)
//    for(int iturn = 0; iturn < nbin_turn; iturn++)
//     {
//       //printf("ibegin %d \t %d \n",ibegin, vInTimeBeginInTime[0][ibegin]);
//       for(int ibin = 0 ; ibin < nbin; ibin++)
//         {
//         // printf(" %d \t", Count[ibin][ibegin]);
//           //hprof2d_count -> Fill(ibin*5,ibegin,Count[ibin][ibegin],1);
//           hprof2d_count -> Fill(ibin*5,iturn*25,Count[ibin][iturn],1);
//           hprof2d_count_log -> Fill(ibin*5,iturn*25,TMath::Log10( Count[ibin][iturn]),1);
//           //h3f_count -> Fill(ibin*10,ibegin,Count[ibin][ibegin]);
//           //if(Count[ibin][ibegin] >0)
//           //  {
//           //    printf("Count[%d][%d] = %d\n",ibin,ibegin,Count[ibin][ibegin]);
//           //  }
//           count_sum = count_sum + Count[ibin][iturn];
//         }
//         //printf("\n");
//     }
//        
//  printf("count_sum = %d\n",count_sum);
//
//  for(int ievn =nevn_begin; ievn<nevn; ievn++)
//    {
//       for(int ibin = 0 ; ibin < nbin; ibin++)
//         {
//           hprof2d_count_event_batch1 -> Fill(ibin*5,ievn,Count_event_batch1[ibin][ievn],1);
//           hprof2d_count_event_batch2 -> Fill(ibin*5,ievn,Count_event_batch2[ibin][ievn],1);
//
//         } 
//    }
//
//
//
//  TAxis *axis_intime = h1_peaksum_intime->GetXaxis();
//  int bmin_intime = axis_intime -> FindBin(-150000); 
//  int bmax_intime = axis_intime -> FindBin(0);
//  double integral_intime = h1_peaksum_intime->Integral(bmin_intime,bmax_intime); 
//  printf("integral_intime = %d \n", integral_intime);
//
//  TAxis *axis_outtime = h1_peaksum_outtime->GetXaxis();
//  int bmin_outtime = axis_outtime -> FindBin(-150000); 
//  int bmax_outtime = axis_outtime -> FindBin(0);
//  double integral_outtime = h1_peaksum_outtime->Integral(bmin_intime,bmax_intime); 
  //printf("integral_outtime = %d \n", integral_outtime);


//--   TCanvas *c_hprof2d_intime_vpeakhigh_coin_ms = new TCanvas("c_hprof2d_intime_vpeakhigh_coin_ms","profile in-time peak high",200,10,700,500);
//--   TCanvas *c_hprof2d_outtime_vpeakhigh_coin_ms = new TCanvas("c_hprof2d_outtime_vpeakhigh_coin_ms","profile in-time peak high",200,10,700,500);
//--
//--   TCanvas *c_hprof2d_intime_vpeaksum_coin_ms = new TCanvas("c_hprof2d_intime_vpeaksum_coin_ms","profile in-time peak sum",200,10,700,500);
//--   TCanvas *c_hprof2d_outtime_vpeaksum_coin_ms = new TCanvas("c_hprof2d_outtime_vpeaksum_coin_ms","profile in-time peak sum",200,10,700,500);
//--
//--   TCanvas *c_hprof2d_intime_vpeakhigh_coin_us_batch1 = new TCanvas("c_hprof2d_intime_vpeakhigh_coin_us_batch1","profile in-time peak high batch1",200,10,700,500);
//--   TCanvas *c_hprof2d_intime_vpeakhigh_coin_us_batch2 = new TCanvas("c_hprof2d_intime_vpeakhigh_coin_us_batch2","profile in-time peak high batch2",200,10,700,500);
//--
//--   TCanvas *c_hprof2d_outtime_vpeakhigh_coin_us_batch1 = new TCanvas("c_hprof2d_outtime_vpeakhigh_coin_us_batch1","profile out-time peak high batch1",200,10,700,500);
//--
//--   TCanvas *c_hprof2d_intime_vpeaksum_coin_us_batch1 = new TCanvas("c_hprof2d_intime_vpeaksum_coin_us_batch1","profile in-time peak sum batch1",200,10,700,500);
//--   TCanvas *c_hprof2d_intime_vpeaksum_coin_us_batch2 = new TCanvas("c_hprof2d_intime_vpeaksum_coin_us_batch2","profile in-time peak sum batch2",200,10,700,500);
//--
//--   TCanvas *c_hprof2d_outtime_vpeaksum_coin_us_batch1 = new TCanvas("c_hprof2d_outtime_vpeaksum_coin_us_batch1","profile out-time peak sum batch1",200,10,700,500);

   //TCanvas *c_hprof2d_intime_vpeaksum_coin_us_batch3 = new TCanvas("c_hprof2d_intime_vpeaksum_coin_us_batch3","profile in-time peak sum",200,10,700,500);
   //TCanvas *c_hprof2d_intime_vpeaksum_coin_us_batch4 = new TCanvas("c_hprof2d_intime_vpeaksum_coin_us_batch4","profile in-time peak sum",200,10,700,500);

//--   TCanvas *c_intime_sum_tail_peak_high = new TCanvas("c_intime_sum_tail_peak_high"," in-time (tail / total) vs peak high",200,10,700,500);
//--   TCanvas *c_outtime_sum_tail_peak_high = new TCanvas("c_outtime_sum_tail_peak_high","out-time (tail / total) vs peak high",200,10,700,500);
//--
//--   TCanvas *c_h1_npeak_intime = new TCanvas("c_h1_npeak_intime","No. of peak per pulse in-time",200,10,700,500);
//--   TCanvas *c_h1_npeak_outtime = new TCanvas("c_h1_npeak_outtime","No. of peak per pulse out-time",200,10,700,500);
//--
//--   TCanvas *c_h1_peaksum = new TCanvas("c_h1_peaksum","Histogram peak area",200,10,700,500);

   TCanvas *c_hprof2d_count = new TCanvas("c_hprof2d_count","profile count",200,10,700,500);
   TCanvas *c_hprof2d_count_peaksum = new TCanvas("c_hprof2d_count_peaksum","profile count peaksum",200,10,700,500);
   TCanvas *c_hprof2d_sum_count = new TCanvas("c_hprof2d_sum_count","profile sum count",200,10,700,500);
   TCanvas *c_hprof2d_sum_count_peaksum = new TCanvas("c_hprof2d_sum_count_peaksum","profile sum count_peaksum",200,10,700,500);
   //---TCanvas *c_hprof2d_peakhigh = new TCanvas("c_hprof2d_peakhigh","profile peakhigh",200,10,700,500);
   TCanvas *c_hprof2d_count_event_batch1 = new TCanvas("c_hprof2d_count_event_batch1","profile count_event_batch1",200,10,700,500);
   TCanvas *c_hprof2d_count_event_batch2 = new TCanvas("c_hprof2d_count_event_batch2","profile count_event_batch2",200,10,700,500);
   TCanvas *c_hprof2d_count_event_turn10 = new TCanvas("c_hprof2d_count_event_turn10","profile count_event_turn10",200,10,700,500);
   //TCanvas *c_h3f_count = new TCanvas("c_h3f_count","h3f count",200,10,700,500);

   TCanvas *c_h1_batch1 = new TCanvas("c_h1_batch1","h1_batch1",200,10,700,500);
   TCanvas *c_h1_batch2 = new TCanvas("c_h1_batch2","h1_batch2",200,10,700,500);
//--  c_hprof2d_intime_vpeakhigh_coin_ms -> cd();
//--  hprof2d_intime_vpeakhigh_coin_ms ->GetXaxis()->SetTitle("Time(msec)");
//--  hprof2d_intime_vpeakhigh_coin_ms ->GetYaxis()->SetTitle("Acc. Trig. Events");
//--  hprof2d_intime_vpeakhigh_coin_ms -> Draw("colz");
//--
//--  c_hprof2d_outtime_vpeakhigh_coin_ms -> cd();
//--  hprof2d_outtime_vpeakhigh_coin_ms -> Draw("colz");
//--
//--  c_hprof2d_intime_vpeaksum_coin_ms -> cd();
//--  hprof2d_intime_vpeaksum_coin_ms -> Draw("colz");
//--
//--  c_hprof2d_outtime_vpeaksum_coin_ms -> cd();
//--  hprof2d_outtime_vpeaksum_coin_ms -> Draw("colz");
//--
//--  c_hprof2d_intime_vpeakhigh_coin_us_batch1 -> cd();
//--  hprof2d_intime_vpeakhigh_coin_us_batch1 -> Draw("colz");
//--
//--  c_hprof2d_intime_vpeakhigh_coin_us_batch2 -> cd();
//--  hprof2d_intime_vpeakhigh_coin_us_batch2 ->GetXaxis()->SetTitle("us");
//--  hprof2d_intime_vpeakhigh_coin_us_batch2 ->GetYaxis()->SetTitle("Acc. Trig. Events");
//--  hprof2d_intime_vpeakhigh_coin_us_batch2 -> Draw("colz");
//--
//--  c_hprof2d_outtime_vpeakhigh_coin_us_batch1 -> cd();
//--  hprof2d_outtime_vpeakhigh_coin_us_batch1 -> Draw("colz");
//--
//--  c_hprof2d_intime_vpeaksum_coin_us_batch1 -> cd();
//--  hprof2d_intime_vpeaksum_coin_us_batch1 -> Draw("colz");
//--
//--  c_hprof2d_intime_vpeaksum_coin_us_batch2 -> cd();
//--  hprof2d_intime_vpeaksum_coin_us_batch2 -> Draw("colz");
//--
//--  c_hprof2d_outtime_vpeaksum_coin_us_batch1 -> cd();
//--  hprof2d_outtime_vpeaksum_coin_us_batch1 -> Draw("colz");
//--
//--  //c_hprof2d_intime_vpeaksum_coin_us_batch3 -> cd();
//--  //hprof2d_intime_vpeaksum_coin_us_batch3 -> Draw("colz");
//--
//--  //c_hprof2d_intime_vpeaksum_coin_us_batch4 -> cd();
//--  //hprof2d_intime_vpeaksum_coin_us_batch4 -> Draw("colz");
//--
//--  c_intime_sum_tail_peak_high ->cd();
//--  intime_sum_tail_peak_high -> Draw("colz");
//--
//--  c_outtime_sum_tail_peak_high ->cd();
//--  outtime_sum_tail_peak_high -> Draw();
//--
//--  c_h1_npeak_intime ->cd();
//--  h1_npeak_intime -> Draw();
//--
//--  c_h1_npeak_outtime ->cd();
//--  h1_npeak_outtime -> Draw();
//--
//--  c_h1_peaksum ->cd();
//--  h1_peaksum_intime -> Draw();
//--  h1_peaksum_outtime ->SetLineColor(kRed);
//--  h1_peaksum_outtime -> Draw("same");

  c_hprof2d_count->cd();
  hprof2d_count->GetXaxis()->SetTitle("ns");
  hprof2d_count->GetYaxis()->SetTitle("Turn number");
  hprof2d_count->Draw("colz");

  c_hprof2d_count_peaksum->cd();
  hprof2d_count_peaksum->GetXaxis()->SetTitle("ns");
  hprof2d_count_peaksum->GetYaxis()->SetTitle("Turn number");
  hprof2d_count_peaksum->Draw("colz");

  c_hprof2d_sum_count->cd();
  hprof2d_sum_count->GetXaxis()->SetTitle("ns");
  hprof2d_sum_count->GetYaxis()->SetTitle("Turn number");
  hprof2d_sum_count->Draw("colz");

  c_hprof2d_sum_count_peaksum->cd();
  hprof2d_sum_count_peaksum->GetXaxis()->SetTitle("ns");
  hprof2d_sum_count_peaksum->GetYaxis()->SetTitle("Turn number");
  hprof2d_sum_count_peaksum->Draw("colz");

  c_hprof2d_count_event_batch1->cd();
  hprof2d_count_event_batch1->GetXaxis()->SetTitle("ns");
  hprof2d_count_event_batch1->GetYaxis()->SetTitle("Acc. Trig. number");
  hprof2d_count_event_batch1->Draw("colz");

  c_hprof2d_count_event_batch2->cd();
  hprof2d_count_event_batch2->GetXaxis()->SetTitle("ns");
  hprof2d_count_event_batch2->GetYaxis()->SetTitle("Acc. Trig. number");
  hprof2d_count_event_batch2->Draw("colz");

  c_hprof2d_count_event_turn10->cd();
  hprof2d_count_event_turn10->GetXaxis()->SetTitle("ns");
  hprof2d_count_event_turn10->GetYaxis()->SetTitle("Acc. Trig. number");
  hprof2d_count_event_turn10->Draw("colz");

  c_h1_batch1->cd();
  h1_batch1->GetXaxis()->SetTitle("ns");
  h1_batch1->Draw();

  c_h1_batch2->cd();
  h1_batch2->GetXaxis()->SetTitle("ns");
  h1_batch2->Draw();

//---
//---  c_hprof2d_peakhigh->cd();
//---  hprof2d_peakhigh->GetXaxis()->SetTitle("ns");
//---  hprof2d_peakhigh->GetYaxis()->SetTitle("Turn number");
//---  hprof2d_peakhigh->Draw("colz");

  //c_h3f_count->cd();
  //h3f_count->GetXaxis()->SetTitle("ns");
  //h3f_count->GetYaxis()->SetTitle("Turn number");
  //h3f_count->Draw("cont3");

 // TFile *fhis = new TFile(rootfilehist,"RECREATE");
 // hprof2d_count -> Write();
 // hprof2d_count_log -> Write();
 // hprof2d_count_event_batch1 -> Write();
 // hprof2d_count_event_batch2 -> Write();
 // fhis->Close();

  
}
