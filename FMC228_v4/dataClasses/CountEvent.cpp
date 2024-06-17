/*
 * CountEvent.cpp
 * This is Count Event Class
 *
 *  Created on: May 27, 2021
 *      Author: Nguyen Minh Truong
 *      Follow RawEvent of vratik
 */

#include "CountEvent.h"
#include "TProfile2D.h"
#include <vector>
#define MaxPoints = 100000
#define MaxNofPeak = 100000

using namespace std;

CountEvent::CountEvent() : fNPoints(16000) {
	// TODO Auto-generated constructor stub
	Init();
	Reset();
}
CountEvent::CountEvent(const Int_t npoints) : fNPoints(npoints) {
	// TODO Auto-generated constructor stub
	Init();
	Reset();
}

CountEvent::~CountEvent() {
	// TODO Auto-generated destructor stub
	delete fGraphSignal;
	Reset();
}

void CountEvent::ProcessEvent(){
	SetGraphs();
}

void CountEvent::Init() {
	fAmp.Set(fNPoints);
	fTime.Set(fNPoints);
	fGraphSignal = new TGraph();

	vector<vector<Int_t>> fvCount(2000,vector<Int_t>(700));
	vector<vector<Int_t>> fvCount_sum(2000,vector<Int_t>(700));
	vector<Double_t> fvCount_Event_Batch1;
	vector<Double_t> fvCount_Event_Batch2;
}

void CountEvent::Reset() {

	for (Int_t i = 0; i < fNPoints; i++) {
		fAmp[i] = 0;
		fTime[i] = 0;

	}
		fvCount.clear();
		fvCount_sum.clear();
		fvCount_Event_Batch1.clear();
		fvCount_Event_Batch2.clear();

	// TODO how to deal with graphs?
}

void CountEvent::PrintTime(Int_t i) {
		cout << fTime[i] << endl;
}

void CountEvent::PrintAmp(Int_t i) {
		cout << fAmp[i] << endl;
}

void CountEvent::SetAmp(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CountEvent::SetAmp", "Array with raw amplitudes is overloaded!");
		return;
	}
	fAmp[i] = a;
	return;
}

void CountEvent::SetfvCount(const vector<vector<Int_t> >& Count ) {
     //int nbin = 2000;
     //int nturn = 700;
      fvCount.resize(Count.size());
      for(int i=0; i<Count.size(); i++)
        {
          fvCount[i].resize(Count[i].size());
         for(int j= 0; j<Count[i].size(); j++)
	  { 
       
           fvCount[i][j] = Count[i][j];
          }
        }
	return;
}

void CountEvent::SetfvCount_sum(const vector<vector<Int_t> >& Count_sum ) {
     //int nbin = 2000;
     //int nturn = 700;
      fvCount_sum.resize(Count_sum.size());
      for(int i=0; i<Count_sum.size(); i++)
        {
          fvCount_sum[i].resize(Count_sum[i].size());
         for(int j= 0; j<Count_sum[i].size(); j++)
	  { 
       
           fvCount_sum[i][j] = Count_sum[i][j];
          }
        }
	return;
}
void CountEvent::SetfvCount_Event_Batch1(Double_t val_batch1) {
	fvCount_Event_Batch1.push_back(val_batch1);
	return;
}

void CountEvent::SetfvCount_Event_Batch2(Double_t val_batch2) {
	fvCount_Event_Batch2.push_back(val_batch2);
	return;
}

void CountEvent::SetTime(Double_t t, Int_t i) {
	if (i >=fNPoints) {
		Error("CountEvent::SetTime", "Array with raw times is overloaded!");
		return;
	}
	fTime[i] = t;
	return;
}


Double_t CountEvent::GetTime(Int_t i) {
		return fTime[i];
}

Double_t CountEvent::GetAmp(Int_t i) {

		return fAmp[i];
}

Double_t CountEvent::GetVCount(Int_t i, Int_t j) {
		Double_t valcount = fvCount[j].at(i);
		return valcount;
}

Double_t CountEvent::GetVCount_sum(Int_t i, Int_t j) {
		Double_t valcount_sum = fvCount_sum[j].at(i);
		return valcount_sum;
}

Double_t CountEvent::GetVCount_Event_Batch1(Int_t i) {
		Double_t valb1 = fvCount_Event_Batch1.at(i);
		return valb1;
}

Double_t CountEvent::GetVCount_Event_Batch2(Int_t i) {
		Double_t valb2 = fvCount_Event_Batch2.at(i);
		return valb2;
}

Double_t CountEvent::GetVCount_Col_Size() {
		Double_t Colsize = fvCount.size();
		return Colsize;
}

Double_t CountEvent::GetVCount_Row_Size() {
		Double_t size = fvCount[0].size();
		return size;
}

Double_t CountEvent::GetVCount_sum_Col_Size() {
		Double_t Colsize = fvCount_sum.size();
		return Colsize;
}

Double_t CountEvent::GetVCount_sum_Row_Size() {
		Double_t size = fvCount_sum[0].size();
		return size;
}

Double_t CountEvent::GetVCount_Event_Batch1_Size() {
		Double_t size = fvCount_Event_Batch1.size();
		return size;
}

Double_t CountEvent::GetVCount_Event_Batch2_Size() {
		Double_t size = fvCount_Event_Batch2.size();
		return size;
}

void CountEvent::SetGraphs() {
	fGraphSignal->Set(fNPoints);
	for(Int_t i=0; i<fNPoints; i++){
	    fGraphSignal->SetPoint(i,fTime[i],fAmp[i]);	
	}
}

//void CountEvent::SetGraphs() {
//
//	gAmp->Set(fNPoints);
//
//	for (Int_t i=0; i<fNPoints; i++) {
//		gAmp->SetPoint(i, fTime[i], fAmp[i]);
//	}
//
//	return;
//}
