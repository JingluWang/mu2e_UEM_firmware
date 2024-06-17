/*
 * InTimeOutTimeEvent.cpp
 * This is Coincidence Event with Fit Function Class
 *
 *  Created on: April 18, 2021
 *      Author: Nguyen Minh Truong
 *      Follow RawEvent of vratik
 */

#include "InTimeOutTimeEvent.h"
#include "TProfile2D.h"
#define MaxPoints = 100000
#define MaxNofPeak = 100000

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
	//SetGraphs();
}

void InTimeOutTimeEvent::Init() {
	//fAmp.Set(fNPoints);
	//fTime.Set(fNPoints);
	//fPeakHigh.Set(fNPoints);
	//fPeakHighTime.Set(fNPoints);
	//fPeakSum0_peak.Set(fNPoints);
	//fPeakSum0.Set(fNPoints);
	//fPeakSum.Set(fNPoints);
	//fPeakSumTime0.Set(fNPoints);
	//fPeakSumTime1.Set(fNPoints);
	//fPeakSumTime2.Set(fNPoints);
	//fGraphSignal = new TGraph();

	std::vector<Double_t> fvInTimeAmp;
	std::vector<Double_t> fvInTimeTime;
	std::vector<Double_t> fvInTimePeakHigh;
	std::vector<Double_t> fvInTimePeakHighTime;
	std::vector<Double_t> fvInTimePeakSum0_peak;
	std::vector<Double_t> fvInTimePeakSum0;
	std::vector<Double_t> fvInTimePeakSum;
	std::vector<Double_t> fvInTimePeakSumTime0;
	std::vector<Double_t> fvInTimePeakSumTime1;
	std::vector<Double_t> fvInTimePeakSumTime2;

	std::vector<Double_t> fvOutTimeAmp;
	std::vector<Double_t> fvOutTimeTime;
	std::vector<Double_t> fvOutTimePeakHigh;
	std::vector<Double_t> fvOutTimePeakHighTime;
	std::vector<Double_t> fvOutTimePeakSum0_peak;
	std::vector<Double_t> fvOutTimePeakSum0;
	std::vector<Double_t> fvOutTimePeakSum;
	std::vector<Double_t> fvOutTimePeakSumTime0;
	std::vector<Double_t> fvOutTimePeakSumTime1;
	std::vector<Double_t> fvOutTimePeakSumTime2;
}

void InTimeOutTimeEvent::Reset() {

	//for (Int_t i = 0; i < fNPoints; i++) {
	//	fAmp[i] = 0;
	//	fTime[i] = 0;
	//	fTime[i] = 0;
	//	fPeakHigh[i] = 0;
	//	fPeakHighTime[i] = 0;
	//	fPeakSum0_peak[i] = 0;
	//	fPeakSum0[i] = 0;
	//	fPeakSum[i] = 0;
	//	fPeakSumTime0[i] = 0;
	//	fPeakSumTime1[i] = 0;
	//	fPeakSumTime2[i] = 0;

	//}
		fvInTimeAmp.clear();
		fvInTimeTime.clear();

		fvInTimePeakHigh.clear();
		fvInTimePeakHighTime.clear();

		fvInTimePeakSum0_peak.clear();
		fvInTimePeakSum0.clear();
		fvInTimePeakSum.clear();
		fvInTimePeakSumTime0.clear();
		fvInTimePeakSumTime1.clear();
		fvInTimePeakSumTime2.clear();

		fvOutTimeAmp.clear();
		fvOutTimeTime.clear();

		fvOutTimePeakHigh.clear();
		fvOutTimePeakHighTime.clear();

		fvOutTimePeakSum0_peak.clear();
		fvOutTimePeakSum0.clear();
		fvOutTimePeakSum.clear();
		fvOutTimePeakSumTime0.clear();
		fvOutTimePeakSumTime1.clear();
		fvOutTimePeakSumTime2.clear();

	//fSamples = 0;

	// TODO how to deal with graphs?
}

//void InTimeOutTimeEvent::PrintTime(Int_t i) {
//		cout << fTime[i] << endl;
//}
//
//void InTimeOutTimeEvent::PrintAmp(Int_t i) {
//		cout << fAmp[i] << endl;
//}
//
//void InTimeOutTimeEvent::SetAmp(Double_t a, Int_t i) {
////	cout << fNPoints << endl;
//	if (i >= fNPoints) {
//		Error("CoinEventFitFunction::SetAmp", "Array with raw amplitudes is overloaded!");
//		return;
//	}
//	fAmp[i] = a;
//	return;
//}

