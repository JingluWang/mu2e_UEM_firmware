//
// This version use to read data from long counter in peak findind
// Nov21 2019 This version use argv to read file path
// Nov24 2019 This version use to convert Event. EVENT = subevent1 + subevent2 + ...
// Dec18 2019 This version use to read bit counter 28bits
// Mar19 2021 This version has peak sum0
// Apr14 2021 This version arange again the peak sum data: minpeak -> sum0 -> sum -> counter0 -> counter1 -> counter2
//

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
//#include "../dataClasses/RawEventFMC228.h"
using namespace std;
//void read_binary_FMC228_peakstream() {
int main(int argc, char* argv[]) {
	if(argc !=4){
	    printf("error");
	    printf("argv[1] : binary file");
	    printf("argv[2] : root file");
	    printf("argv[3] : number of events");
            return -1;
		
	}
 
  const char *binaryfile = argv[1];
  const char *rootfile = argv[2];
  
  int maxevent = strtol(argv[3],NULL, 10);
  // maxevent = 5;
  char buf[4];
  char buf_tmp[1];
  char recvbuf[9000];
  unsigned int word;
  short adcvalue;
  int sample_number[4];
  int peakhigh_number[4];
  int peaksum_number[4];
  //unsigned int peakword;
  short peakadcvalue;
  short sum0_peakadcvalue;
  short countervalue;
  short sumadcvalue;

  unsigned int scaler;
  unsigned short voltage[1024];
  double waveform[16][4][1024], time[16][4][1024];
  short PeakHigh[16][4][1024];
  int PeakHighTime[16][4][1024];
  short  PeakHighSum0_peak[16][4][1024];
  signed long int  PeakHighSum0[16][4][1024];
  signed long int  PeakHighSum[16][4][1024];
  int  PeakHighSumTime0[16][4][1024], PeakHighSumTime1[16][4][1024], PeakHighSumTime2[16][4][1024];

  
  //open file data
  ifstream filein;
  filein.open(binaryfile,ios::in | ios::binary);
  if(!filein){
	printf("error can not find file \n");
  }
  //filein.read(buf,4);

  // TFile *f = new TFile(rootfile,"RECREATE");
  // create a TTree
  // TTree *rtree = new TTree("rtree","tree for FMC228 analysis");
  
  TString bName;
  //RawEventFMC228* event[4];
  RawEvent* event[4];

  //ST: creating the branches in the tree.
  for(Int_t i = 0; i<4; i++){
	//event[i] = new RawEventFMC228();
	event[i] = new RawEvent();
	bName.Form("ch%d.",i);
	rtree->Bronch(bName.Data(),"RawEvent",&event[i]);
  }  
  

  //ST: check all binary values stored
  //printf("buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
  //printf("buf4 %2.2x \t buf5 %2.2x \t buf6 %2.2x \t buf7 %2.2x \n", buf[4],buf[5],buf[6],buf[7]);
  //printf("buf8 %2.2x \t buf9 %2.2x \t buf10 %2.2x \t buf11 %2.2x \n", buf[8],buf[9],buf[10],buf[11]);
  int k =0;
  Int_t nevent=-1;
  int card_number;
  int sub_event;
  int channel_number;
  int peakchannel_number;
  int post =0; //position of pointer

  while (!filein.eof()){     // ST: close file after reading
    filein.read(buf,4);  //ST: Begin Event, compare with ffff ffff

    if((buf[0] == static_cast<char>(0xff))
        && (buf[1] == static_cast<char>(0xff))
        && (buf[2] == static_cast<char>(0xff))
        && (buf[3] == static_cast<char>(0xff))
      ){
	nevent = nevent + 1;
	printf("BEGIN EVENT BEGIN EVENT %d \n",nevent);
	sample_number[0] = 0;
        sample_number[1] = 0;
        sample_number[2] = 0;
        sample_number[3] = 0;
        
        peakhigh_number[0]=0;
        peakhigh_number[1]=0;
        peakhigh_number[2]=0;
        peakhigh_number[3]=0;
        
        peaksum_number[0]=0;
        peaksum_number[1]=0;
        peaksum_number[2]=0;
        peaksum_number[3]=0;

	while(1)
	   {
              filein.read(buf,4);
	       //ST: Begin Sub-Event, compare with ffff ff00
              if((buf[0] == static_cast<char>(0x00))
                  && (buf[1] == static_cast<char>(0xff))
                  && (buf[2] == static_cast<char>(0xff))
                  && (buf[3] == static_cast<char>(0xff))
                ){
		   printf("begin sub event\n");
		   //ST: all the processing happens inside the sub-event loop
		   while(1)
		     {
			
                        filein.read(buf,4); //byte order, compare with f1f2 f3f4
                        if((buf[0] != static_cast<char>(0xf4))
                            && (buf[1] != static_cast<char>(0xf3))
                            && (buf[2] != static_cast<char>(0xf2))
                            && (buf[3] != static_cast<char>(0xf1))
                          ){
			    printf("byte order wrong \n");
			    break;
			  }
                        filein.read(buf,4); //fmc card number
			//ST: card number anded to 0000 0011
		        card_number = buf[0]&0x03;
		      
		        printf("FMC228 Card Number # %d \n",card_number);
		
                        filein.read(buf,4); //ST: sub event number
                        printf("buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
		        sub_event = buf[0]&0xff; //ST: compared to ffff, gives the same value
		        printf("sub_event # %d \n",sub_event);
			//if(sub_event ==0)
			//  {
			//    sample_number[0] = 0;
			//    sample_number[1] = 0;
			//    sample_number[2] = 0;
			//    sample_number[3] = 0;

			//    peakhigh_number[0]=0;
			//    peakhigh_number[1]=0;
			//    peakhigh_number[2]=0;
			//    peakhigh_number[3]=0;

			//    peaksum_number[0]=0;
			//    peaksum_number[1]=0;
			//    peaksum_number[2]=0;
			//    peaksum_number[3]=0;
			//  }
  
                        filein.read(buf,4); //ST: event module-> gives the event number
			
                        filein.read(buf,4);
			if((buf[0] == static_cast<char>(0xfd))  //ST: raw data begin fdfd fdfd
			    && (buf[1] == static_cast<char>(0xfd))
			    && (buf[2] == static_cast<char>(0xfd))
			    && (buf[3] == static_cast<char>(0xfd))
			    ){
			      printf("++++ Begin of Raw data event sub %d\n", sub_event);
			      //while (1) 
			      //	{   
				   filein.read(buf,4); //byte order
				   filein.read(buf,4); //event number
				   filein.read(buf,4); // channel header
				   //ST: Compre with xxxx fafa, channel number identifier
				   while (1)
				 {
                        	   if((buf[0] == static_cast<char>(0xfa)) 
				      && (buf[1] == static_cast<char>(0xfa)))
                           	  
                          	     {
				
				     //printf("buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
	                 	        channel_number = buf[2]&0x03;
                         	        printf("+++++++ Channel %d \n",channel_number);
				        printf("+++++++ begin channel number %d \n", channel_number);
				   
				        filein.read(buf,4); //waveform, ST: xxxx ffff
					cout<<"This is the waveform: "<<endl;
      				        printf("buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
				        filein.read(buf,4); //trig mask ST: xxxx 0000
				        filein.read(buf,4); //stat
				        filein.read(buf,4); //status word
				        filein.read(buf,4); //Bco low
				        filein.read(buf,4); //Bco high
      				        //printf("buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);

					filein.read(buf,4); // raw data
					printf("Raw Data Channel: %d \n",channel_number);
				        printf("buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);	
					
					word = ( (buf[0]&0x000000ff) | ((buf[1]<<8)& 0x0000ffff) | ((buf[2]<<16)&0x00ffffff) | ((buf[3]<<24)&0xffffffff)); //ST: <<8 shift position by 8 places to the left, kind of gives the same value.

					adcvalue = ((short)(word & 0xfff0))/16;
					cout<<"adc: "<<adcvalue<<endl;
					
					while(1)
				          {filein.read(buf,4); //ST: end of channel
                        	             if((buf[0] == static_cast<char>(0xfb))
                           	                 && (buf[1] == static_cast<char>(0xfb))
                           	                 && (buf[2] == static_cast<char>(0xfb))
                            	                 && (buf[3] == static_cast<char>(0xfb))
                          	               ){
      				                  printf("number of sample %d \n",sample_number[channel_number]);
						  //ST: marks the end of channel, sample number (time) and adc values are reset here.
                                                  filein.read(buf,4); // read 1 more buf[4] to catch channel header ST: next channel
      				                  printf("test test test buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
				                  printf("+++++++ end of channel number %d \n",channel_number);
				                  break;
			 	               }
					
						word = ( (buf[0]&0x000000ff) | ((buf[1]<<8)& 0x0000ffff) | ((buf[2]<<16)&0x00ffffff) | ((buf[3]<<24)&0xffffffff));

						adcvalue = ((short)(word & 0xfff0))/16;
						cout<<"adc: "<<adcvalue<<endl;
						//adcvalue = ((short)(word & 0xffff));
						sample_number[channel_number] = sample_number[channel_number]+1;
						//if(nevent == 1 && channel_number ==0)
						//{
      				                //  printf("SAMPLE SAMPLE SAMPLE SAMPLE WORD %2.2x \n", word);
      				                printf("SAMPLE SAMPLE SAMPLE SAMPLE WORD sample_number %d \t adcvalue %d \n",sample_number[0],adcvalue );
						//}
						waveform[card_number][channel_number][sample_number[channel_number]] = adcvalue;
						time[card_number][channel_number][sample_number[channel_number]] = sample_number[channel_number];

						event[channel_number]->SetAmp(waveform[card_number][channel_number][sample_number[channel_number]],sample_number[channel_number]);
						event[channel_number] ->SetTime(time[card_number][channel_number][sample_number[channel_number]],sample_number[channel_number]);
						event[channel_number] ->SetGraphs();

					     	event[channel_number] ->SetfvAmp(waveform[card_number][channel_number][sample_number[channel_number]]);
						event[channel_number] ->SetfvTime(time[card_number][channel_number][sample_number[channel_number]]);

				                adcvalue = ((short)((word>>16) & 0xfff0))/16;
				                //adcvalue = ((short)((word>>16) & 0xffff));
						sample_number[channel_number] = sample_number[channel_number]+1;

						//if(nevent == 1 && channel_number ==0)
						//{
      				                //  printf("SAMPLE SAMPLE SAMPLE SAMPLE WORD %2.2x \n", word);
      				                //  printf("SAMPLE SAMPLE SAMPLE SAMPLE WORD sample_number %d \t adcvalue %d \n",sample_number[0],adcvalue );
						//}

						waveform[card_number][channel_number][sample_number[channel_number]] = adcvalue;
						time[card_number][channel_number][sample_number[channel_number]] = sample_number[channel_number];

						event[channel_number]->SetAmp(waveform[card_number][channel_number][sample_number[channel_number]],sample_number[channel_number]);
						event[channel_number] ->SetTime(time[card_number][channel_number][sample_number[channel_number]],sample_number[channel_number]);
						event[channel_number] ->SetGraphs();

					     	//event[channel_number] ->SetfvAmp(waveform[card_number][channel_number][sample_number[channel_number]],sample_number[channel_number]);
						//event[channel_number] ->SetfvTime(waveform[card_number][channel_number][sample_number[channel_number]],sample_number[channel_number]);
					     	event[channel_number] ->SetfvAmp(waveform[card_number][channel_number][sample_number[channel_number]]);
						event[channel_number] ->SetfvTime(time[card_number][channel_number][sample_number[channel_number]]);

				             
				          }
                                       //filein.read(buf,4); // read 1 more buf[4] to catch channel header
      				       //printf("test test test buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
	                               //if( (buf[0] != static_cast<char>(0xfa))
	                               //   && (buf[1] != static_cast<char>(0xfa))
			               //){
			               //   break;
			               //}

					//ST: are we checking all channels?
				     } //ST: channel loop ends.
                        	   if((buf[0] == static_cast<char>(0xfe))
                           	       && (buf[1] == static_cast<char>(0xfe))
                           	       && (buf[2] == static_cast<char>(0xfe))
                            	       && (buf[3] == static_cast<char>(0xfe))
                          	     ){
					printf("++++ End of Raw event sub \n",sub_event);
					break;
			 	     }
       				}
			}
                        filein.read(buf,4);
			//ST: peak stream data: efef efef
			if((buf[0] == static_cast<char>(0xef))
			    && (buf[1] == static_cast<char>(0xef))
			    && (buf[2] == static_cast<char>(0xef))
			    && (buf[3] == static_cast<char>(0xef))
			    ){
			      printf("@@@@ Begin of peak stream data event sub %d\n", sub_event);
			      while (1) 
			      	{   
				  filein.read(buf,4); //ST; first check if end of peak finding, if fine go ahead with channel number selection
			
                        	   if((buf[0] == static_cast<char>(0xed))
                           	       && (buf[1] == static_cast<char>(0xed))
                           	       && (buf[2] == static_cast<char>(0xed))
                            	       && (buf[3] == static_cast<char>(0xed))
                          	     ){
				     printf("@@@@ End of peak stream event sub \n",sub_event);//ST: check if peak streaming is present or not.
					break;
			 	     }
				   //ST: channel number xxxx eeee
	    			   if( (buf[0] == static_cast<char>(0xee))
	    			        && (buf[1] == static_cast<char>(0xee))
	    			   ){
 	    			       peakchannel_number = buf[2]&0x03;
	    			       //printf("@@@@@@@ Begin peak data stream channel %d \n",peakchannel_number);
				       while(1)
                                          {
				            filein.read(buf,4); //ST: check for end peak channel ecec ecec or peak finding header: aaaa aaaa
      				            //printf("test test test buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
                        	            if((buf[0] == static_cast<char>(0xec))
                           	              && (buf[1] == static_cast<char>(0xec))
                           	              && (buf[2] == static_cast<char>(0xec))
                            	              && (buf[3] == static_cast<char>(0xec))
                          	            ){
				               //filein.read(buf,4);
				               //printf("@@@@@@@ End of peak stream channel %d \n",peakchannel_number);
				               break;
			 	            }
						
					
					    if((buf[0] == static_cast<char>(0xaa))
					        && (buf[1] == static_cast<char>(0xaa))
					        && (buf[2] == static_cast<char>(0xaa))
					        && (buf[3] == static_cast<char>(0xaa))
					      ){
					         //printf("^^^^^^^^^ Peak finding  data channel %d \n", peakchannel_number);
						 while(1)
 						     {
						  
						       filein.read(buf,4); //ST: peak height header
					                     //printf("peak data buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
					
							   //
							   //peak high data
							   //
					                 if((buf[0] == static_cast<char>(0xcc))
					                     && (buf[1] == static_cast<char>(0xcc))
					                     && (buf[2] == static_cast<char>(0xcc))
					                     && (buf[3] == static_cast<char>(0xcc))
					                    ){
					
					           	    //printf("*__* *__* *__* *__* *__* Begin peak high  data channel %d \n", peakchannel_number);
							    while(1){
					
							      filein.read(buf,4); //ST: this is the peak height data
                                                                  //printf("counter peak data buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
					                          if((buf[0] == static_cast<char>(0xce))
					                              && (buf[1] == static_cast<char>(0xce))
					                              && (buf[2] == static_cast<char>(0xce))
					                              && (buf[3] == static_cast<char>(0xce))
					                             ){
							 	         //printf("peakhigh_number = %d \n",peakhigh_number[peakchannel_number]);
					           	                 //printf("*__* *__* *__* *__* *__* End peak high  data channel %d \n", peakchannel_number);
						                         filein.read(buf,4);
					                                   break;
							               }
    							          //if error in bit counter read more 32 bit
    							          int peakhight_counter_error = 0;
					                          //while ((buf[2] == static_cast<char>(0x00))
					                          //       && (buf[3] == static_cast<char>(0x00))
					                          //   ){								       
						                  //       filein.read(buf,4);
								  //       peakhight_counter_error = 1;
								  //    }
				                                       // 
				                                       // counter data
				                                       //
                                                                       //printf("counter peak data buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
				                                       signed int counterpeak_bit = ( (buf[0]&0x000000ff) | ((buf[1]<<8)& 0x0000ffff) | ((buf[2]<<16)&0x00ffffff) | ((buf[3]<<24)&0xffffffff));
				                                       //signed int counterpeak = ( (buf[2]&0x00ff) | ((buf[3]<<8)&0xffff) )&0x0fff;
				                                       //printf("counterpeak_bit %2.2x \n",counterpeak_bit);
				                                       signed int counterpeak = counterpeak_bit & 0x0fffffff;
				                                       //printf("counterpeak %d \n",counterpeak);
				                                       //timecounter = ((short)(counterpeak &0xfff0
				                                       signed int timeminpeak = ((buf[3]>>4)&0x3);
				                                       //int timepeak = counterpeak*4 -4*3 + timeminpeak+1;
				                                       int timepeak = (counterpeak-5)*4 + timeminpeak+1;
				                                       
				                                       //
				                                       //peak value data
				                                       //
                                                                       //printf("peak data buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
				                                       //l=l+1;
								       peakhigh_number[peakchannel_number] = peakhigh_number[peakchannel_number] + 1;
								       //printf("peakhigh_number %d \n",peakhigh_number[peakchannel_number]);

			                                               filein.read(buf,4);
                                                                       //printf("peak data buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
					                               if((buf[0] == static_cast<char>(0xce))
					                                   && (buf[1] == static_cast<char>(0xce))
					                                   && (buf[2] == static_cast<char>(0xce))
					                                   && (buf[3] == static_cast<char>(0xce))
					                                  ){
							 	              //printf("peakhigh_number = %d \n",peakhigh_number[peakchannel_number]);
					           	                      //printf("*__* *__* *__* *__* *__* End peak high  data channel %d \n", peakchannel_number);
								              peakhigh_number[peakchannel_number] = peakhigh_number[peakchannel_number] - 1;
						                              filein.read(buf,4);
					                                        break;
							                    }
				                                       signed int peakda = ( (buf[0]&0x000000ff) | ((buf[1]<<8)& 0x0000ffff) | ((buf[2]<<16)&0x00ffffff) | ((buf[3]<<24)&0xffffffff));
			                                               //printf("peakda = %2.2x \n",peakda);	

                                                                       //peakword = ((unsigned int *)buf)[0];
                                                                       signed int peakword = ((buf[1]<<8)& 0x0000ffff) | (buf[0]& 0x000000ff);
			                                               //printf("peakword = %2.2x \n",peakword);	
				                                       peakadcvalue = ((short)(peakword & 0xfff0))/16;
				
				
				                                       PeakHigh[card_number][peakchannel_number][ peakhigh_number[peakchannel_number] ] = (double)peakadcvalue;
				                                       PeakHighTime[card_number][peakchannel_number][ peakhigh_number[peakchannel_number] ] = timepeak;
			                                               //printf("counterpeak = %2.2x \n",counterpeak);	
			                                               //printf("counterpeak = %d \n",counterpeak);	
			                                               //printf("timeminpeak = %d \n",timeminpeak);	
				                                       //printf("^_^ ^_^ ^_^ ^_^ ^_^ ^_^ ^_^ ^_^ ^_^ peakadcvalue %d \t PeahHigh %d \n",peakadcvalue,PeakHigh[card_number][peakchannel_number][peakhigh_number[peakchannel_number] ]);
								       // printf("^_^ ^_^ ^_^ ^_^ ^_^ ^_^ ^_^ ^_^ ^_^ timepeak %d \n",timepeak);
								       if(peakhight_counter_error == 0)
									{
				                                           event[peakchannel_number] ->SetPeakHigh(PeakHigh[card_number][peakchannel_number][ peakhigh_number[peakchannel_number] ],peakhigh_number[peakchannel_number]);
				                                           event[peakchannel_number] ->SetPeakHighTime(PeakHighTime[card_number][peakchannel_number][peakhigh_number[peakchannel_number] ],peakhigh_number[peakchannel_number]);

				                                           event[peakchannel_number] ->SetfvPeakHigh(PeakHigh[card_number][peakchannel_number][peakhigh_number[peakchannel_number] ] );
				                                           event[peakchannel_number] ->SetfvPeakHighTime(PeakHighTime[card_number][peakchannel_number][peakhigh_number[peakchannel_number] ]);
									}

								       // 
							               ////filein.read(buf,4);
								       ////peakhigh_number[peakchannel_number] = peakhigh_number[peakchannel_number] + 1;
					
					
					
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
				
							     // printf("@__@ @__@ @__@ @__@ @__@ Begin peak sum  data channel %d \n", peakchannel_number);
                                                                //printf("buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
								//int sumcount =0;	
								while(1){
				
							            filein.read(buf,4);
				
				                                    if((buf[0] == static_cast<char>(0xde))
				                                        && (buf[1] == static_cast<char>(0xde))
				                                        && (buf[2] == static_cast<char>(0xde))
				                                        && (buf[3] == static_cast<char>(0xde))
				                                       ){
							 	          //printf("peaksum_number = %d \n",peaksum_number[peakchannel_number]);
				                 	                   //printf("@__@ @__@ @__@ @__@ @__@ End peak sum data channel %d \n", peakchannel_number);
						                           filein.read(buf,4);
					                                   break;
							               }
				                                       //sumcount = sumcount+1;
								       peaksum_number[peakchannel_number] = peaksum_number[peakchannel_number] + 1;
								       //
								       //peak high in sum
								       //
			                                               //filein.read(buf,4);			
				                                       //while ( (buf[2] != static_cast<char>(0x11))
				                                       // && (buf[3] != static_cast<char>(0x11))
    								       //){
							               // 
			                                               //  filein.read(buf,4);			
								       //}

                                                                       //printf("peak sum high buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
				                                       signed int sum0_peakda = ( (buf[0]&0x000000ff) | ((buf[1]<<8)& 0x0000ffff) | ((buf[2]<<16)&0x00ffffff) | ((buf[3]<<24)&0xffffffff));
			                                               //printf("sum0_peakda = %2.2x \n",sum0_peakda);	

                                                                       //peakword = ((unsigned int *)buf)[0];
                                                                       signed int sum0_peakword = ((buf[1]<<8)& 0x0000ffff) | (buf[0]& 0x000000ff);
			                                               //printf("peakword = %2.2x \n",peakword);	
				                                       sum0_peakadcvalue = ((short)(sum0_peakword & 0xfff0))/16;
			                                               //printf("sum0_peakadcvalue = %2.2x \n",sum0_peakadcvalue);	
				
				
				                                       //PeakHighSum0_peak[card_number][peakchannel_number][ peakhigh_number[peakchannel_number] ] = (double)sum0_peakadcvalue;
				                                       PeakHighSum0_peak[card_number][peakchannel_number][ peaksum_number[peakchannel_number] ] = (double)sum0_peakadcvalue;
			                                               //printf("PeakHighSum0_peak  = %d \n", PeakHighSum0_peak[card_number][peakchannel_number][ peaksum_number[peakchannel_number] ] );	


				                                       //
				                                       //sum data
				                                       //
			                                               filein.read(buf,4);				
				                                       //sumcount = sumcount+1;
								       //peaksum_number[peakchannel_number] = peaksum_number[peakchannel_number] + 1;
								       //printf("sum sum sum sum sum sum sum sum sum sum sum sum sum sum sum sum sum sum sum \n");
                                                                       //printf("peak sum buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
								       //printf("peaksum_number %d \n",peaksum_number[peakchannel_number]);
				                                       signed int sumpeakbit = ( (buf[0]&0x000000ff) | ( (buf[1]<<8) & 0x0000ffff) | ( (buf[2]<<16) & 0x00ffffff) | ( (buf[3]<<24) & 0xffffffff));
				                                       signed int sumpeakval = (sumpeakbit>>4)|0xf0000000; // /16
								       //printf("sumpeakval %d \n", sumpeakval);
									
				                                       //
				                                       //sum0 data
				                                       //
			                                               filein.read(buf,4);				

								       //printf("sum0 sum0 sum0 sum0 sum0 sum0 sum0 sum0 sum0 sum0 sum0 sum0 sum0 sum0 sum0 sum0 sum0 sum0 sum0 \n");
                                                                       //printf("peak sum0 buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
								       //printf("peaksum_number %d \n",peaksum_number[peakchannel_number]);
				                                       signed int sumpeakbit0 = ( (buf[0]&0x000000ff) | ( (buf[1]<<8) & 0x0000ffff) | ( (buf[2]<<16) & 0x00ffffff) | ( (buf[3]<<24) & 0xffffffff));
				                                       signed int sumpeakval0 = (sumpeakbit0>>4)|0xf0000000; // /16
								       //printf("sumpeakval0 %d \n", sumpeakval0);

								       int peaksum0_error = 0;
								       if(sumpeakval >= sumpeakval0)
 								       {
								          peaksum0_error =1;
								       }

				                                       //sumword = ((unsigned int *)buf
				                                       //
				                                       //printf("SUM SUM SUM sumpeakval = %d \t PeakHighSum = %d\n",sumpeakval,PeakHighSum[card_number][peakchannel_number][peaksum_number[peakchannel_number] ]);

				                                       ////
				                                       //// latch_counter0 data
				                                       ////
			                                               filein.read(buf,4);				
				                                    if((buf[0] == static_cast<char>(0xde))
				                                        && (buf[1] == static_cast<char>(0xde))
				                                        && (buf[2] == static_cast<char>(0xde))
				                                        && (buf[3] == static_cast<char>(0xde))
				                                       ){
							 	          //printf("peaksum_number = %d \n",peaksum_number[peakchannel_number]);
				                 	                   //printf("@__@ @__@ @__@ @__@ @__@ End peak sum data channel %d \n", peakchannel_number);
								           peaksum_number[peakchannel_number] = peaksum_number[peakchannel_number] - 1;
						                           filein.read(buf,4);
					                                   break;
							               }
       								    //if error in counter1 read more 4byte
								    int peaksum0_counter_error = 0;
				                                    //while (( (buf[3]>>4 | 0xff) == static_cast<char>(0xff))
								    //    	
								    // )
								    //  {
								    //   peaksum0_counter_error = 1;
			                                            //   filein.read(buf,4);				
								    //  }
                                                                       //printf("peak sum buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
			                                               //printf("SUM SUM SUM0000 peakkkk buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \t \n", buf[0], buf[1], buf[2], buf[3]);

                                                                       signed long int timesum_bit0 = (  (buf[0]&0x000000ff) | ( (buf[1]<<8) & 0x0000ffff) | ( (buf[2]<<16)&0x00ffffff) | ( (buf[3]<<24)&0xffffffff) );
                                                                       signed int timepeak_sum_bit0 = timesum_bit0 & 0x0fffffff ;


                                                                       signed int timepeak_0 = timepeak_sum_bit0;//&0x0fff;
                                                                       //printf("timesum_bit1 = %2.2x \n", timesum_bit1);
                                                                       //printf("timepeak_sum_bit1 = %2.2x \n", timepeak_sum_bit1);
                                                                       //printf("timepeak_1 = %d \n", (timepeak_1-5)*4);
				                                       //PeakHighSumTime1[card_number][peakchannel_number][peaksum_number[peakchannel_number] ] = (timepeak_1-5)*4;
				                                       //event[peakchannel_number] ->SetPeakSumTime1(PeakHighSumTime1[card_number][peakchannel_number][peaksum_number[peakchannel_number] ],peaksum_number[peakchannel_number]);
				                                       //event[peakchannel_number] ->SetfvPeakSumTime1(PeakHighSumTime1[card_number][peakchannel_number][peaksum_number[peakchannel_number]]);


				                                       ////
				                                       //// latch_counter1 data
				                                       ////
			                                               filein.read(buf,4);				
				                                    if((buf[0] == static_cast<char>(0xde))
				                                        && (buf[1] == static_cast<char>(0xde))
				                                        && (buf[2] == static_cast<char>(0xde))
				                                        && (buf[3] == static_cast<char>(0xde))
				                                       ){
							 	          //printf("peaksum_number = %d \n",peaksum_number[peakchannel_number]);
				                 	                   //printf("@__@ @__@ @__@ @__@ @__@ End peak sum data channel %d \n", peakchannel_number);
								           peaksum_number[peakchannel_number] = peaksum_number[peakchannel_number] - 1;
						                           filein.read(buf,4);
					                                   break;
							               }
       								    //if error in counter1 read more 4byte
								     int peaksum_counter_error = 0;
				                                   // while (( (buf[3]>>4 | 0xff) == static_cast<char>(0xff))
								   //     	
								   //  )
								   //   {
			                                           //    filein.read(buf,4);				
								   //    peaksum_counter_error = 1;
								   //   }
                                                                       //printf("peak sum buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
			                                               //printf("SUM SUM SUM peakkkk buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \t \n", buf[0], buf[1], buf[2], buf[3]);

                                                                       signed long int timesum_bit1 = (  (buf[0]&0x000000ff) | ( (buf[1]<<8) & 0x0000ffff) | ( (buf[2]<<16)&0x00ffffff) | ( (buf[3]<<24)&0xffffffff) );
                                                                       signed int timepeak_sum_bit1 = timesum_bit1 & 0x0fffffff ;


                                                                       signed int timepeak_1 = timepeak_sum_bit1;//&0x0fff;
                                                                       //printf("timesum_bit1 = %2.2x \n", timesum_bit1);
                                                                       //printf("timepeak_sum_bit1 = %2.2x \n", timepeak_sum_bit1);
                                                                       //printf("timepeak_1 = %d \n", (timepeak_1-5)*4);
				                                       //PeakHighSumTime1[card_number][peakchannel_number][peaksum_number[peakchannel_number] ] = (timepeak_1-5)*4;
				                                       //event[peakchannel_number] ->SetPeakSumTime1(PeakHighSumTime1[card_number][peakchannel_number][peaksum_number[peakchannel_number] ],peaksum_number[peakchannel_number]);
				                                       //event[peakchannel_number] ->SetfvPeakSumTime1(PeakHighSumTime1[card_number][peakchannel_number][peaksum_number[peakchannel_number]]);


				                                       ////
				                                       //// latch_counter2 data
				                                       ////
			                                               filein.read(buf,4);				
				                                    if((buf[0] == static_cast<char>(0xde))
				                                        && (buf[1] == static_cast<char>(0xde))
				                                        && (buf[2] == static_cast<char>(0xde))
				                                        && (buf[3] == static_cast<char>(0xde))
				                                       ){
							 	          //printf("peaksum_number = %d \n",peaksum_number[peakchannel_number]);
				                 	                   //printf("@__@ @__@ @__@ @__@ @__@ End peak sum data channel %d \n", peakchannel_number);
								           peaksum_number[peakchannel_number] = peaksum_number[peakchannel_number] - 1;
						                           filein.read(buf,4);
					                                   break;
							               }
								    //printf("peak sum buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
                                                                       signed long int timesum_bit2 = (  (buf[0]&0x000000ff) | ( (buf[1]<<8) & 0x0000ffff) | ( (buf[2]<<16)&0x00ffffff) | ( (buf[3]<<24)&0xffffffff) );
                                                                       signed int timepeak_sum_bit2 = timesum_bit2 & 0x0fffffff;

                                                                       signed int timepeak_2 = timepeak_sum_bit2;//&0x0fff;

								       //if( peaksum0_error == 0 && peaksum_counter_error == 0 && peaksum0_counter_error ==0)
									//{
                                                                           //peak sum0
				                                           PeakHighSum0[card_number][peakchannel_number][peaksum_number[peakchannel_number]] = sumpeakval0;
				                                           event[peakchannel_number] ->SetPeakSum0(PeakHighSum0[card_number][peakchannel_number][peaksum_number[peakchannel_number]],peaksum_number[peakchannel_number]);

				                                           event[peakchannel_number] ->SetfvPeakSum0(PeakHighSum0[card_number][peakchannel_number][peaksum_number[peakchannel_number]]);
  
                                                                           //peak sum
				                                           PeakHighSum[card_number][peakchannel_number][peaksum_number[peakchannel_number]] = sumpeakval;
				                                           event[peakchannel_number] ->SetPeakSum(PeakHighSum[card_number][peakchannel_number][peaksum_number[peakchannel_number]],peaksum_number[peakchannel_number]);

				                                           event[peakchannel_number] ->SetfvPeakSum(PeakHighSum[card_number][peakchannel_number][peaksum_number[peakchannel_number]]);

                                                                           //peak high sum
				                                           //PeakHighSum0_peak[card_number][peakchannel_number][peaksum_number[peakchannel_number]] = sumpeakval0_peak;
				                                           //PeakHighSum0_peak[card_number][peakchannel_number][ peaksum_number[peakchannel_number] ] = (double)sum0_peakadcvalue;
				                                           event[peakchannel_number] ->SetPeakSum0_peak(PeakHighSum0_peak[card_number][peakchannel_number][peaksum_number[peakchannel_number]],peaksum_number[peakchannel_number]);

				                                           event[peakchannel_number] ->SetfvPeakSum0_peak(PeakHighSum0_peak[card_number][peakchannel_number][peaksum_number[peakchannel_number]]);

									   // printf("timesum_bit0 = %2.2x \n", timesum_bit0);
                                                                           //printf("timepeak_sum_bit0 = %2.2x \n", timepeak_sum_bit0);
                                                                           //printf("timepeak_0 = %d \n", (timepeak_0-5)*4);
				                                           PeakHighSumTime0[card_number][peakchannel_number][peaksum_number[peakchannel_number] ] = (timepeak_0-5)*4;
				                                           event[peakchannel_number] ->SetPeakSumTime0(PeakHighSumTime0[card_number][peakchannel_number][peaksum_number[peakchannel_number] ],peaksum_number[peakchannel_number]);
				                                           event[peakchannel_number] ->SetfvPeakSumTime0(PeakHighSumTime0[card_number][peakchannel_number][peaksum_number[peakchannel_number]]);

                                                                           //printf("timesum_bit1 = %2.2x \n", timesum_bit1);
                                                                           //printf("timepeak_sum_bit1 = %2.2x \n", timepeak_sum_bit1);
                                                                           //printf("timepeak_1 = %d \n", (timepeak_1-5)*4);
				                                           PeakHighSumTime1[card_number][peakchannel_number][peaksum_number[peakchannel_number] ] = (timepeak_1-5)*4;
				                                           event[peakchannel_number] ->SetPeakSumTime1(PeakHighSumTime1[card_number][peakchannel_number][peaksum_number[peakchannel_number] ],peaksum_number[peakchannel_number]);
				                                           event[peakchannel_number] ->SetfvPeakSumTime1(PeakHighSumTime1[card_number][peakchannel_number][peaksum_number[peakchannel_number]]);

                                                                           //printf("timesum_bit2 = %2.2x \n", timesum_bit2);
                                                                           //printf("timepeak_sum_bit2 = %2.2x \n", timepeak_sum_bit2);
                                                                           //printf("timepeak_2 = %d \n", (timepeak_2-5)*4);
								           //printf("end sum end sum end sum end sum end sum end sum end sum end sum end sum \n");




				                                           PeakHighSumTime2[card_number][peakchannel_number][peaksum_number[peakchannel_number] ] = (timepeak_2-5)*4;

				                                           event[peakchannel_number] ->SetPeakSumTime2(PeakHighSumTime2[card_number][peakchannel_number][peaksum_number[peakchannel_number] ],peaksum_number[peakchannel_number]);

				                                           event[peakchannel_number] ->SetfvPeakSumTime2(PeakHighSumTime2[card_number][peakchannel_number][peaksum_number[peakchannel_number]]);
								       // }
				
				
									
								}
							       //printf("sumcount %d \n",sumcount);
				
							   }
				                           if((buf[0] == static_cast<char>(0xbb))
				                               && (buf[1] == static_cast<char>(0xbb))
				                               && (buf[2] == static_cast<char>(0xbb))
				                               && (buf[3] == static_cast<char>(0xbb))
				                              ){
				                 	          //printf("^^^^^^^^^ End peak finding  data channel %d \n", peakchannel_number);
					                          break;
							      }
					            	}
				                }
				
				            if((buf[0] == static_cast<char>(0xed))
				                && (buf[1] == static_cast<char>(0xed))
				                && (buf[2] == static_cast<char>(0xed))
				                && (buf[3] == static_cast<char>(0xed))
				               ){
				                 	//printf("@@@@@ End of Peakstream data event %d \n", nevent);
							filein.read(buf,4);
					            break;
				                }
					    
				       // }
					


					 }
				          
	    			       
            			   }



       				}
			}


                        filein.read(buf,4);
                        if((buf[0] == static_cast<char>(0x00))
                            && (buf[1] == static_cast<char>(0xfc))
                            && (buf[2] == static_cast<char>(0xfc))
                            && (buf[3] == static_cast<char>(0xfc))
                          ){
			  /*
				printf("end sub event %d \t event %d\n", sub_event, nevent);
		                printf("sub peak high number ch 0 = %d \n", peakhigh_number[0]);
		                printf("sub peak high number ch 1 = %d \n", peakhigh_number[1]);
		                printf("sub peak high number ch 2 = %d \n", peakhigh_number[2]);
		                printf("sub peak high number ch 3 = %d \n", peakhigh_number[3]);
		                printf(" PS PS PS PS PS PS \n");
		                printf("sub sum high number ch 0 = %d \n", peaksum_number[0]);
		                printf("sub sum high number ch 1 = %d \n", peaksum_number[1]);
		                printf("sub sum high number ch 2 = %d \n", peaksum_number[2]);
		                printf("sub sum high number ch 3 = %d \n", peaksum_number[3]);
			  */
				break;
			 }


		     }
		   
	       }
              if((buf[0] == static_cast<char>(0xfc))
                  && (buf[1] == static_cast<char>(0xfc))
                  && (buf[2] == static_cast<char>(0xfc))
                  && (buf[3] == static_cast<char>(0xfc))
                ){
	            printf("END EVENT END EVENT %d \n",nevent);
	            rtree->Fill();  // fill the tree with the current event
		    /*
	            printf("come here here %d \n",nevent);
		    printf("peak high number ch 0 = %d \n", peakhigh_number[0]);
		    printf("peak high number ch 1 = %d \n", peakhigh_number[1]);
		    printf("peak high number ch 2 = %d \n", peakhigh_number[2]);
		    printf("peak high number ch 3 = %d \n", peakhigh_number[3]);
		    printf(" PS PS PS PS PS PS \n");
		    printf("peak sum number ch 0 = %d \n", peaksum_number[0]);
		    printf("peak sum number ch 1 = %d \n", peaksum_number[1]);
		    printf("peak sum number ch 2 = %d \n", peaksum_number[2]);
		    printf("peak sum number ch 3 = %d \n", peaksum_number[3]);
		    */
	    	    event[0]->Reset();
	    	    event[1]->Reset();
	    	    event[2]->Reset();
	    	    event[3]->Reset();
		    break;
		}		
	   }
      }
    
     printf("buf0 %2.2x \t buf1 %2.2x \t buf2 %2.2x \t buf3 %2.2x \n", buf[0],buf[1],buf[2],buf[3]);
     if(nevent == maxevent) break;
    
   }
filein.close();	
  //rtree->Write();
   //f->Close();
// }

}
