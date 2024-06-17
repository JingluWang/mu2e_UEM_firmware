/*
 * CoinEvent.cpp
 * This is Coincidence Event Class
 *
 *  Created on: Dec 22, 2019
 *      Author: Nguyen Minh Truong
 *      Follow RawEvent of vratik
 */

#include "CoinEvent.h"
#include "TProfile2D.h"
#define MaxPoints = 100000
#define MaxNofPeak = 100000

CoinEvent::CoinEvent() : fNPoints(16000) {
	// TODO Auto-generated constructor stub
	Init();
	Reset();
}
CoinEvent::CoinEvent(const Int_t npoints) : fNPoints(npoints) {
	// TODO Auto-generated constructor stub
	Init();
	Reset();
}

CoinEvent::~CoinEvent() {
	// TODO Auto-generated destructor stub
	delete fGraphSignal;
	Reset();
}

void CoinEvent::ProcessEvent(){
	SetGraphs();
}

void CoinEvent::Init() {
	fAmp.Set(fNPoints);
	fTime.Set(fNPoints);
	fPeakHigh.Set(fNPoints);
	fPeakHighTime.Set(fNPoints);
	fPeakSum0.Set(fNPoints);
	fPeakSum_tail.Set(fNPoints);
	fPeakSum0_peak.Set(fNPoints);
	fPeakSum.Set(fNPoints);
	fPeakSumTime0.Set(fNPoints);
	fPeakSumTime1.Set(fNPoints);
	fPeakSumTime2.Set(fNPoints);
	fGraphSignal = new TGraph();
	std::vector<Double_t> fvAmp;
	std::vector<Double_t> fvTime;
	std::vector<Double_t> fvPeakHigh;
	std::vector<Double_t> fvPeakHighTime;
	std::vector<Double_t> fvPeakSum0;
	std::vector<Double_t> fvPeakSum_tail;
	std::vector<Double_t> fvPeakSum0_peak;
	std::vector<Double_t> fvPeakSum;
	std::vector<Double_t> fvPeakSumTime0;
	std::vector<Double_t> fvPeakSumTime1;
	std::vector<Double_t> fvPeakSumTime2;
}

void CoinEvent::Reset() {

	for (Int_t i = 0; i < fNPoints; i++) {
		fAmp[i] = 0;
		fTime[i] = 0;
		fTime[i] = 0;
		fPeakHigh[i] = 0;
		fPeakHighTime[i] = 0;
		fPeakSum0[i] = 0;
		fPeakSum_tail[i] = 0;
		fPeakSum0_peak[i] = 0;
		fPeakSum[i] = 0;
		fPeakSumTime0[i] = 0;
		fPeakSumTime1[i] = 0;
		fPeakSumTime2[i] = 0;

	}
		fvAmp.clear();
		fvTime.clear();

		fvPeakHigh.clear();
		fvPeakHighTime.clear();

		fvPeakSum0.clear();
		fvPeakSum_tail.clear();
		fvPeakSum0_peak.clear();
		fvPeakSum.clear();
		fvPeakSumTime0.clear();
		fvPeakSumTime1.clear();
		fvPeakSumTime2.clear();
	//fSamples = 0;

	// TODO how to deal with graphs?
}

void CoinEvent::PrintTime(Int_t i) {
		cout << fTime[i] << endl;
}

void CoinEvent::PrintAmp(Int_t i) {
		cout << fAmp[i] << endl;
}

void CoinEvent::SetAmp(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEvent::SetAmp", "Array with raw amplitudes is overloaded!");
		return;
	}
	fAmp[i] = a;
	return;
}

void CoinEvent::SetfvAmp(Double_t amp) {
	fvAmp.push_back(amp);
	return;
}

void CoinEvent::SetfvTime(Double_t t) {
	fvTime.push_back(t);
	return;
}
void CoinEvent::SetfvPeakHigh(Double_t amp) {
	fvPeakHigh.push_back(amp);
	return;
}

