/*
 * InTimeOutTimeEvent.h
 * This is In-Time Out-Time Event Class
 *
 *  Created on: Feb 17, 2020
 *      Author: Nguyen Minh Truong
 *      Follow the raw event of vratik
 */

#ifndef DATACLASSES_INTIMEOUTTIMEEVENT_H_
#define DATACLASSES_INTIMEOUTTIMEEVENT_H_

#include <iostream>

//#include "Rtypes.h"
#include "TError.h"
#include "TGraph.h"
#include "TArrayD.h"
#include "TProfile2D.h"

#include <vector> 

//#define NCELLS 1024

using std::cout;
using std::endl;

//class CoinEventFitFunction {
class InTimeOutTimeEvent {

private:
//	Double_t fAmp[NCELLS]; //array for raw amplitudes
//	Double_t fTime[NCELLS]; //array for raw times

	TArrayD fAmp;	//array for raw amplitudes
	TArrayD fTime;	//array for raw times
	TArrayD fPeakHigh;	//array for raw times
	TArrayD fPeakHighTime;	//array for raw times
	TArrayD fPeakSum0_peak;	//array for raw times
	TArrayD fPeakSum0;	//array for raw times
	TArrayD fPeakSum;	//array for raw times
	TArrayD fPeakSumTime0;	//array for raw times
	TArrayD fPeakSumTime1;	//array for raw times
	TArrayD fPeakSumTime2;	//array for raw times

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
	


	const Int_t fNPoints;	//!

	TGraph *fGraphSignal;

//	TGraph *gAmp;

//public:
//	TArrayD fAmpA;

public:
	//CoinEventFitFunction();
	InTimeOutTimeEvent();
	//CoinEventFitFunction(const Int_t npoints);
	InTimeOutTimeEvent(const Int_t npoints);
	//virtual ~CoinEventFitFunction();
	virtual ~InTimeOutTimeEvent();
	//ClassDef(CoinEventFitFunction,1);
	ClassDef(InTimeOutTimeEvent,1);

	void Reset();
	//Resets arrays to zeros

	const Double_t* GetAmp() const { return fAmp.GetArray(); }
	
	const Double_t* GetTime() const { return fTime.GetArray(); }

	const Double_t* GetPeakHigh() const { return fPeakHigh.GetArray(); }
	const Double_t* GetPeakHighTime() const { return fPeakHighTime.GetArray(); }

	const Double_t* GetVInTimeAmp() const { return fvInTimeAmp.data(); }
	const Double_t* GetVInTimeTime() const { return fvInTimeTime.data(); }

	const Double_t* GetVInTimePeakHigh() const { return fvInTimePeakHigh.data(); }
	const Double_t* GetVInTimePeakHighTime() const { return fvInTimePeakHighTime.data(); }
	const Double_t* GetVInTimeBeginInTime() const { return fvInTimeBeginInTime.data(); }
	const Double_t* GetVInTimeBeginInTime_peaksum() const { return fvInTimeBeginInTime_peaksum.data(); }

	const Double_t* GetVInTimePeakSum0_peak() const { return fvInTimePeakSum0_peak.data(); }
	const Double_t* GetVInTimePeakSum0() const { return fvInTimePeakSum0.data(); }
	const Double_t* GetVInTimePeakSum() const { return fvInTimePeakSum.data(); }
	const Double_t* GetVInTimePeakSumTime0() const { return fvInTimePeakSumTime0.data(); }
	const Double_t* GetVInTimePeakSumTime1() const { return fvInTimePeakSumTime1.data(); }
	const Double_t* GetVInTimePeakSumTime2() const { return fvInTimePeakSumTime2.data(); }

	const Double_t* GetPeakSum() const { return fPeakSum.GetArray(); }
	const Double_t* GetPeakSumTime1() const { return fPeakSumTime1.GetArray(); }
	const Double_t* GetPeakSumTime2() const { return fPeakSumTime2.GetArray(); }


	void SetAmp(Double_t a, Int_t i);
	//Takes amplitude (raw data, voltage from binary file) 
	//and places it in the array fAmp

