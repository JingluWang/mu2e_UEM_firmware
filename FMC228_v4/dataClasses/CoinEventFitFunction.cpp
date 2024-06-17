/*
 * CoinEventFitFunction.cpp
 * This is Coincidence Event with Fit Function Class
 *
 *  Created on: Feb 17, 2020
 *      Author: Nguyen Minh Truong
 *      Follow RawEvent of vratik
 */

#include "CoinEventFitFunction.h"
#include "TProfile2D.h"
#define MaxPoints = 100000
#define MaxNofPeak = 100000

CoinEventFitFunction::CoinEventFitFunction() : fNPoints(16000) {
	// TODO Auto-generated constructor stub
	Init();
	Reset();
}
CoinEventFitFunction::CoinEventFitFunction(const Int_t npoints) : fNPoints(npoints) {
	// TODO Auto-generated constructor stub
	Init();
	Reset();
}

CoinEventFitFunction::~CoinEventFitFunction() {
	// TODO Auto-generated destructor stub
	delete fGraphSignal;
	Reset();
}

void CoinEventFitFunction::ProcessEvent(){
	SetGraphs();
}

void CoinEventFitFunction::Init() {
	fAmp.Set(fNPoints);
	fTime.Set(fNPoints);
	fPeakHigh.Set(fNPoints);
	fPeakHighTime.Set(fNPoints);
	fPeakSum0_peak.Set(fNPoints);
	fPeakSum0.Set(fNPoints);
	fPeakSum.Set(fNPoints);
	fPeakSumTime0.Set(fNPoints);
	fPeakSumTime1.Set(fNPoints);
	fPeakSumTime2.Set(fNPoints);
	fGraphSignal = new TGraph();
	std::vector<Double_t> fvAmp;
	std::vector<Double_t> fvTime;
	std::vector<Double_t> fvPeakHigh;
	std::vector<Double_t> fvPeakHighTime;
	std::vector<Double_t> fvPeakSum0_peak;
	std::vector<Double_t> fvPeakSum0;
	std::vector<Double_t> fvPeakSum;
	std::vector<Double_t> fvPeakSumTime0;
	std::vector<Double_t> fvPeakSumTime1;
	std::vector<Double_t> fvPeakSumTime2;
}

void CoinEventFitFunction::Reset() {

	for (Int_t i = 0; i < fNPoints; i++) {
		fAmp[i] = 0;
		fTime[i] = 0;
		fTime[i] = 0;
		fPeakHigh[i] = 0;
		fPeakHighTime[i] = 0;
		fPeakSum0_peak[i] = 0;
		fPeakSum0[i] = 0;
		fPeakSum[i] = 0;
		fPeakSumTime0[i] = 0;
		fPeakSumTime1[i] = 0;
		fPeakSumTime2[i] = 0;

	}
		fvAmp.clear();
		fvTime.clear();

		fvPeakHigh.clear();
		fvPeakHighTime.clear();

		fvPeakSum0_peak.clear();
		fvPeakSum0.clear();
		fvPeakSum.clear();
		fvPeakSumTime0.clear();
		fvPeakSumTime1.clear();
		fvPeakSumTime2.clear();
	//fSamples = 0;

	// TODO how to deal with graphs?
}

void CoinEventFitFunction::PrintTime(Int_t i) {
		cout << fTime[i] << endl;
}

void CoinEventFitFunction::PrintAmp(Int_t i) {
		cout << fAmp[i] << endl;
}

void CoinEventFitFunction::SetAmp(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEventFitFunction::SetAmp", "Array with raw amplitudes is overloaded!");
		return;
	}
	fAmp[i] = a;
	return;
}

void CoinEventFitFunction::SetfvAmp(Double_t amp) {
	fvAmp.push_back(amp);
	return;
}

void CoinEventFitFunction::SetfvTime(Double_t t) {
	fvTime.push_back(t);
	return;
}
void CoinEventFitFunction::SetfvPeakHigh(Double_t amp) {
	fvPeakHigh.push_back(amp);
	return;
}

void CoinEventFitFunction::SetfvPeakHighTime(Double_t t) {
	fvPeakHighTime.push_back(t);
	return;
}

void CoinEventFitFunction::SetfvPeakSum0_peak(Double_t amp0_peak) {
	fvPeakSum0_peak.push_back(amp0_peak);
	return;
}

void CoinEventFitFunction::SetfvPeakSum0(Double_t area0) {
	fvPeakSum0.push_back(area0);
	return;
}

void CoinEventFitFunction::SetfvPeakSum(Double_t area) {
	fvPeakSum.push_back(area);
	return;
}

void CoinEventFitFunction::SetfvPeakSumTime0(Double_t t0) {
	fvPeakSumTime0.push_back(t0);
	return;
}

void CoinEventFitFunction::SetfvPeakSumTime1(Double_t t1) {
	fvPeakSumTime1.push_back(t1);
	return;
}

void CoinEventFitFunction::SetfvPeakSumTime2(Double_t t2) {
	fvPeakSumTime2.push_back(t2);
	return;
}


void CoinEventFitFunction::SetTime(Double_t t, Int_t i) {
	if (i >=fNPoints) {
		Error("CoinEventFitFunction::SetTime", "Array with raw times is overloaded!");
		return;
	}
	fTime[i] = t;
	return;
}