void CoinEvent::SetfvPeakHighTime(Double_t t) {
	fvPeakHighTime.push_back(t);
	return;
}

void CoinEvent::SetfvPeakSum0(Double_t area) {
	fvPeakSum0.push_back(area);
	return;
}

void CoinEvent::SetfvPeakSum_tail(Double_t area) {
	fvPeakSum_tail.push_back(area);
	return;
}

void CoinEvent::SetfvPeakSum0_peak(Double_t high) {
	fvPeakSum0_peak.push_back(high);
	return;
}

void CoinEvent::SetfvPeakSum(Double_t area) {
	fvPeakSum.push_back(area);
	return;
}

void CoinEvent::SetfvPeakSumTime0(Double_t t0) {
	fvPeakSumTime0.push_back(t0);
	return;
}

void CoinEvent::SetfvPeakSumTime1(Double_t t1) {
	fvPeakSumTime1.push_back(t1);
	return;
}

void CoinEvent::SetfvPeakSumTime2(Double_t t2) {
	fvPeakSumTime2.push_back(t2);
	return;
}


void CoinEvent::SetTime(Double_t t, Int_t i) {
	if (i >=fNPoints) {
		Error("CoinEvent::SetTime", "Array with raw times is overloaded!");
		return;
	}
	fTime[i] = t;
	return;
}

void CoinEvent::SetPeakHigh(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEvent::SetPeakHigh", "Array with raw peak high amplitudes is overloaded!");
		return;
	}
	fPeakHigh[i] = a;
	return;
}

void CoinEvent::SetPeakHighTime(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEvent::SetPeakHighTime", "Array with peak high time  amplitudes is overloaded!");
		return;
	}
	fPeakHighTime[i] = a;
	return;
}

void CoinEvent::SetPeakSum0(signed long int a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEvent::SetPeakSum0", "Array with raw Peak Sum0 amplitudes is overloaded!");
		return;
	}
	fPeakSum0[i] = a;
	return;
}

void CoinEvent::SetPeakSum_tail(signed long int a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEvent::SetPeakSum_tail", "Array with raw Peak Sum_tail amplitudes is overloaded!");
		return;
	}
	fPeakSum_tail[i] = a;
	return;
}

void CoinEvent::SetPeakSum0_peak(signed long int a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEvent::SetPeakSum0_peak", "Array with raw Peak Sum0_peak amplitudes is overloaded!");
		return;
	}
	fPeakSum0_peak[i] = a;
	return;
}

void CoinEvent::SetPeakSum(signed long int a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEvent::SetPeakSum", "Array with raw Peak Sum amplitudes is overloaded!");
		return;
	}
	fPeakSum[i] = a;
	return;
}

void CoinEvent::SetPeakSumTime0(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEvent::SetPeakSumTime0", "Array with raw Peak Sum Time0 amplitudes is overloaded!");
		return;
	}
	fPeakSumTime0[i] = a;
	return;
}

void CoinEvent::SetPeakSumTime1(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEvent::SetPeakSumTime1", "Array with raw Peak Sum Time1 amplitudes is overloaded!");
		return;
	}
	fPeakSumTime1[i] = a;
	return;
}

void CoinEvent::SetPeakSumTime2(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEvent::SetPeakSumTime2", "Array with raw Peak Sum Time2 amplitudes is overloaded!");
		return;
	}
	fPeakSumTime2[i] = a;
	return;
}


Double_t CoinEvent::GetTime(Int_t i) {
		return fTime[i];
}

Double_t CoinEvent::GetAmp(Int_t i) {

		return fAmp[i];
}

Double_t CoinEvent::GetPeakHigh(Int_t i) {

		return fPeakHigh[i];
}

Double_t CoinEvent::GetVAmp(Int_t i) {
		Double_t vAmp = fvAmp.at(i);
		return vAmp;
}

Double_t CoinEvent::GetVTime(Int_t i) {
		Double_t vtime = fvTime.at(i);
		return vtime;
}