void InTimeOutTimeEvent::SetfvInTimeAmp(Double_t amp) {
	fvInTimeAmp.push_back(amp);
	return;
}

void InTimeOutTimeEvent::SetfvOutTimeAmp(Double_t amp) {
	fvOutTimeAmp.push_back(amp);
	return;
}

void InTimeOutTimeEvent::SetfvInTimeTime(Double_t t) {
	fvInTimeTime.push_back(t);
	return;
}

void InTimeOutTimeEvent::SetfvOutTimeTime(Double_t t) {
	fvOutTimeTime.push_back(t);
	return;
}

void InTimeOutTimeEvent::SetfvInTimePeakHigh(Double_t amp) {
	fvInTimePeakHigh.push_back(amp);
	return;
}

void InTimeOutTimeEvent::SetfvOutTimePeakHigh(Double_t amp) {
	fvOutTimePeakHigh.push_back(amp);
	return;
}

void InTimeOutTimeEvent::SetfvInTimePeakHighTime(Double_t t) {
	fvInTimePeakHighTime.push_back(t);
	return;
}

void InTimeOutTimeEvent::SetfvOutTimePeakHighTime(Double_t t) {
	fvOutTimePeakHighTime.push_back(t);
	return;
}

void InTimeOutTimeEvent::SetfvInTimePeakSum0_peak(Double_t amp0_peak) {
	fvInTimePeakSum0_peak.push_back(amp0_peak);
	return;
}

void InTimeOutTimeEvent::SetfvOutTimePeakSum0_peak(Double_t amp0_peak) {
	fvOutTimePeakSum0_peak.push_back(amp0_peak);
	return;
}

void InTimeOutTimeEvent::SetfvInTimePeakSum0(Double_t area0) {
	fvInTimePeakSum0.push_back(area0);
	return;
}

void InTimeOutTimeEvent::SetfvOutTimePeakSum0(Double_t area0) {
	fvOutTimePeakSum0.push_back(area0);
	return;
}

void InTimeOutTimeEvent::SetfvInTimePeakSum(Double_t area) {
	fvInTimePeakSum.push_back(area);
	return;
}

void InTimeOutTimeEvent::SetfvOutTimePeakSum(Double_t area) {
	fvOutTimePeakSum.push_back(area);
	return;
}

void InTimeOutTimeEvent::SetfvInTimePeakSumTime0(Double_t t0) {
	fvInTimePeakSumTime0.push_back(t0);
	return;
}

void InTimeOutTimeEvent::SetfvOutTimePeakSumTime0(Double_t t0) {
	fvOutTimePeakSumTime0.push_back(t0);
	return;
}

void InTimeOutTimeEvent::SetfvInTimePeakSumTime1(Double_t t1) {
	fvInTimePeakSumTime1.push_back(t1);
	return;
}

void InTimeOutTimeEvent::SetfvOutTimePeakSumTime1(Double_t t1) {
	fvOutTimePeakSumTime1.push_back(t1);
	return;
}

void InTimeOutTimeEvent::SetfvInTimePeakSumTime2(Double_t t2) {
	fvInTimePeakSumTime2.push_back(t2);
	return;
}

void InTimeOutTimeEvent::SetfvOutTimePeakSumTime2(Double_t t2) {
	fvOutTimePeakSumTime2.push_back(t2);
	return;
}


