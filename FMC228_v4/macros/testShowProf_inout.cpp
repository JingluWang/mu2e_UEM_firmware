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



void testShowProf_inout(char* rootfile, int nevn_begin, int nevn,char* rootfilehist)
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
 
  Int_t vInTimeBeginInTime[10000][10000]; //ns
  Int_t Count[10000][10000]; //[i bin][j Recycler beam turn]
  Int_t Count_event_batch1[10000][10000]; //[i bin][event number Recycler]
  Int_t Count_event_batch2[10000][10000]; //[i bin][event number Recycler]

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
  Int_t nInTimeBeginInTime[10000];
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

  h1_peaksum_intime = new TH1F("h1_npeaksum_intime","Histogram area in-time", 1000,-150000,0);
  h1_peaksum_outtime = new TH1F("h1_npeaksum_outtime","Histogram area out-time", 1000,-150000,0);


int nbin = 1000;
int nbin_turn = 26;
 
  hprof2d_count = new TProfile2D("hprof2d_count"," count of ibin vs j Recycler Beam Turn ",nbin,0,nbin*5,nbin_turn,0,nbin_turn*25,0,50);
  hprof2d_count_log = new TProfile2D("hprof2d_count_log","log10(count) of ibin vs j Recycler Beam Turn ",nbin,0,nbin*5,nbin_turn,0,nbin_turn*25,0,1);
  //h3f_count = new TH3F("h3f_count"," count of ibin vs j Recycler Beam Turn",nbin,0,nbin*10,600,0,600,10,0,10);
  hprof2d_peakhigh = new TProfile2D("hprof2d_peakhigh"," count of ibin vs j Recycler Beam Turn ",nbin,0,nbin*5,nbin_turn,0,nbin_turn*25,-2000,0);

  hprof2d_count_event_batch1 = new TProfile2D("hprof2d_count_event_batch1"," count of ibin vs j event batch1 ",nbin,0,nbin*5,nevn - nevn_begin,nevn_begin,nevn,0,50);
  hprof2d_count_event_batch2 = new TProfile2D("hprof2d_count_event_batch2"," count of ibin vs j event batch2 ",nbin,0,nbin*5,nevn - nevn_begin,nevn_begin,nevn,0,50);

  printf("come here 0 \n");
  //tr->SetBranchAddress("ch3.",&coineventfitfunction);
  tr->SetBranchAddress("inout.",&intimeouttimeevent);
  printf("come here 1 \n");
  for(int i= nevn_begin; i< nevn ;i++)
  //for(int i= 0; i< nevn ;i++)
  //for(int i= 0; i< nevents ;i++)
  //for(int i= 0; i< 10 ;i++)
   { 
	printf("event %d \n",i);
        tr->GetEntry(i);
        //printf("event %d \n",i);
        //printf("ch3  \n");
        nInTimepeak[i] = intimeouttimeevent->GetVInTimePeakHighSize();
        nInTimeBeginInTime[i] = intimeouttimeevent->GetVInTimeBeginInTimeSize();
        nInTimesum[i] = intimeouttimeevent->GetVInTimePeakSumSize();
        nOutTimepeak[i] = intimeouttimeevent->GetVOutTimePeakHighSize();
        nOutTimesum[i] = intimeouttimeevent->GetVOutTimePeakSumSize();
        printf("nInTimepeak = %d\t",nInTimepeak[i]);
        printf("nInTimeBeginInTime = %d\t",nInTimeBeginInTime[i]);
        printf("nOutTimepeak = %d\t",nOutTimepeak[i]);
        printf("nInTimesum = %d\t",nInTimesum[i]);
        printf("nOutTimesum = %d\n",nOutTimesum[i]);
        for(int j =0; j< nInTimepeak[i] ;j++)
        {	   
           vInTimepeakhigh[i][j]=intimeouttimeevent->GetVInTimePeakHigh()[j];
           vInTimepeakhigh_time_ms[i][j]=intimeouttimeevent->GetVInTimePeakHighTime()[j]*0.000001; //convert to ms
           vInTimepeakhigh_time_us[i][j]=intimeouttimeevent->GetVInTimePeakHighTime()[j]*0.001; //convert to us
           vInTimepeakhigh_time_ns[i][j]=intimeouttimeevent->GetVInTimePeakHighTime()[j]; //ns
           //printf("vInTimepeakhigh_time_ns = %d\t",vInTimepeakhigh_time_ns[i][j]);

           hprof2d_intime_vpeakhigh_coin_ms -> Fill(vInTimepeakhigh_time_ms[i][j],i,vInTimepeakhigh[i][j],1);
           hprof2d_intime_vpeakhigh_coin_us_batch1 -> Fill(vInTimepeakhigh_time_us[i][j],i,vInTimepeakhigh[i][j],1);
           hprof2d_intime_vpeakhigh_coin_us_batch2 -> Fill(vInTimepeakhigh_time_us[i][j],i,vInTimepeakhigh[i][j],1);

        }
       printf("Come here here\n");
       for(int ibegin = 0; ibegin < nInTimeBeginInTime[i]; ibegin++)
        {
          vInTimeBeginInTime[i][ibegin] = intimeouttimeevent->GetVInTimeBeginInTime()[ibegin];
          //printf("ibegin %d \n",vInTimeBeginInTime[i][ibegin]);
        }

       printf("Come here here here\n");
 
       //for(int ibegin = 0; ibegin < nInTimeBeginInTime[i]; ibegin++)
       // {
       //   //printf("ibegin %d\t",ibegin);
       //   //printf("ibeginTime %d \n",vInTimeBeginInTime[i][ibegin]*1000);
       //   //if(ibegin == 290)
       //   //  {
       //   //    printf("vInTimeBeginInTime %d\n", vInTimeBeginInTime[i][ibegin]*1000);
       //   //    for(int ibin = 0 ; ibin<1000; ibin++)
       //   //     {
       //   //          printf("vInTimeBeginInTime +ibin*15.9 %d\n", vInTimeBeginInTime[i][ibegin]*1000+ibin*15.9);
       //   //     }
       //   //  }
       //   for(int ibin = 0 ; ibin<1000; ibin++)
       //     {
       //       for(int ipeak; ipeak<nInTimepeak[i]; ipeak++)
       //         {
       //            printf("vInTimepeakhigh_tim_ns %d\n", vInTimepeakhigh_time_ns[i][ipeak]);
       //            if(vInTimepeakhigh_time_ns[i][ipeak] >= vInTimeBeginInTime[i][ibegin]*1000  //convert from us to ns 
       //               && vInTimepeakhigh_time_ns[i][ipeak] <= vInTimeBeginInTime[i][ibegin]*1000+15.9*ibin )
       //              {
       //                  Count[ibin][ibegin] = Count[ibin][ibegin]+1;
       //              } 
       //         }
       //     }
       // }

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

  int ibin_turn=0;
  for(int ievn =nevn_begin; ievn<nevn; ievn++)
    {
      printf("ievn %d \n",ievn);
       for(int ipeak=0; ipeak<nInTimepeak[ievn]; ipeak++)
        {
           //printf("vInTimepeakhigh_time_ns = %d\n",vInTimepeakhigh_time_ns[ievn][ipeak]);
           ibin_turn =0;
           for(int ibegin=0; ibegin <nInTimeBeginInTime[nevn_begin]; ibegin++)
            {
              //printf("vInTimeBeginInTime %d \n", vInTimeBeginInTime[nevn_begin][ibegin]);
              //printf("ibin_turn =%d \n",ibin_turn);
              for(int ibin=0; ibin < nbin ; ibin++)
                {
                  if(vInTimepeakhigh_time_ns[ievn][ipeak] >= vInTimeBeginInTime[nevn_begin][ibegin]*1000 + ibin*5
                      && vInTimepeakhigh_time_ns[ievn][ipeak] <= vInTimeBeginInTime[nevn_begin][ibegin]*1000 + (ibin+1)*5
                    ){
                        //Count[ibin][ibegin]=Count[ibin][ibegin]+1;
                        Count[ibin][ibin_turn]=Count[ibin][ibin_turn]+1;
                        if(ibegin < 314)
                         {
                           Count_event_batch1[ibin][ievn]=Count_event_batch1[ibin][ievn]+1;
                         }
                        if(ibegin>313)
                         {
                           Count_event_batch2[ibin][ievn]=Count_event_batch2[ibin][ievn]+1;
                         }
                        hprof2d_peakhigh -> Fill(ibin*5,ibegin,vInTimepeakhigh[ievn][ipeak],1);
                        //printf("vInTimeBeginInTime %d \n", vInTimeBeginInTime[i][ibegin]*1000+ibin*15.9 );
                        //printf("vInTimepeakhigh_time_ns %d \n", vInTimepeakhigh_time_ns[i][ipeak] );
                     }
                     
                }
              if(ibegin % 25 ==0)
               {
                 ibin_turn = ibin_turn+1;
               }
            }
 
        }
     }   

double count_sum=0;
    //for(int ibegin = 0; ibegin < nInTimeBeginInTime[nevn_begin]; ibegin++)
    for(int iturn = 0; iturn < nbin_turn; iturn++)
     {
       //printf("ibegin %d \t %d \n",ibegin, vInTimeBeginInTime[0][ibegin]);
       for(int ibin = 0 ; ibin < nbin; ibin++)
         {
         // printf(" %d \t", Count[ibin][ibegin]);
           //hprof2d_count -> Fill(ibin*5,ibegin,Count[ibin][ibegin],1);
           hprof2d_count -> Fill(ibin*5,iturn*25,Count[ibin][iturn],1);
           hprof2d_count_log -> Fill(ibin*5,iturn*25,TMath::Log10( Count[ibin][iturn]),1);
           //h3f_count -> Fill(ibin*10,ibegin,Count[ibin][ibegin]);
           //if(Count[ibin][ibegin] >0)
           //  {
           //    printf("Count[%d][%d] = %d\n",ibin,ibegin,Count[ibin][ibegin]);
           //  }
           count_sum = count_sum + Count[ibin][iturn];
         }
         //printf("\n");
     }
        
  printf("count_sum = %d\n",count_sum);

  for(int ievn =nevn_begin; ievn<nevn; ievn++)
    {
       for(int ibin = 0 ; ibin < nbin; ibin++)
         {
           hprof2d_count_event_batch1 -> Fill(ibin*5,ievn,Count_event_batch1[ibin][ievn],1);
           hprof2d_count_event_batch2 -> Fill(ibin*5,ievn,Count_event_batch2[ibin][ievn],1);

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

   //---TCanvas *c_hprof2d_count = new TCanvas("c_hprof2d_count","profile count",200,10,700,500);
   //---TCanvas *c_hprof2d_peakhigh = new TCanvas("c_hprof2d_peakhigh","profile peakhigh",200,10,700,500);
   //---TCanvas *c_hprof2d_count_event_batch1 = new TCanvas("c_hprof2d_count_event_batch1","profile count_event_batch1",200,10,700,500);
   //---TCanvas *c_hprof2d_count_event_batch2 = new TCanvas("c_hprof2d_count_event_batch2","profile count_event_batch2",200,10,700,500);
   //TCanvas *c_h3f_count = new TCanvas("c_h3f_count","h3f count",200,10,700,500);

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

//---  c_hprof2d_count->cd();
//---  hprof2d_count->GetXaxis()->SetTitle("ns");
//---  hprof2d_count->GetYaxis()->SetTitle("Turn number");
//---  hprof2d_count->Draw("colz");
//---
//---  c_hprof2d_count_event_batch1->cd();
//---  hprof2d_count_event_batch1->GetXaxis()->SetTitle("ns");
//---  hprof2d_count_event_batch1->GetYaxis()->SetTitle("Acc. Trig. number");
//---  hprof2d_count_event_batch1->Draw("colz");
//---
//---  c_hprof2d_count_event_batch2->cd();
//---  hprof2d_count_event_batch2->GetXaxis()->SetTitle("ns");
//---  hprof2d_count_event_batch2->GetYaxis()->SetTitle("Acc. Trig. number");
//---  hprof2d_count_event_batch2->Draw("colz");
//---
//---  c_hprof2d_peakhigh->cd();
//---  hprof2d_peakhigh->GetXaxis()->SetTitle("ns");
//---  hprof2d_peakhigh->GetYaxis()->SetTitle("Turn number");
//---  hprof2d_peakhigh->Draw("colz");

  //c_h3f_count->cd();
  //h3f_count->GetXaxis()->SetTitle("ns");
  //h3f_count->GetYaxis()->SetTitle("Turn number");
  //h3f_count->Draw("cont3");

  TFile *fhis = new TFile(rootfilehist,"RECREATE");
  hprof2d_count -> Write();
  hprof2d_count_log -> Write();
  hprof2d_count_event_batch1 -> Write();
  hprof2d_count_event_batch2 -> Write();
  fhis->Close();

  
}
