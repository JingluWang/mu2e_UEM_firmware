/*
 * InTimeOutTimeEvent.cpp
 * This is In-Time Out-Time Event Class
 *
 *  Created on: Feb 17, 2020
 *      Author: Nguyen Minh Truong
 *      Follow RawEvent of vratik
 */

//#include "CoinEventFitFunction.h"
#include "InTimeOutTimeEvent.h"
#include "TProfile2D.h"
#define MaxPoints = 100000
#define MaxNofPeak = 100000

//CoinEventFitFunction::CoinEventFitFunction() : fNPoints(16000) {
InTimeOutTimeEvent::InTimeOutTimeEvent() : fNPoints(16000) {
	// TODO Auto-generated constructor stub
	Init();
	Reset();
}
InTimeOutTimeEvent::InTimeOutTimeEvent(const Int_t npoints) : fNPoints(npoints) {
	// TODO Auto-generated constructor stub
	Init();
	Reset();
}

InTimeOutTimeEvent::~InTimeOutTimeEvent() {
	// TODO Auto-generated destructor stub
	delete fGraphSignal;
	Reset();
}

void InTimeOutTimeEvent::ProcessEvent(){
	SetGraphs();
}

void InTimeOutTimeEvent::Init() {
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

	std::vector<Double_t> fvInTimeAmp;
	std::vector<Double_t> fvInTimeTime;
	std::vector<Double_t> fvInTimePeakHigh;
	std::vector<Double_t> fvInTimePeakHighTime;
	std::vector<Double_t> fvInTimeBeginInTime;
	std::vector<Double_t> fvInTimeBeginInTime_peaksum;
	std::vector<Double_t> fvInTimePeakSum0_peak;
	std::vector<Double_t> fvInTimePeakSum0;
	std::vector<Double_t> fvInTimePeakSum;
	std::vector<Double_t> fvInTimePeakSumTime0;
	std::vector<Double_t> fvInTimePeakSumTime1;
	std::vector<Double_t> fvInTimePeakSumTime2;


}

void InTimeOutTimeEvent::Reset() {

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
		fvInTimeAmp.clear();
		fvInTimeTime.clear();

		fvInTimePeakHigh.clear();
		fvInTimePeakHighTime.clear();
		fvInTimeBeginInTime.clear();
		fvInTimeBeginInTime_peaksum.clear();

		fvInTimePeakSum0_peak.clear();
		fvInTimePeakSum0.clear();
		fvInTimePeakSum.clear();
		fvInTimePeakSumTime0.clear();
		fvInTimePeakSumTime1.clear();
		fvInTimePeakSumTime2.clear();


	//fSamples = 0;

	// TODO how to deal with graphs?
}

void InTimeOutTimeEvent::PrintTime(Int_t i) {
		cout << fTime[i] << endl;
}

void InTimeOutTimeEvent::PrintAmp(Int_t i) {
		cout << fAmp[i] << endl;
}

void InTimeOutTimeEvent::SetAmp(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("InTimeOutTimeEvent::SetAmp", "Array with raw amplitudes is overloaded!");
		return;
	}
	fAmp[i] = a;
	return;
}

void InTimeOutTimeEvent::SetfvInTimeAmp(Double_t amp) {
	fvInTimeAmp.push_back(amp);
	return;
}

void InTimeOutTimeEvent::SetfvInTimeTime(Double_t t) {
	fvInTimeTime.push_back(t);
	return;
}

void InTimeOutTimeEvent::SetfvInTimePeakHigh(Double_t amp) {
	fvInTimePeakHigh.push_back(amp);
	return;
}

void InTimeOutTimeEvent::SetfvInTimePeakHighTime(Double_t t) {
	fvInTimePeakHighTime.push_back(t);
	return;
}

void InTimeOutTimeEvent::SetfvInTimeBeginInTime(Double_t t) {
	fvInTimeBeginInTime.push_back(t);
	return;
}

void InTimeOutTimeEvent::SetfvInTimeBeginInTime_peaksum(Double_t t) {
	fvInTimeBeginInTime_peaksum.push_back(t);
	return;
}


void InTimeOutTimeEvent::SetfvInTimePeakSum0_peak(Double_t amp0_peak) {
	fvInTimePeakSum0_peak.push_back(amp0_peak);
	return;
}


void InTimeOutTimeEvent::SetfvInTimePeakSum0(Double_t area0) {
	fvInTimePeakSum0.push_back(area0);
	return;
}

void InTimeOutTimeEvent::SetfvInTimePeakSum(Double_t area) {
	fvInTimePeakSum.push_back(area);
	return;
}

void InTimeOutTimeEvent::SetfvInTimePeakSumTime0(Double_t t0) {
	fvInTimePeakSumTime0.push_back(t0);
	return;
}

void InTimeOutTimeEvent::SetfvInTimePeakSumTime1(Double_t t1) {
	fvInTimePeakSumTime1.push_back(t1);
	return;
}

void InTimeOutTimeEvent::SetfvInTimePeakSumTime2(Double_t t2) {
	fvInTimePeakSumTime2.push_back(t2);
	return;
}


void InTimeOutTimeEvent::SetTime(Double_t t, Int_t i) {
	if (i >=fNPoints) {
		Error("InTimeOutTimeEvent::SetTime", "Array with raw times is overloaded!");
		return;
	}
	fTime[i] = t;
	return;
}

void InTimeOutTimeEvent::SetPeakHigh(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("InTimeOutTimeEvent::SetPeakHigh", "Array with raw peak high amplitudes is overloaded!");
		return;
	}
	fPeakHigh[i] = a;
	return;
}

void InTimeOutTimeEvent::SetPeakHighTime(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("InTimeOutTimeEvent::SetPeakHighTime", "Array with peak high time  amplitudes is overloaded!");
		return;
	}
	fPeakHighTime[i] = a;
	return;
}