	void SetTime(Double_t t, Int_t i);

	void SetfvInTimeAmp(Double_t t);
	void SetfvInTimeTime(Double_t t);

	void SetfvInTimePeakHigh(Double_t t);
	void SetfvInTimePeakHighTime(Double_t t);
	void SetfvInTimeBeginInTime(Double_t t);
	void SetfvInTimeBeginInTime_peaksum(Double_t t);

	void SetfvInTimePeakSum0(Double_t t);
	void SetfvInTimePeakSum0_peak(Double_t t);
	void SetfvInTimePeakSum(Double_t t);
	void SetfvInTimePeakSumTime0(Double_t t);
	void SetfvInTimePeakSumTime1(Double_t t);
	void SetfvInTimePeakSumTime2(Double_t t);

	//Takes time (raw data, times from binary file) 
	//and places it in the array fTime

	void SetPeakHigh(Double_t t, Int_t i);
	void SetPeakHighTime(Double_t t, Int_t i);
	void SetPeakSum0_peak(Double_t t, Int_t i);
	void SetPeakSum0(signed long int t, Int_t i);
	void SetPeakSum(signed long int t, Int_t i);
	void SetPeakSumTime0(Double_t t, Int_t i);
	void SetPeakSumTime1(Double_t t, Int_t i);
	void SetPeakSumTime2(Double_t t, Int_t i);
	void PrintAmp(Int_t i);
	//Prints i amplitudes (to make sense i shold be NCELLS)

	void PrintTime(Int_t i);

	void ProcessEvent();

	Double_t GetTime(Int_t i);

	Double_t GetAmp(Int_t i);

	Double_t GetPeakHigh(Int_t i);
	Double_t GetPeakHighTime(Int_t i);

	Double_t GetVInTimeAmp(Int_t i);
	Double_t GetVInTimeTime(Int_t i);

	Double_t GetVInTimePeakHigh(Int_t i);
	Double_t GetVInTimePeakHighTime(Int_t i);
	Double_t GetVInTimeBeginInTime(Int_t i);
	Double_t GetVInTimeBeginInTime_peaksum(Int_t i);

	Double_t GetVInTimePeakSum0_peak(Int_t i);
	Double_t GetVInTimePeakSum0(Int_t i);
	Double_t GetVInTimePeakSum(Int_t i);
	Double_t GetVInTimePeakSumTime0(Int_t i);
	Double_t GetVInTimePeakSumTime1(Int_t i);
	Double_t GetVInTimePeakSumTime2(Int_t i);

	Double_t GetVInTimeAmpSize();

	Double_t GetVInTimePeakHighSize();
	Double_t GetVInTimeBeginInTimeSize();
	Double_t GetVInTimeBeginInTime_peaksumSize();
	Double_t GetVInTimePeakSumSize();

	Double_t GetPeakSum0_peak(Int_t i);
	Double_t GetPeakSum0(Int_t i);
	Double_t GetPeakSum(Int_t i);

	Double_t GetPeakSumTime0(Int_t i);
	Double_t GetPeakSumTime1(Int_t i);
	Double_t GetPeakSumTime2(Int_t i);

	TGraph* GetGraphSignal(){
		return fGraphSignal;
	}
//	void InvertAmp(Double_t a, Int_t i);
	//Inverts the amplitudes i.e. makes from negative singals 
	//posititve signals and vise versa.

//	void SetGraphs();
//	TGraph* GetGraph() {
//		return gAmp;
//	}
//
	//void GetSample(int i){
	//    //if(i>=0 && i<(int)fSamples.size())
	//     return fSamples->at(i);
	//    //return 9999999;
	//}
	//void AddSamples(std::vector<double>Samples){
	//	fSamples = Samples;
	//}

	void SetGraphs();
private:
	void Init();
	//std::vector<Double_t> fvPeakHighTime;
	//std::vector<Double_t> fvPeakHigh;
	//void SetGraphs();
};

#endif /* DATACLASSES_RAWEVENT_H_ */
