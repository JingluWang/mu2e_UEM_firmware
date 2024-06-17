#include <iostream>
#include <fstream>
#include <TRandom.h>
#include <TFile.h>
#include <TTree.h>
#include <TCanvas.h>
#include <TStyle.h>
#include <TMath.h>
#include <Riostream.h>
#include "../dataClasses/RawEvent.h"
R__LOAD_LIBRARY($/home/kujiwado/WorkDir/FileTransfer/mu2euem/FMC228_v3/libData.so)

void fmc228_data_peakstream_convert_root_v9_2024() {
  
  char buf[4];
  char recvbuf[9000];
  unsigned int word;
  short adcvalue;
  int sample_number =0;
  //unsigned int peakword;
  short peakadcvalue;
  short countervalue;
  short sumadcvalue;
  
  //open file data
  ifstream filein;
  //filein.open("../test_Nov1_5000ns.dat",ios::in | ios::binary);
  filein.open("/home/kujiwado/WorkDir/FileTransfer/mu2euem/test7.dat",ios::in | ios::binary);
  if(!filein){
	printf("error can not find file \n");
  }
  //filein.read(buf,4);

  TFile *f = new TFile("datafmc228i_v9_2024.root","RECREATE");
  // create a TTree
  TTree *tree = new TTree("rtree","tree for FMC228 analysis");
  
  TString bName;
  RawEvent* event[4];
 
  for(Int_t i = 0; i<4; i++){
	event[i] = new RawEvent();
	bName.Form("ch%d.",i);
	tree->Branch(bName.Data(),"RawEvent",&event[i]);
  }  
  


  //printf("buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
  //printf("buf4 %2.2x \t buf5 %2.2x \t buf6 %2.2x \t buf7 %2.2x \n", buf[4],buf[5],buf[6],buf[7]);
  //printf("buf8 %2.2x \t buf9 %2.2x \t buf10 %2.2x \t buf11 %2.2x \n", buf[8],buf[9],buf[10],buf[11]);
  int k =0;
  Int_t nevent=0;
  Int_t nofevent;
  int card_number;
  int channel_number;
  int peakchannel_number;
  while (!filein.eof()){
    filein.read(buf,4);
    //printf("buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
    //k=k+1;
    if((buf[0] == static_cast<char>(0xff))
        && (buf[1] == static_cast<char>(0xff))
        && (buf[2] == static_cast<char>(0xff))
        && (buf[3] == static_cast<char>(0xff))
    ){
        filein.read(buf,4);
        //printf("buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
        while( (buf[0] == static_cast<char>(0xff))
	        && (buf[1] == static_cast<char>(0xff))
	        && (buf[2] == static_cast<char>(0xff))
	        && (buf[3] == static_cast<char>(0xff))
                ){
		  filein.read(buf,4);
		  printf("header repeat\n");
		 }
	if((buf[0] == static_cast<char>(0xf4))
	    && (buf[1] == static_cast<char>(0xf3))
	    && (buf[2] == static_cast<char>(0xf2))
	    && (buf[3] == static_cast<char>(0xf1))
          ){
            printf("buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
	    filein.read(buf,4);
	    if(//(buf[0] == static_cast<char>(0xf4))
	        (buf[1] == static_cast<char>(0xcc))
	        && (buf[2] == static_cast<char>(0xcc))
	        && (buf[3] == static_cast<char>(0xfc))
              ){
        	nevent = nevent+1;   
		nofevent= nevent;
                printf("begin event %d \n",nevent);
		card_number = buf[0]&0x03;
		printf("FMC228 Card Number # %d \n",card_number);
	        //filein.read(buf,4);//
	        filein.read(buf,4);// event trig
	        filein.read(buf,4);// event module number
                //printf("buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
		}
	   }
	    
    }
    // 
    // read raw waveform data
    //
    else if((buf[0] == static_cast<char>(0xfd))
        && (buf[1] == static_cast<char>(0xfd))
        && (buf[2] == static_cast<char>(0xfd))
        && (buf[3] == static_cast<char>(0xfd))
    ){
      printf("++++ Begin of Raw data event %d\n", nevent);
      while (1) //(buf[0] != static_cast<char>(0xfe))
              //&& (buf[1] != static_cast<char>(0xfe))
              //&& (buf[2] != static_cast<char>(0xfe))
              //&& (buf[3] != static_cast<char>(0xfe))
       //){
      	{   
	   filein.read(buf,4);

           if((buf[0] == static_cast<char>(0xf4))
               && (buf[1] == static_cast<char>(0xf3))
               && (buf[2] == static_cast<char>(0xf2))
               && (buf[3] == static_cast<char>(0xf1))
              ){
                  filein.read(buf,4); //event number
                  //printf("raw evn buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
                  filein.read(buf,4);
                  //printf("++++raw evn buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
	          while( (buf[0] == static_cast<char>(0xfa))
	             && (buf[1] == static_cast<char>(0xfa))
	             ){
			//while(1){		
	                 channel_number = buf[2]&0x03;
                         printf("+++++++ Channel %d \n",channel_number);

                         filein.read(buf,4); // waveform
                         //printf("raw evn buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
                         filein.read(buf,4); // trigg mask
                         //printf("raw evn buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
                         filein.read(buf,4); // stat
                         //printf("raw evn buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
                         filein.read(buf,4); // status word
                         //printf("raw evn buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
                         filein.read(buf,4); // bco low
                         //printf("raw evn buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
                         filein.read(buf,4); // bco high

                         //printf("raw evn buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
                         
			 // 
			 // data raw decode 
			 //
                         //filein.read(recvbuf,1200); //600ns
			 sample_number =0;
			 //for(int i =0; i<(1200/4); i++){
			 while (1){
				
                                filein.read(buf,4); // data

				if( (buf[0] == static_cast<char>(0xfb))
                                    && (buf[1] == static_cast<char>(0xfb))
               			    && (buf[2] == static_cast<char>(0xfb))
               			    && (buf[3] == static_cast<char>(0xfb))
				){
				  
             	 		     printf("+++++++ Channel end %d \n", channel_number);
				     printf("k = %d \n", k);
	        		     break;
				}
				    
				word = ( (buf[0]&0x000000ff) | ((buf[1]<<8)& 0x0000ffff) | ((buf[2]<<16)&0x00ffffff) | ((buf[3]<<24)&0xffffffff));
				//word = ((unsigned int *)recvbuf)[i];

				adcvalue = ((short)(word & 0xfff0))/16;
				sample_number = sample_number+1;

				if(channel_number == 0){
		                   //ch0->npoints.push_back(sample_number);
	                           //ch0->ADC.push_back(adcvalue);
                                }else if(channel_number == 1){
		                   //ch1->npoints.push_back(sample_number);
	                           //ch1->ADC.push_back(adcvalue);
                                //}else if(channel_number == 2){
		                //   evn->card0.ch2.npoints.push_back(sample_number);
	                        //   evn->card0.ch2.ADC.push_back(adcvalue);
                                //}else if(channel_number == 3){
		                //   evn->card0.ch3.npoints.push_back(sample_number);
	                        //   evn->card0.ch3.ADC.push_back(adcvalue);
				}

				adcvalue = ((short)((word>>16) & 0xfff0))/16;
				sample_number = sample_number+1;
				if(channel_number == 0){
		                   //ch0->npoints.push_back(sample_number);
	                           //ch0->ADC.push_back(adcvalue);
                                }else if(channel_number == 1){
		                   //ch1->npoints.push_back(sample_number);
	                           //ch1->ADC.push_back(adcvalue);
                                //}else if(channel_number == 2){
		                //   evn->card0.ch2.npoints.push_back(sample_number);
	                        //   evn->card0.ch2.ADC.push_back(adcvalue);
                                //}else if(channel_number == 3){
		                //   evn->card0.ch3.npoints.push_back(sample_number);
	                        //   evn->card0.ch3.ADC.push_back(adcvalue);
				}


			}
                        filein.read(buf,4); // read 1 more buf[4] to catch channel header
	                if( (buf[0] != static_cast<char>(0xfa))
	                   && (buf[1] != static_cast<char>(0xfa))
			){
			   break;
			}


	          }

            }
            if((buf[0] == static_cast<char>(0xfe))
                && (buf[1] == static_cast<char>(0xfe))
                && (buf[2] == static_cast<char>(0xfe))
                && (buf[3] == static_cast<char>(0xfe))
               ){
             	 printf("++++End of Raw data event %d \n", nevent);
                 //tree->Fill();  // fill the tree with the current event
                filein.read(buf,4); // read 1 more buf[4] to catch channel header
	        break;
            }
           printf("++++bufff buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
       }
    printf("bufff buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
     //break;
    //}
    //printf("bufffffffff buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
    //
    // read peakstream data
    //
    if((buf[0] == static_cast<char>(0xef))
        && (buf[1] == static_cast<char>(0xef))
        && (buf[2] == static_cast<char>(0xef))
        && (buf[3] == static_cast<char>(0xef))
    ){
	printf("@@@@@ Begin Peakstream data event %d \n",nevent);
        while(1){

            filein.read(buf,4);
	    if( (buf[0] == static_cast<char>(0xee))
	         && (buf[1] == static_cast<char>(0xee))
	    ){
 		peakchannel_number = buf[2]&0x03;
		printf("@@@@@@@ Begin peak data stream channel %d \n",peakchannel_number);
		
            }
		
            if((buf[0] == static_cast<char>(0xaa))
                && (buf[1] == static_cast<char>(0xaa))
                && (buf[2] == static_cast<char>(0xaa))
                && (buf[3] == static_cast<char>(0xaa))
               ){
                 	printf("^^^^^^^^^ Peak finding  data channel %d \n", peakchannel_number);
			while(1){
			    
			   filein.read(buf,4);
                           //printf("peak data buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);

			   //
			   //peak high data
			   //
                           if((buf[0] == static_cast<char>(0xcc))
                               && (buf[1] == static_cast<char>(0xcc))
                               && (buf[2] == static_cast<char>(0xcc))
                               && (buf[3] == static_cast<char>(0xcc))
                              ){

                 	        printf("*__* *__* *__* *__* *__* Begin peak high  data channel %d \n", peakchannel_number);
				int l=0;
				while(1){

			            filein.read(buf,4);
                                    if((buf[0] == static_cast<char>(0xce))
                                        && (buf[1] == static_cast<char>(0xce))
                                        && (buf[2] == static_cast<char>(0xce))
                                        && (buf[3] == static_cast<char>(0xce))
                                       ){
                 	                   printf("*__* *__* *__* *__* *__* End peak high  data channel %d \n", peakchannel_number);
					   printf("lllllllll l = %d \n",l);
	                                   break;
			               }
					


                                    //printf("peak data buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
				    l=l+1;
				    signed int peakda = ( (buf[0]&0x000000ff) | ((buf[1]<<8)& 0x0000ffff) | ((buf[2]<<16)&0x00ffffff) | ((buf[3]<<24)&0xffffffff));
			            //printf("peakda = %2.2x \n",peakda);	

                                    //peakword = ((unsigned int *)buf)[0];
                                    signed int peakword = ((buf[1]<<8)& 0x0000ffff) | (buf[0]& 0x000000ff);
			            //printf("peakword = %2.2x \n",peakword);	
				    peakadcvalue = ((short)(peakword & 0xfff0))/16;
					
				    //signed int counterpeak = ( (buf[0]&0x000000ff) | ((buf[1]<<8)& 0x0000ffff) | ((buf[2]<<16)&0x00ffffff) | ((buf[3]<<24)&0xffffffff));
				    signed int counterpeak = ( (buf[2]&0x00ff) | ((buf[3]<<8)&0xffff) )&0x0fff;
				    //timecounter = ((short)(counterpeak &0xfff0
				    signed int timeminpeak = ((buf[3]>>4)&0x03);
				    int timepeak = counterpeak*4 -4*3 + timeminpeak+1;
			            //printf("counterpeak = %2.2x \n",counterpeak);	
			            //printf("counterpeak = %d \n",counterpeak);	
			            //printf("timeminpeak = %d \n",timeminpeak);	
				    //printf("^_^ ^_^ ^_^ ^_^ ^_^ ^_^ ^_^ ^_^ ^_^ peakadcvalue %d \n",peakadcvalue);
				    //printf("^_^ ^_^ ^_^ ^_^ ^_^ ^_^ ^_^ ^_^ ^_^ timepeak %d \n",timepeak);
				    if(peakchannel_number == 0){
		                     //ch0->peakhigh.push_back(peakadcvalue);
	                             //ch0->peaktime.push_back(timepeak*1.0);
				     //printf("YYYYYYYYYYYYYYYYYYYYYYYYYYYYYY peakadcvalue %d \n",peakadcvalue);
				     //printf("YYYYYYYYYYYYYYYYYYYYYYYYYYYYYY timepeak %d \n",timepeak);
                                    }else if(peakchannel_number == 1){
		                     //ch1->peakhigh.push_back(peakadcvalue);
	                             //ch1->peaktime.push_back(timepeak);
                                    }else if(peakchannel_number == 2){
		                     //ch0->peakhigh.push_back(peakadcvalue);
	                             //ch2->peaktime.push_back(timepeak);
                                    }else if(peakchannel_number == 3){
		                     //ch3->peakhigh.push_back(peakadcvalue);
	                             //ch3->peaktime.push_back(timepeak);
				    }

				}

			   }
			   //
			   //peak sum data
			   //
                           if((buf[0] == static_cast<char>(0xdd))
                               && (buf[1] == static_cast<char>(0xdd))
                               && (buf[2] == static_cast<char>(0xdd))
                               && (buf[3] == static_cast<char>(0xdd))
                              ){

                 	        printf("@__@ @__@ @__@ @__@ @__@ Begin peak sum  data channel %d \n", peakchannel_number);
				int sumcount =0;	
				while(1){

			            filein.read(buf,4);

                                    if((buf[0] == static_cast<char>(0xde))
                                        && (buf[1] == static_cast<char>(0xde))
                                        && (buf[2] == static_cast<char>(0xde))
                                        && (buf[3] == static_cast<char>(0xde))
                                       ){
                 	                   printf("@__@ @__@ @__@ @__@ @__@ End peak sum data channel %d \n", peakchannel_number);
	                                   break;
			               }
				     sumcount = sumcount+1;
				     signed long int sumpeakbit = ( (buf[0]&0x000000ff) | ( (buf[1]<<8) & 0x0000ffff) | ( (buf[2]<<16) & 0x00ffffff) | ( (buf[3]<<24) & 0xffffffff));
				     signed long int sumpeakval = (sumpeakbit>>4)|0xf0000000; // /16
				     //sumword = ((unsigned int *)buf

			            filein.read(buf,4);
				
			            printf("SUM SUM SUM peakkkk buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \t \n", buf[0], buf[1], buf[2], buf[3]);
                                    signed long int timesum_bit = (  (buf[0]&0x000000ff) | ( (buf[1]<<8) & 0x0000ffff) | ( (buf[2]<<16)&0x00ffffff) | ( (buf[3]<<24)&0xffffffff) );
                                    signed int timepeak_sum_bit1 = sumpeakbit = (  (buf[0]&0x00ff) | ( (buf[1]<<8) & 0xffff)  );
                                    signed int timepeak_sum_bit2 = ( (buf[2]&0x00ff) | ( (buf[3]<<8)&0xffff) );
                                    signed int timepeak_1 = timepeak_sum_bit1&0x0fff;
                                    signed int timepeak_2 = timepeak_sum_bit2&0x0fff;
                                    printf("timesum_bit = %2.2x \n", timesum_bit);
                                    printf("timepeak_sum_bit1 = %2.2x \n", timepeak_sum_bit1);
                                    printf("timepeak_sum_bit2 = %2.2x \n", timepeak_sum_bit2);
                                    printf("timepeak_1 = %d \n", (timepeak_1-5)*4);
                                    printf("timepeak_2 = %d \n", (timepeak_2-5)*4);

				    if(peakchannel_number == 0){
		                     //ch0->peaksum.push_back(sumpeakval);
		                     //ch0->peaksumtime1.push_back(timepeak_sum_bit1);
		                     //ch0->peaksumtime2.push_back(timepeak_sum_bit2);
				     //printf("YYYYYYYYYYYYYYYYYYYYYYYYYYYYYY peakadcvalue %d \n",peakadcvalue);
				     //printf("YYYYYYYYYYYYYYYYYYYYYYYYYYYYYY timepeak %d \n",timepeak);
                                    }else if(peakchannel_number == 1){
		                     //ch1->peaksum.push_back(sumpeakval);
		                     //ch1->peaksumtime1.push_back(timepeak_sum_bit1);
		                     //ch1->peaksumtime2.push_back(timepeak_sum_bit2);
                                    }else if(peakchannel_number == 2){
		                     //ch2->peaksum.push_back(sumpeakval);
		                     //ch2->peaksumtime1.push_back(timepeak_sum_bit1);
		                     //ch2->peaksumtime2.push_back(timepeak_sum_bit2);
                                    }else if(peakchannel_number == 3){
		                     //ch3->peaksum.push_back(sumpeakval);
		                     //ch3->peaksumtime1.push_back(timepeak_sum_bit1);
		                     //ch3->peaksumtime2.push_back(timepeak_sum_bit2);
				    }
					
				}
			       printf("sumcount %d \n",sumcount);

			   }
                           if((buf[0] == static_cast<char>(0xbb))
                               && (buf[1] == static_cast<char>(0xbb))
                               && (buf[2] == static_cast<char>(0xbb))
                               && (buf[3] == static_cast<char>(0xbb))
                              ){
                 	          printf("^^^^^^^^^ End peak finding  data channel %d \n", peakchannel_number);
	                          break;
			      }
	            	}
                }

            if((buf[0] == static_cast<char>(0xed))
                && (buf[1] == static_cast<char>(0xed))
                && (buf[2] == static_cast<char>(0xed))
                && (buf[3] == static_cast<char>(0xed))
               ){
                 	printf("@@@@@ End of Peakstream data event %d \n", nevent);
			filein.read(buf,4);
	            break;
                }
	    
       // }
	
   // }
  }
   if((buf[0] == static_cast<char>(0xfc))
        && (buf[1] == static_cast<char>(0xfc))
        && (buf[2] == static_cast<char>(0xfc))
        && (buf[3] == static_cast<char>(0xfc))
    ){
	printf("end of event %d \n",nevent);
        tree->Fill();  // fill the tree with the current event
    }
    if(nevent==10) break;
   //}
  }
  }
 }
  filein.close();	
  //for (Int_t iev=0;iev<nevent;iev++) {
  //  if (iev%10==0) cout<<"Processing event "<<iev<<"..."<<endl;
  //  //Float_t ea,eb;
  //  //gRandom->Rannor(ea,eb); // the two energies follow a gaus distribution
  //  //e->a.e=ea;
  //  //e->b.e=eb;
  //  //e->a.t=gRandom->Rndm();  // random
  //  //e->b.t=e->a.t + gRandom->Gaus(0.,.1);  // identical to a.t but a gaussian
  //                                         // 'resolution' was added with sigma .1
  //                                         //
  //  for(int i=0; i<4;i++){
  //      for(int j=0;j<1000;j++){
  //          if(i==0) {
  //      	evn->card0.ch0.npoints.push_back(j);
  //              evn->card0.ch0.ADC.push_back((i+1)*j*j);
  //          }
  //      }
  //  }
  //  tree->Fill();  // fill the tree with the current event
  //}

  // start the viewer
  // here you can investigate the structure of your Event class
    tree->StartViewer();
  //gROOT->SetStyle("Plain");   // uncomment to set a different style
  // now draw some tree variables
    TCanvas *c1 = new TCanvas();
  c1->Divide(2,3);
  c1->cd(1);
  //tree->Draw("card0.ch0.npoints");  //energy of det a
  tree->Draw("ch0.ADC:ch0.npoints","","colz");        // one energy against the other
  //tree->Draw("a.e","3*(-.2<b.e && b.e<.2)","same");  // same but with condition on energy b; scaled by 3
  c1->cd(2);
  tree->Draw("ch1.ADC:ch1.npoints","","colz");        // one energy against the other
  c1->cd(3);
  tree->Draw("ch0.peakhigh");    // time of b with errorbars
  //tree->Draw("a.t","","same"); // overlay time of detector a
  c1->cd(4);
  tree->Draw("ch0.peaktime");    // time of b with errorbars
  //tree->Draw("card0.ch0.peakhigh:card0.ch0.peaktime","","colz");       // plot time b again time a
  c1->cd(5);
  //tree->Draw("card0.ch0.peaktime");    // time of b with errorbars
  tree->Draw("ch0.peakhigh:ch0.peaktime","","colz");       // plot time b again time a
  c1->cd(6);
  tree->Draw("ch0.peaksum:ch0.peaksumtime1","","colz");    // time of b with errorbars
  //tree->Draw("nofevent:card0.ch0.peaktime","","colz");       // plot time b again time a
  cout<<endl;
  cout<<"You can now examine the structure of your tree in the TreeViewer"<<endl;
  cout<<endl;
  tree->Write();
  f->Close();
}



