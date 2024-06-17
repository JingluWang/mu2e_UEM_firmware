/*
 * RawEvent.cpp
 *
 *  Created on: Dec 27, 2016
 *      Author: vratik
 */

#include "RawEvent.h"
#include "TProfile2D.h"
#define MaxPoints = 1000000
#define MaxNofPeak = 1000000

RawEvent::RawEvent() : fNPoints(160000) {
	// TODO Auto-generated constructor stub
	Init();
	Reset();
}
RawEvent::RawEvent(const Int_t npoints) : fNPoints(npoints) {
	// TODO Auto-generated constructor stub
	Init();
	Reset();
}

RawEvent::~RawEvent() {
	// TODO Auto-generated destructor stub
	delete fGraphSignal;
	Reset();
}

void RawEvent::ProcessEvent(){
	SetGraphs();
}

void RawEvent::Init() {
	fAmp.Set(fNPoints);
	fTime.Set(fNPoints);
	fPeakHigh.Set(fNPoints);
	fPeakHighTime.Set(fNPoints);
	fPeakSum0.Set(fNPoints);
	fPeakSum.Set(fNPoints);
	fPeakSum_tail.Set(fNPoints);
	fPeakSum0_peak.Set(fNPoints);
	fPeakSumTime0.Set(fNPoints);
	fPeakSumTime1.Set(fNPoints);
	fPeakSumTime2.Set(fNPoints);
	fGraphSignal = new TGraph();
	std::vector<Double_t> fvAmp;
	std::vector<Double_t> fvTime;
	std::vector<Double_t> fvPeakHigh;
	std::vector<Double_t> fvPeakHighTime;
	std::vector<Double_t> fvPeakSum0;
	std::vector<Double_t> fvPeakSum;
	std::vector<Double_t> fvPeakSum_tail;
	std::vector<Double_t> fvPeakSum0_peak;
	std::vector<Double_t> fvPeakSumTime0;
	std::vector<Double_t> fvPeakSumTime1;
	std::vector<Double_t> fvPeakSumTime2;
}

void RawEvent::Reset() {

	for (Int_t i = 0; i < fNPoints; i++) {
		fAmp[i] = 0;
		fTime[i] = 0;
		fTime[i] = 0;
		fPeakHigh[i] = 0;
		fPeakHighTime[i] = 0;
		fPeakSum0[i] = 0;
		fPeakSum[i] = 0;
		fPeakSum_tail[i] = 0;
		fPeakSum0_peak[i] = 0;
		fPeakSumTime0[i] = 0;
		fPeakSumTime1[i] = 0;
		fPeakSumTime2[i] = 0;

	}
		fvAmp.clear();
		fvTime.clear();

		fvPeakHigh.clear();
		fvPeakHighTime.clear();

		fvPeakSum0.clear();
		fvPeakSum.clear();
		fvPeakSum_tail.clear();
		fvPeakSum0_peak.clear();
		fvPeakSumTime0.clear();
		fvPeakSumTime1.clear();
		fvPeakSumTime2.clear();
	//fSamples = 0;

	// TODO how to deal with graphs?
}

void RawEvent::PrintTime(Int_t i) {
		cout << fTime[i] << endl;
}

void RawEvent::PrintAmp(Int_t i) {
		cout << fAmp[i] << endl;
}

void RawEvent::SetAmp(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("RawEvent::SetAmp", "Array with raw amplitudes is overloaded!");
		return;
	}
	fAmp[i] = a;
	return;
}

void RawEvent::SetfvAmp(Double_t amp) {
	fvAmp.push_back(amp);
	return;
}

void RawEvent::SetfvTime(Double_t t) {
	fvTime.push_back(t);
	return;
}
void RawEvent::SetfvPeakHigh(Double_t amp) {
	fvPeakHigh.push_back(amp);
	return;
}