void CoinEventFitFunction::SetPeakHigh(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEventFitFunction::SetPeakHigh", "Array with raw peak high amplitudes is overloaded!");
		return;
	}
	fPeakHigh[i] = a;
	return;
}

void CoinEventFitFunction::SetPeakHighTime(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEventFitFunction::SetPeakHighTime", "Array with peak high time  amplitudes is overloaded!");
		return;
	}
	fPeakHighTime[i] = a;
	return;
}

void CoinEventFitFunction::SetPeakSum0_peak(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEventFitFunction::SetPeakSum0_peak", "Array with peak sum0_peak  amplitudes is overloaded!");
		return;
	}
	fPeakSum0_peak[i] = a;
	return;
}

void CoinEventFitFunction::SetPeakSum0(signed long int a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEventFitFunction::SetPeakSum0", "Array with raw Peak Sum0 amplitudes is overloaded!");
		return;
	}
	fPeakSum0[i] = a;
	return;
}

void CoinEventFitFunction::SetPeakSum(signed long int a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEventFitFunction::SetPeakSum", "Array with raw Peak Sum amplitudes is overloaded!");
		return;
	}
	fPeakSum[i] = a;
	return;
}

void CoinEventFitFunction::SetPeakSumTime0(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEventFitFunction::SetPeakSumTime0", "Array with raw Peak Sum Time0 amplitudes is overloaded!");
		return;
	}
	fPeakSumTime0[i] = a;
	return;
}

void CoinEventFitFunction::SetPeakSumTime1(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEventFitFunction::SetPeakSumTime1", "Array with raw Peak Sum Time1 amplitudes is overloaded!");
		return;
	}
	fPeakSumTime1[i] = a;
	return;
}

void CoinEventFitFunction::SetPeakSumTime2(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEventFitFunction::SetPeakSumTime2", "Array with raw Peak Sum Time2 amplitudes is overloaded!");
		return;
	}
	fPeakSumTime2[i] = a;
	return;
}


Double_t CoinEventFitFunction::GetTime(Int_t i) {
		return fTime[i];
}

Double_t CoinEventFitFunction::GetAmp(Int_t i) {

		return fAmp[i];
}

Double_t CoinEventFitFunction::GetPeakHigh(Int_t i) {

		return fPeakHigh[i];
}

Double_t CoinEventFitFunction::GetVAmp(Int_t i) {
		Double_t vAmp = fvAmp.at(i);
		return vAmp;
}

Double_t CoinEventFitFunction::GetVTime(Int_t i) {
		Double_t vtime = fvTime.at(i);
		return vtime;
}

Double_t CoinEventFitFunction::GetVPeakHigh(Int_t i) {
		Double_t vpeakhigh = fvPeakHigh.at(i);
		return vpeakhigh;
}

Double_t CoinEventFitFunction::GetVPeakHighTime(Int_t i) {
		Double_t vpeakhightime = fvPeakHighTime.at(i);
		return vpeakhightime;
}

Double_t CoinEventFitFunction::GetVPeakSum0_peak(Int_t i) {
		Double_t vpeaksum0_peak = fvPeakSum0_peak.at(i);
		return vpeaksum0_peak;
}

Double_t CoinEventFitFunction::GetVPeakSum0(Int_t i) {
		Double_t vpeaksum0 = fvPeakSum0.at(i);
		return vpeaksum0;
}

Double_t CoinEventFitFunction::GetVPeakSum(Int_t i) {
		Double_t vpeaksum = fvPeakSum.at(i);
		return vpeaksum;
}

Double_t CoinEventFitFunction::GetVPeakSumTime0(Int_t i) {
		Double_t vpeaksumtime0 = fvPeakSumTime0.at(i);
		return vpeaksumtime0;
}

Double_t CoinEventFitFunction::GetVPeakSumTime1(Int_t i) {
		Double_t vpeaksumtime1 = fvPeakSumTime1.at(i);
		return vpeaksumtime1;
}

Double_t CoinEventFitFunction::GetVPeakSumTime2(Int_t i) {
	        Double_t vpeaksumtime2 = fvPeakSumTime2.at(i);
	        return vpeaksumtime2;
}



Double_t CoinEventFitFunction::GetPeakHighTime(Int_t i) {
	        return fPeakHighTime[i];
}

Double_t CoinEventFitFunction::GetVAmpSize() {
	        Double_t size = fvAmp.size();
	        return size;
}
Double_t CoinEventFitFunction::GetVPeakHighSize() {
		Double_t size = fvPeakHigh.size();
		return size;
}

Double_t CoinEventFitFunction::GetVPeakSumSize() {
		Double_t size = fvPeakSum.size();
		return size;
}

Double_t CoinEventFitFunction::GetPeakSum0_peak(Int_t i) {

		return fPeakSum0_peak[i];
}

Double_t CoinEventFitFunction::GetPeakSum0(Int_t i) {

		return fPeakSum0[i];
}

Double_t CoinEventFitFunction::GetPeakSum(Int_t i) {

		return fPeakSum[i];
}

Double_t CoinEventFitFunction::GetPeakSumTime0(Int_t i) {

		return fPeakSumTime0[i];
}

Double_t CoinEventFitFunction::GetPeakSumTime1(Int_t i) {

		return fPeakSumTime1[i];
}

Double_t CoinEventFitFunction::GetPeakSumTime2(Int_t i) {

		return fPeakSumTime2[i];
}

void CoinEventFitFunction::SetGraphs() {
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