//void InTimOutTimeEvent::SetTime(Double_t t, Int_t i) {
//	if (i >=fNPoints) {
//		Error("InTimOutTimeEvent::SetTime", "Array with raw times is overloaded!");
//		return;
//	}
//	fTime[i] = t;
//	return;
//}
//
//void InTimOutTimeEvent::SetPeakHigh(Double_t a, Int_t i) {
////	cout << fNPoints << endl;
//	if (i >= fNPoints) {
//		Error("InTimOutTimeEvent::SetPeakHigh", "Array with raw peak high amplitudes is overloaded!");
//		return;
//	}
//	fPeakHigh[i] = a;
//	return;
//}
//
//void InTimOutTimeEvent::SetPeakHighTime(Double_t a, Int_t i) {
////	cout << fNPoints << endl;
//	if (i >= fNPoints) {
//		Error("InTimOutTimeEvent::SetPeakHighTime", "Array with peak high time  amplitudes is overloaded!");
//		return;
//	}
//	fPeakHighTime[i] = a;
//	return;
//}
//
//void InTimOutTimeEvent::SetPeakSum0_peak(Double_t a, Int_t i) {
////	cout << fNPoints << endl;
//	if (i >= fNPoints) {
//		Error("InTimOutTimeEvent::SetPeakSum0_peak", "Array with peak sum0_peak  amplitudes is overloaded!");
//		return;
//	}
//	fPeakSum0_peak[i] = a;
//	return;
//}
//
//void InTimOutTimeEvent::SetPeakSum0(signed long int a, Int_t i) {
////	cout << fNPoints << endl;
//	if (i >= fNPoints) {
//		Error("InTimOutTimeEvent::SetPeakSum0", "Array with raw Peak Sum0 amplitudes is overloaded!");
//		return;
//	}
//	fPeakSum0[i] = a;
//	return;
//}
//
//void InTimOutTimeEvent::SetPeakSum(signed long int a, Int_t i) {
////	cout << fNPoints << endl;
//	if (i >= fNPoints) {
//		Error("InTimOutTimeEvent::SetPeakSum", "Array with raw Peak Sum amplitudes is overloaded!");
//		return;
//	}
//	fPeakSum[i] = a;
//	return;
//}
//
//void InTimOutTimeEvent::SetPeakSumTime0(Double_t a, Int_t i) {
////	cout << fNPoints << endl;
//	if (i >= fNPoints) {
//		Error("InTimOutTimeEvent::SetPeakSumTime0", "Array with raw Peak Sum Time0 amplitudes is overloaded!");
//		return;
//	}
//	fPeakSumTime0[i] = a;
//	return;
//}
//
//void InTimOutTimeEvent::SetPeakSumTime1(Double_t a, Int_t i) {
////	cout << fNPoints << endl;
//	if (i >= fNPoints) {
//		Error("InTimOutTimeEvent::SetPeakSumTime1", "Array with raw Peak Sum Time1 amplitudes is overloaded!");
//		return;
//	}
//	fPeakSumTime1[i] = a;
//	return;
//}
//
//void InTimOutTimeEvent::SetPeakSumTime2(Double_t a, Int_t i) {
////	cout << fNPoints << endl;
//	if (i >= fNPoints) {
//		Error("InTimOutTimeEvent::SetPeakSumTime2", "Array with raw Peak Sum Time2 amplitudes is overloaded!");
//		return;
//	}
//	fPeakSumTime2[i] = a;
//	return;
//}


//Double_t InTimOutTimeEvent::GetTime(Int_t i) {
//		return fTime[i];
//}
//
//Double_t InTimOutTimeEvent::GetAmp(Int_t i) {
//
//		return fAmp[i];
//}
//
//Double_t InTimOutTimeEvent::GetPeakHigh(Int_t i) {
//
//		return fPeakHigh[i];
//}

Double_t InTimeOutTimeEvent::GetVInTimeAmp(Int_t i) {
		Double_t vAmp = fvInTimeAmp.at(i);
		return vAmp;
}

Double_t InTimeOutTimeEvent::GetVOutTimeAmp(Int_t i) {
		Double_t vAmp = fvOutTimeAmp.at(i);
		return vAmp;
}

Double_t InTimeOutTimeEvent::GetVInTimeTime(Int_t i) {
		Double_t vtime = fvInTimeTime.at(i);
		return vtime;
}