Double_t CoinEvent::GetVPeakHigh(Int_t i) {
		Double_t vpeakhigh = fvPeakHigh.at(i);
		return vpeakhigh;
}

Double_t CoinEvent::GetVPeakHighTime(Int_t i) {
		Double_t vpeakhightime = fvPeakHighTime.at(i);
		return vpeakhightime;
}

Double_t CoinEvent::GetVPeakSum0(Int_t i) {
		Double_t vpeaksum0 = fvPeakSum0.at(i);
		return vpeaksum0;
}

Double_t CoinEvent::GetVPeakSum_tail(Int_t i) {
		Double_t vpeaksum_tail = fvPeakSum_tail.at(i);
		return vpeaksum_tail;
}

Double_t CoinEvent::GetVPeakSum0_peak(Int_t i) {
		Double_t vpeaksum0_peak = fvPeakSum0_peak.at(i);
		return vpeaksum0_peak;
}

Double_t CoinEvent::GetVPeakSum(Int_t i) {
		Double_t vpeaksum = fvPeakSum.at(i);
		return vpeaksum;
}

Double_t CoinEvent::GetVPeakSumTime0(Int_t i) {
		Double_t vpeaksumtime0 = fvPeakSumTime0.at(i);
		return vpeaksumtime0;
}

Double_t CoinEvent::GetVPeakSumTime1(Int_t i) {
		Double_t vpeaksumtime1 = fvPeakSumTime1.at(i);
		return vpeaksumtime1;
}

Double_t CoinEvent::GetVPeakSumTime2(Int_t i) {
	        Double_t vpeaksumtime2 = fvPeakSumTime2.at(i);
	        return vpeaksumtime2;
}



Double_t CoinEvent::GetPeakHighTime(Int_t i) {
	        return fPeakHighTime[i];
}

Double_t CoinEvent::GetVAmpSize() {
	        Double_t size = fvAmp.size();
	        return size;
}
Double_t CoinEvent::GetVPeakHighSize() {
		Double_t size = fvPeakHigh.size();
		return size;
}

Double_t CoinEvent::GetVPeakSum0Size() {
		Double_t size = fvPeakSum0.size();
		return size;
}

Double_t CoinEvent::GetVPeakSum_tailSize() {
		Double_t size = fvPeakSum_tail.size();
		return size;
}

Double_t CoinEvent::GetVPeakSum0_peakSize() {
		Double_t size = fvPeakSum0_peak.size();
		return size;
}

Double_t CoinEvent::GetVPeakSumSize() {
		Double_t size = fvPeakSum.size();
		return size;
}

Double_t CoinEvent::GetPeakSum0(Int_t i) {

		return fPeakSum0[i];
}

Double_t CoinEvent::GetPeakSum_tail(Int_t i) {

		return fPeakSum_tail[i];
}

Double_t CoinEvent::GetPeakSum0_peak(Int_t i) {

		return fPeakSum0_peak[i];
}

Double_t CoinEvent::GetPeakSum(Int_t i) {

		return fPeakSum[i];
}

Double_t CoinEvent::GetPeakSumTime0(Int_t i) {

		return fPeakSumTime0[i];
}

Double_t CoinEvent::GetPeakSumTime1(Int_t i) {

		return fPeakSumTime1[i];
}

Double_t CoinEvent::GetPeakSumTime2(Int_t i) {

		return fPeakSumTime2[i];
}

void CoinEvent::SetGraphs() {
	fGraphSignal->Set(fNPoints);
	for(Int_t i=0; i<fNPoints; i++){
	    fGraphSignal->SetPoint(i,fTime[i],fAmp[i]);	
	}
}

//void CoinEvent::SetGraphs() {
//
//	gAmp->Set(fNPoints);
//
//	for (Int_t i=0; i<fNPoints; i++) {
//		gAmp->SetPoint(i, fTime[i], fAmp[i]);
//	}
//
//	return;
//}