void RawEvent::SetfvPeakHighTime(Double_t t) {
	fvPeakHighTime.push_back(t);
	return;
}

void RawEvent::SetfvPeakSum0(Double_t area) {
	fvPeakSum0.push_back(area);
	return;
}

void RawEvent::SetfvPeakSum(Double_t area) {
	fvPeakSum.push_back(area);
	return;
}

void RawEvent::SetfvPeakSum_tail(Double_t area) {
	fvPeakSum_tail.push_back(area);
	return;
}

void RawEvent::SetfvPeakSum0_peak(Double_t amp0) {
	fvPeakSum0_peak.push_back(amp0);
	return;
}

void RawEvent::SetfvPeakSumTime0(Double_t t1) {
	fvPeakSumTime0.push_back(t1);
	return;
}

void RawEvent::SetfvPeakSumTime1(Double_t t1) {
	fvPeakSumTime1.push_back(t1);
	return;
}

void RawEvent::SetfvPeakSumTime2(Double_t t2) {
	fvPeakSumTime2.push_back(t2);
	return;
}


void RawEvent::SetTime(Double_t t, Int_t i) {
	if (i >=fNPoints) {
		Error("RawEvent::SetTime", "Array with raw times is overloaded!");
		return;
	}
	fTime[i] = t;
	return;
}

void RawEvent::SetPeakHigh(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("RawEvent::SetPeakHigh", "Array with raw peak high amplitudes is overloaded!");
		return;
	}
	fPeakHigh[i] = a;
	return;
}

void RawEvent::SetPeakHighTime(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("RawEvent::SetPeakHighTime", "Array with peak high time  amplitudes is overloaded!");
		return;
	}
	fPeakHighTime[i] = a;
	return;
}

void RawEvent::SetPeakSum0(signed long int a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("RawEvent::SetPeakSum0", "Array with raw Peak Sum0 amplitudes is overloaded!");
		return;
	}
	fPeakSum0[i] = a;
	return;
}
void RawEvent::SetPeakSum(signed long int a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("RawEvent::SetPeakSum", "Array with raw Peak Sum amplitudes is overloaded!");
		return;
	}
	fPeakSum[i] = a;
	return;
}

void RawEvent::SetPeakSum_tail(signed long int a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("RawEvent::SetPeakSum_tail", "Array with raw Peak Sum tail amplitudes is overloaded!");
		return;
	}
	fPeakSum_tail[i] = a;
	return;
}

void RawEvent::SetPeakSum0_peak(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("RawEvent::SetPeakSum0_peak", "Array with raw Peak Sum0_peak amplitudes is overloaded!");
		return;
	}
	fPeakSum0_peak[i] = a;
	return;
}

void RawEvent::SetPeakSumTime0(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("RawEvent::SetPeakSumTime0", "Array with raw Peak Sum Time0 amplitudes is overloaded!");
		return;
	}
	fPeakSumTime0[i] = a;
	return;
}

void RawEvent::SetPeakSumTime1(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("RawEvent::SetPeakSumTime1", "Array with raw Peak Sum Time1 amplitudes is overloaded!");
		return;
	}
	fPeakSumTime1[i] = a;
	return;
}

void RawEvent::SetPeakSumTime2(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("RawEvent::SetPeakSumTime2", "Array with raw Peak Sum Time2 amplitudes is overloaded!");
		return;
	}
	fPeakSumTime2[i] = a;
	return;
}


Double_t RawEvent::GetTime(Int_t i) {
		return fTime[i];
}

Double_t RawEvent::GetAmp(Int_t i) {

		return fAmp[i];
}

Double_t RawEvent::GetPeakHigh(Int_t i) {

		return fPeakHigh[i];
}

Double_t RawEvent::GetVAmp(Int_t i) {
		Double_t vAmp = fvAmp.at(i);
		return vAmp;
}

Double_t RawEvent::GetVTime(Int_t i) {
		Double_t vtime = fvTime.at(i);
		return vtime;
}