Double_t InTimeOutTimeEvent::GetVOutTimeTime(Int_t i) {
		Double_t vtime = fvOutTimeTime.at(i);
		return vtime;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakHigh(Int_t i) {
		Double_t vpeakhigh = fvInTimePeakHigh.at(i);
		return vpeakhigh;
}

Double_t InTimeOutTimeEvent::GetVOutTimePeakHigh(Int_t i) {
		Double_t vpeakhigh = fvOutTimePeakHigh.at(i);
		return vpeakhigh;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakHighTime(Int_t i) {
		Double_t vpeakhightime = fvInTimePeakHighTime.at(i);
		return vpeakhightime;
}

Double_t InTimeOutTimeEvent::GetVOutTimePeakHighTime(Int_t i) {
		Double_t vpeakhightime = fvOutTimePeakHighTime.at(i);
		return vpeakhightime;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakSum0_peak(Int_t i) {
		Double_t vpeaksum0_peak = fvInTimePeakSum0_peak.at(i);
		return vpeaksum0_peak;
}

Double_t InTimeOutTimeEvent::GetVOutTimePeakSum0_peak(Int_t i) {
		Double_t vpeaksum0_peak = fvOutTimePeakSum0_peak.at(i);
		return vpeaksum0_peak;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakSum0(Int_t i) {
		Double_t vpeaksum0 = fvInTimePeakSum0.at(i);
		return vpeaksum0;
}

Double_t InTimeOutTimeEvent::GetVOutTimePeakSum0(Int_t i) {
		Double_t vpeaksum0 = fvOutTimePeakSum0.at(i);
		return vpeaksum0;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakSum(Int_t i) {
		Double_t vpeaksum = fvInTimePeakSum.at(i);
		return vpeaksum;
}

Double_t InTimeOutTimeEvent::GetVOutTimePeakSum(Int_t i) {
		Double_t vpeaksum = fvOutTimePeakSum.at(i);
		return vpeaksum;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakSumTime0(Int_t i) {
		Double_t vpeaksumtime0 = fvInTimePeakSumTime0.at(i);
		return vpeaksumtime0;
}

Double_t InTimeOutTimeEvent::GetVOutTimePeakSumTime0(Int_t i) {
		Double_t vpeaksumtime0 = fvOutTimePeakSumTime0.at(i);
		return vpeaksumtime0;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakSumTime1(Int_t i) {
		Double_t vpeaksumtime1 = fvInTimePeakSumTime1.at(i);
		return vpeaksumtime1;
}

Double_t InTimeOutTimeEvent::GetVOutTimePeakSumTime1(Int_t i) {
		Double_t vpeaksumtime1 = fvOutTimePeakSumTime1.at(i);
		return vpeaksumtime1;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakSumTime2(Int_t i) {
	        Double_t vpeaksumtime2 = fvInTimePeakSumTime2.at(i);
	        return vpeaksumtime2;
}

Double_t InTimeOutTimeEvent::GetVOutTimePeakSumTime2(Int_t i) {
	        Double_t vpeaksumtime2 = fvOutTimePeakSumTime2.at(i);
	        return vpeaksumtime2;
}



//Double_t InTimeOutTimeEvent::GetPeakHighTime(Int_t i) {
//	        return fPeakHighTime[i];
//}

Double_t InTimeOutTimeEvent::GetVInTimeAmpSize() {
	        Double_t size = fvInTimeAmp.size();
	        return size;
}

Double_t InTimeOutTimeEvent::GetVOutTimeAmpSize() {
	        Double_t size = fvOutTimeAmp.size();
	        return size;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakHighSize() {
		Double_t size = fvInTimePeakHigh.size();
		return size;
}

Double_t InTimeOutTimeEvent::GetVOutTimePeakHighSize() {
		Double_t size = fvOutTimePeakHigh.size();
		return size;
}

Double_t InTimeOutTimeEvent::GetVInTimePeakSumSize() {
		Double_t size = fvInTimePeakSum.size();
		return size;
}

Double_t InTimeOutTimeEvent::GetVOutTimePeakSumSize() {
		Double_t size = fvOutTimePeakSum.size();
		return size;
}

//Double_t InTimOutTimeEvent::GetPeakSum0_peak(Int_t i) {
//
//		return fPeakSum0_peak[i];
//}
//
//Double_t InTimOutTimeEvent::GetPeakSum0(Int_t i) {
//
//		return fPeakSum0[i];
//}
//
//Double_t InTimOutTimeEvent::GetPeakSum(Int_t i) {
//
//		return fPeakSum[i];
//}
//
//Double_t InTimOutTimeEvent::GetPeakSumTime0(Int_t i) {
//
//		return fPeakSumTime0[i];
//}
//
//Double_t InTimOutTimeEvent::GetPeakSumTime1(Int_t i) {
//
//		return fPeakSumTime1[i];
//}
//
//Double_t InTimOutTimeEvent::GetPeakSumTime2(Int_t i) {
//
//		return fPeakSumTime2[i];
//}
//
//void InTimOutTimeEvent::SetGraphs() {
//	fGraphSignal->Set(fNPoints);
//	for(Int_t i=0; i<fNPoints; i++){
//	    fGraphSignal->SetPoint(i,fTime[i],fAmp[i]);	
//	}
//}

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
