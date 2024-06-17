/*
 * CoinEventTrack.cpp
 * This is Coincidence Acc. Trigger Event convert to Track Event
 *
 *  Created on: Mar 29, 2021
 *      Author: Nguyen Minh Truong
 *      Follow RawEvent of vratik
 */

#include "CoinEventTrack.h"
#include "TProfile2D.h"
#define MaxPoints = 100000
#define MaxNofPeak = 100000

CoinEventTrack::CoinEventTrack() : fNPoints(16000) {
	// TODO Auto-generated constructor stub
	Init();
	Reset();
}
CoinEventTrack::CoinEventTrack(const Int_t npoints) : fNPoints(npoints) {
	// TODO Auto-generated constructor stub
	Init();
	Reset();
}

CoinEventTrack::~CoinEvenTrack() {
	// TODO Auto-generated destructor stub
	delete fGraphSignal;
	Reset();
}

void CoinEventTrack::ProcessEvent(){
	SetGraphs();
}

void CoinEventTrack::Init() {
	fAmp.Set(fNPoints);
	fTime.Set(fNPoints);
	fPeakHigh.Set(fNPoints);
	fPeakHighTime.Set(fNPoints);
	fPeakSum.Set(fNPoints);
	fPeakSumTime1.Set(fNPoints);
	fPeakSumTime2.Set(fNPoints);
	fGraphSignal = new TGraph();
	std::vector<Double_t> fvAmp;
	std::vector<Double_t> fvTime;
	std::vector<Double_t> fvPeakHigh;
	std::vector<Double_t> fvPeakHighTime;
	std::vector<Double_t> fvPeakSum;
	std::vector<Double_t> fvPeakSumTime1;
	std::vector<Double_t> fvPeakSumTime2;
}

void CoinEventTrack::Reset() {

	for (Int_t i = 0; i < fNPoints; i++) {
		fAmp[i] = 0;
		fTime[i] = 0;
		fTime[i] = 0;
		fPeakHigh[i] = 0;
		fPeakHighTime[i] = 0;
		fPeakSum[i] = 0;
		fPeakSumTime1[i] = 0;
		fPeakSumTime2[i] = 0;

	}
		fvAmp.clear();
		fvTime.clear();

		fvPeakHigh.clear();
		fvPeakHighTime.clear();

		fvPeakSum.clear();
		fvPeakSumTime1.clear();
		fvPeakSumTime2.clear();
	//fSamples = 0;

	// TODO how to deal with graphs?
}

void CoinEventTrack::PrintTime(Int_t i) {
		cout << fTime[i] << endl;
}

void CoinEventTrack::PrintAmp(Int_t i) {
		cout << fAmp[i] << endl;
}

void CoinEventTrack::SetAmp(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEventTrack::SetAmp", "Array with raw amplitudes is overloaded!");
		return;
	}
	fAmp[i] = a;
	return;
}

void CoinEventTrack::SetfvAmp(Double_t amp) {
	fvAmp.push_back(amp);
	return;
}

void CoinEventTrack::SetfvTime(Double_t t) {
	fvTime.push_back(t);
	return;
}
void CoinEventTrack::SetfvPeakHigh(Double_t amp) {
	fvPeakHigh.push_back(amp);
	return;
}

void CoinEventTrack::SetfvPeakHighTime(Double_t t) {
	fvPeakHighTime.push_back(t);
	return;
}

void CoinEventTrack::SetfvPeakSum(Double_t area) {
	fvPeakSum.push_back(area);
	return;
}

void CoinEventTrack::SetfvPeakSumTime1(Double_t t1) {
	fvPeakSumTime1.push_back(t1);
	return;
}

void CoinEventTrack::SetfvPeakSumTime2(Double_t t2) {
	fvPeakSumTime2.push_back(t2);
	return;
}


void CoinEventTrack::SetTime(Double_t t, Int_t i) {
	if (i >=fNPoints) {
		Error("CoinEventTrack::SetTime", "Array with raw times is overloaded!");
		return;
	}
	fTime[i] = t;
	return;
}

void CoinEventTrack::SetPeakHigh(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEventTrack::SetPeakHigh", "Array with raw peak high amplitudes is overloaded!");
		return;
	}
	fPeakHigh[i] = a;
	return;
}

void CoinEventTrack::SetPeakHighTime(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEventTrack::SetPeakHighTime", "Array with peak high time  amplitudes is overloaded!");
		return;
	}
	fPeakHighTime[i] = a;
	return;
}

void CoinEventTrack::SetPeakSum(signed long int a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEventTrack::SetPeakSum", "Array with raw Peak Sum amplitudes is overloaded!");
		return;
	}
	fPeakSum[i] = a;
	return;
}

void CoinEventTrack::SetPeakSumTime1(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEventTrack::SetPeakSumTime1", "Array with raw Peak Sum Time1 amplitudes is overloaded!");
		return;
	}
	fPeakSumTime1[i] = a;
	return;
}

void CoinEventTrack::SetPeakSumTime2(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("CoinEventTrack::SetPeakSumTime2", "Array with raw Peak Sum Time2 amplitudes is overloaded!");
		return;
	}
	fPeakSumTime2[i] = a;
	return;
}


Double_t CoinEventTrack::GetTime(Int_t i) {
		return fTime[i];
}

Double_t CoinEventTrack::GetAmp(Int_t i) {

		return fAmp[i];
}

Double_t CoinEventTrack::GetPeakHigh(Int_t i) {

		return fPeakHigh[i];
}

Double_t CoinEventTrack::GetVAmp(Int_t i) {
		Double_t vAmp = fvAmp.at(i);
		return vAmp;
}

Double_t CoinEventTrack::GetVTime(Int_t i) {
		Double_t vtime = fvTime.at(i);
		return vtime;
}

Double_t CoinEventTrack::GetVPeakHigh(Int_t i) {
		Double_t vpeakhigh = fvPeakHigh.at(i);
		return vpeakhigh;
}

Double_t CoinEventTrack::GetVPeakHighTime(Int_t i) {
		Double_t vpeakhightime = fvPeakHighTime.at(i);
		return vpeakhightime;
}

Double_t CoinEventTrack::GetVPeakSum(Int_t i) {
		Double_t vpeaksum = fvPeakSum.at(i);
		return vpeaksum;
}

Double_t CoinEventTrack::GetVPeakSumTime1(Int_t i) {
		Double_t vpeaksumtime1 = fvPeakSumTime1.at(i);
		return vpeaksumtime1;
}

Double_t CoinEventTrack::GetVPeakSumTime2(Int_t i) {
	        Double_t vpeaksumtime2 = fvPeakSumTime2.at(i);
	        return vpeaksumtime2;
}



Double_t CoinEventTrack::GetPeakHighTime(Int_t i) {
	        return fPeakHighTime[i];
}

Double_t CoinEventTrack::GetVAmpSize() {
	        Double_t size = fvAmp.size();
	        return size;
}
Double_t CoinEventTrack::GetVPeakHighSize() {
		Double_t size = fvPeakHigh.size();
		return size;
}

Double_t CoinEventTrack::GetVPeakSumSize() {
		Double_t size = fvPeakSum.size();
		return size;
}

Double_t CoinEventTrack::GetPeakSum(Int_t i) {

		return fPeakSum[i];
}

Double_t CoinEventTrack::GetPeakSumTime1(Int_t i) {

		return fPeakSumTime1[i];
}

Double_t CoinEventTrack::GetPeakSumTime2(Int_t i) {

		return fPeakSumTime2[i];
}

void CoinEventTrack::SetGraphs() {
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