Double_t RawEvent::GetVPeakHigh(Int_t i) {
		Double_t vpeakhigh = fvPeakHigh.at(i);
		return vpeakhigh;
}

Double_t RawEvent::GetVPeakHighTime(Int_t i) {
		Double_t vpeakhightime = fvPeakHighTime.at(i);
		return vpeakhightime;
}

Double_t RawEvent::GetVPeakSum0(Int_t i) {
		Double_t vpeaksum0 = fvPeakSum0.at(i);
		return vpeaksum0;
}

Double_t RawEvent::GetVPeakSum(Int_t i) {
		Double_t vpeaksum = fvPeakSum.at(i);
		return vpeaksum;
}

Double_t RawEvent::GetVPeakSum_tail(Int_t i) {
		Double_t vpeaksum_tail = fvPeakSum_tail.at(i);
		return vpeaksum_tail;
}

Double_t RawEvent::GetVPeakSum0_peak(Int_t i) {
		Double_t vpeaksum0_peak = fvPeakSum0_peak.at(i);
		return vpeaksum0_peak;
}

Double_t RawEvent::GetVPeakSumTime0(Int_t i) {
		Double_t vpeaksumtime0 = fvPeakSumTime0.at(i);
		return vpeaksumtime0;
}

Double_t RawEvent::GetVPeakSumTime1(Int_t i) {
		Double_t vpeaksumtime1 = fvPeakSumTime1.at(i);
		return vpeaksumtime1;
}

Double_t RawEvent::GetVPeakSumTime2(Int_t i) {
		Double_t vpeaksumtime2 = fvPeakSumTime2.at(i);
		return vpeaksumtime2;
}



Double_t RawEvent::GetPeakHighTime(Int_t i) {

		return fPeakHighTime[i];
}

Double_t RawEvent::GetVAmpSize() {
		Double_t size = fvAmp.size();
		return size;
}
Double_t RawEvent::GetVPeakHighSize() {
		Double_t size = fvPeakHigh.size();
		return size;
}

Double_t RawEvent::GetVPeakSum0Size() {
		Double_t size0 = fvPeakSum0.size();
		return size0;
}

Double_t RawEvent::GetVPeakSumSize() {
		Double_t size = fvPeakSum.size();
		return size;
}

Double_t RawEvent::GetVPeakSum_tailSize() {
		Double_t size = fvPeakSum_tail.size();
		return size;
}

Double_t RawEvent::GetVPeakSum0_peakSize() {
		Double_t size0_peak = fvPeakSum0_peak.size();
		return size0_peak;
}

Double_t RawEvent::GetPeakSum0(Int_t i) {

		return fPeakSum0[i];
}

Double_t RawEvent::GetPeakSum(Int_t i) {

		return fPeakSum[i];
}

Double_t RawEvent::GetPeakSum_tail(Int_t i) {

		return fPeakSum_tail[i];
}

Double_t RawEvent::GetPeakSum0_peak(Int_t i) {

		return fPeakSum0_peak[i];
}

Double_t RawEvent::GetPeakSumTime0(Int_t i) {

		return fPeakSumTime0[i];
}

Double_t RawEvent::GetPeakSumTime1(Int_t i) {

		return fPeakSumTime1[i];
}

Double_t RawEvent::GetPeakSumTime2(Int_t i) {

		return fPeakSumTime2[i];
}

void RawEvent::SetGraphs() {
	fGraphSignal->Set(fNPoints);
	for(Int_t i=0; i<fNPoints; i++){
	    fGraphSignal->SetPoint(i,fTime[i],fAmp[i]);	
	}
}

//void RawEvent::SetGraphs() {
//
//	gAmp->Set(fNPoints);
//
//	for (Int_t i=0; i<fNPoints; i++) {
//		gAmp->SetPoint(i, fTime[i], fAmp[i]);
//	}
//
//	return;
//}
