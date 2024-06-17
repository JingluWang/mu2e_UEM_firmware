/*
 * CountEvent.h
 * This is Count Event Class
 *
 *  Created on: May 27, 2021
 *      Author: Nguyen Minh Truong
 *      Follow the raw event of vratik
 */

#ifndef DATACLASSES_COUNTEVENT_H_
#define DATACLASSES_COUNTEVENT_H_

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
using namespace std;
class CountEvent {

private:
//	Double_t fAmp[NCELLS]; //array for raw amplitudes
//	Double_t fTime[NCELLS]; //array for raw times

	TArrayD fAmp;	//array for raw amplitudes
	TArrayD fTime;	//array for raw times

	std::vector<std::vector<Double_t>> fvCount;
	std::vector<std::vector<Double_t>> fvCount_sum;
	std::vector<Double_t> fvCount_Event_Batch1;
	std::vector<Double_t> fvCount_Event_Batch2;

	const Int_t fNPoints;	//!

	TGraph *fGraphSignal;

//	TGraph *gAmp;

//public:
//	TArrayD fAmpA;

public:
	CountEvent();
	CountEvent(const Int_t npoints);
	virtual ~CountEvent();
	ClassDef(CountEvent,1);

	void Reset();
	//Resets arrays to zeros

	const Double_t* GetAmp() const { return fAmp.GetArray(); }
	
	const Double_t* GetTime() const { return fTime.GetArray(); }

	const Double_t* GetVCount(int j) const { return fvCount[j].data(); }
	const Double_t* GetVCount_sum(int j) const { return fvCount_sum[j].data(); }
	const Double_t* GetVCount_Event_Batch1() const { return fvCount_Event_Batch1.data(); }
	const Double_t* GetVCount_Event_Batch2() const { return fvCount_Event_Batch2.data(); }

	void SetAmp(Double_t a, Int_t i);
	//Takes amplitude (raw data, voltage from binary file) 
	//and places it in the array fAmp

	void SetTime(Double_t t, Int_t i);

	void SetfvCount(const vector<vector<Int_t> >& count );
	void SetfvCount_sum(const vector<vector<Int_t> >& count_sum );
	void SetfvCount_Event_Batch1(Double_t i);
	void SetfvCount_Event_Batch2(Double_t i);


	void PrintAmp(Int_t i);
	//Prints i amplitudes (to make sense i shold be NCELLS)

	void PrintTime(Int_t i);

	void ProcessEvent();

	Double_t GetTime(Int_t i);

	Double_t GetAmp(Int_t i);

	Double_t GetVCount(Int_t i, Int_t j);
	Double_t GetVCount_sum(Int_t i, Int_t j);
	Double_t GetVCount_Event_Batch1(Int_t i);
	Double_t GetVCount_Event_Batch2(Int_t i);

	Double_t GetVCount_Col_Size();
	Double_t GetVCount_Row_Size();
	Double_t GetVCount_sum_Col_Size();
	Double_t GetVCount_sum_Row_Size();
	Double_t GetVCount_Event_Batch1_Size();
	Double_t GetVCount_Event_Batch2_Size();

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

#endif /* DATACLASSES_COUNTEVENT_H_ */