void InTimeOutTimeEvent::SetPeakSum0_peak(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("InTimeOutTimeEvent::SetPeakSum0_peak", "Array with peak sum0_peak  amplitudes is overloaded!");
		return;
	}
	fPeakSum0_peak[i] = a;
	return;
}

void InTimeOutTimeEvent::SetPeakSum0(signed long int a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("InTimeOutTimeEvent::SetPeakSum0", "Array with raw Peak Sum0 amplitudes is overloaded!");
		return;
	}
	fPeakSum0[i] = a;
	return;
}

void InTimeOutTimeEvent::SetPeakSum(signed long int a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("InTimeOutTimeEvent::SetPeakSum", "Array with raw Peak Sum amplitudes is overloaded!");
		return;
	}
	fPeakSum[i] = a;
	return;
}

void InTimeOutTimeEvent::SetPeakSumTime0(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("InTimeOutTimeEvent::SetPeakSumTime0", "Array with raw Peak Sum Time0 amplitudes is overloaded!");
		return;
	}
	fPeakSumTime0[i] = a;
	return;
}

void InTimeOutTimeEvent::SetPeakSumTime1(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("InTimeOutTimeEvent::SetPeakSumTime1", "Array with raw Peak Sum Time1 amplitudes is overloaded!");
		return;
	}
	fPeakSumTime1[i] = a;
	return;
}

void InTimeOutTimeEvent::SetPeakSumTime2(Double_t a, Int_t i) {
//	cout << fNPoints << endl;
	if (i >= fNPoints) {
		Error("InTimeOutTimeEvent::SetPeakSumTime2", "Array with raw Peak Sum Time2 amplitudes is overloaded!");
		return;
	}
	fPeakSumTime2[i] = a;
	return;
}


Double_t InTimeOutTimeEvent::GetTime(Int_t i) {
		return fTime[i];
}

Double_t InTimeOutTimeEvent::GetAmp(Int_t i) {

		return fAmp[i];
}

Double_t InTimeOutTimeEvent::GetPeakHigh(Int_t i) {

		return fPeakHigh[i];
}

Double_t InTimeOutTimeEvent::GetVInTimeAmp(Int_t i) {
		Double_t vAmp = fvInTimeAmp.at(i);
		return vAmp;
}

Double_t InTimeOutTimeEvent::GetVInTimeTime(Int_t i) {
		Double_t vtime = fvInTimeTime.at(i);
		return vtime;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakHigh(Int_t i) {
		Double_t vpeakhigh = fvInTimePeakHigh.at(i);
		return vpeakhigh;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakHighTime(Int_t i) {
		Double_t vpeakhightime = fvInTimePeakHighTime.at(i);
		return vpeakhightime;
}

Double_t InTimeOutTimeEvent::GetVInTimeBeginInTime(Int_t i) {
		Double_t vpeakhightime = fvInTimeBeginInTime.at(i);
		return vpeakhightime;
}

Double_t InTimeOutTimeEvent::GetVInTimeBeginInTime_peaksum(Int_t i) {
		Double_t vpeakhightime = fvInTimeBeginInTime_peaksum.at(i);
		return vpeakhightime;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakSum0_peak(Int_t i) {
		Double_t vpeaksum0_peak = fvInTimePeakSum0_peak.at(i);
		return vpeaksum0_peak;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakSum0(Int_t i) {
		Double_t vpeaksum0 = fvInTimePeakSum0.at(i);
		return vpeaksum0;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakSum(Int_t i) {
		Double_t vpeaksum = fvInTimePeakSum.at(i);
		return vpeaksum;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakSumTime0(Int_t i) {
		Double_t vpeaksumtime0 = fvInTimePeakSumTime0.at(i);
		return vpeaksumtime0;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakSumTime1(Int_t i) {
		Double_t vpeaksumtime1 = fvInTimePeakSumTime1.at(i);
		return vpeaksumtime1;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakSumTime2(Int_t i) {
	        Double_t vpeaksumtime2 = fvInTimePeakSumTime2.at(i);
	        return vpeaksumtime2;
}

Double_t InTimeOutTimeEvent::GetPeakHighTime(Int_t i) {
	        return fPeakHighTime[i];
}

Double_t InTimeOutTimeEvent::GetVInTimeAmpSize() {
	        Double_t size = fvInTimeAmp.size();
	        return size;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakHighSize() {
		Double_t size = fvInTimePeakHigh.size();
		return size;
}

Double_t InTimeOutTimeEvent::GetVInTimeBeginInTimeSize() {
		Double_t size = fvInTimeBeginInTime.size();
		return size;
}

Double_t InTimeOutTimeEvent::GetVInTimeBeginInTime_peaksumSize() {
		Double_t size = fvInTimeBeginInTime_peaksum.size();
		return size;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakSumSize() {
		Double_t size = fvInTimePeakSum.size();
		return size;
}

Double_t InTimeOutTimeEvent::GetPeakSum0_peak(Int_t i) {

		return fPeakSum0_peak[i];
}

Double_t InTimeOutTimeEvent::GetPeakSum0(Int_t i) {

		return fPeakSum0[i];
}

Double_t InTimeOutTimeEvent::GetPeakSum(Int_t i) {

		return fPeakSum[i];
}

Double_t InTimeOutTimeEvent::GetPeakSumTime0(Int_t i) {

		return fPeakSumTime0[i];
}

Double_t InTimeOutTimeEvent::GetPeakSumTime1(Int_t i) {

		return fPeakSumTime1[i];
}

Double_t InTimeOutTimeEvent::GetPeakSumTime2(Int_t i) {

		return fPeakSumTime2[i];
}

void InTimeOutTimeEvent::SetGraphs() {
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
