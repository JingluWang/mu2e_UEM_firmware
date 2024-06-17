#include <TTree.h>
#include <TGraph.h>
#include <TFile.h>
#include <TSystem.h>
#include <TCanvas.h>
#include "TStyle.h"
#include <TProfile2D.h>

void testShowGraphs_rawevent_v2()
{
	using std::cout;
	using std::endl;

	gStyle->SetCanvasDefH(900);
	gStyle->SetCanvasDefW(1500);

//	const char *foldername = "7_8";
	const char *foldername = "nustar_present";
	const char *ext = ".pdf";

	gSystem->Load("../libData.so");

	const Long64_t kFirstEvent = 0;

//	TFile fr("../data/dataDSR4/Neurad_7_08_NEW.root");
//	TFile fr("../data/dataDSR4/analysis_07_8.root");
	//TFile fr("../data/dataDSR4/analysis_08_2.root");
	//TFile fr("../convertFMC228/datafmc228i_v9.root");
	TFile fr("../convertFMC228/data_Nov24/test.root");

//	TFile fr("../data/dataDSR4/Neurad_081216_2NEW.root");

//	TFile fr("../data/dataTektronix/exp18.root");

	//TFile fr("../data/dataDSR4/analysis_07_8_smooth.root");

//	TFile fr("../data/dataDSR4/Neurad_081216_2NEW.root");
//	TFile fr("../data/dataTektronix/exp18.root");

//	TFile fr("../data/dataTektronix/analysisExp7.root");
	TTree *tr = (TTree*)fr.Get("rtree");

	RawEvent *revent = new RawEvent();
	tr->SetBranchAddress("ch0.",&revent);

	TGraph *gr[10];

	//TProfile2D *
	//hprof = new TProfile2D("hprofile2d","Profile  2d",600,0,600,2000,-2000,2000,10,0,10);

	Double_t t10[10];
	Double_t t90[10];
	Int_t x[600];
	Int_t y[600];
	//loop over events
	for (Long64_t i = 0; i < 10; i++) {
		//gr[i] = 0;
		t10[i] = 0;
		t90[i] = 0;

		tr->GetEntry(i+kFirstEvent);
		for(int j=0; j<600; j++){
			x[j] =revent->GetTime(j);
			y[j] =revent->GetAmp(j);
			//gr[i]->SetPoint(j,x[j],y[j]);
		}
		gr[i] = new TGraph(600,x,y);

		//gr[i] = new TGraph(*revent->GetGraphSignal());
		//t10[i] = revent->GetT_10();
		//t90[i] = revent->GetT_90();

//		cout << t10[i] << "\t" << t90[i] << endl;
//		cout << revent->GetEdgeSlope() << endl;


	}//for over events

	TF1 *f1 = new TF1("f1name", "[0]+x*[1]");

	TCanvas *c1 = new TCanvas("c1","Signal shape",10,10,1000,600);
	//c1->Divide(3,4);

// four event picture
	c1->Divide(2,2);
	for (Int_t k = 0; k < 4; k++) {
		c1->cd(k+1);
		//gr[k]->GetXaxis()->SetRangeUser(130, 175);
		gr[k]->GetXaxis()->SetTitle("Time [ns]");
		gr[k]->GetXaxis()->CenterTitle();
		gr[k]->GetYaxis()->SetTitle("Signal [V]");
		gr[k]->GetYaxis()->CenterTitle();
		gr[k]->Draw("AL*");
		//cout << t10[k] << "\t" << t90[k] << endl;
		//f1->SetRange(t10[k], t90[k]);
		//gr[k]->Fit(f1, "RQ");
	}
	//c1->Print(Form("../macros/picsDRS4/%s/Signal_shapes_bad%s", foldername, ext));

// one event picture
/*	gr[4]->GetXaxis()->SetRangeUser(130, 160);
	gr[4]->GetXaxis()->SetTitle("Time [ns]");
	gr[4]->GetXaxis()->CenterTitle();
	gr[4]->GetYaxis()->SetTitle("Signal [V]");
	gr[4]->GetYaxis()->CenterTitle();
	gr[4]->Draw("AL*");
	f1->SetRange(t10[4], t90[4]);
	gr[4]->Fit(f1, "RQ");
	c1->Print(Form("../macros/picsDRS4/%s/One_signal_shape%s", foldername, ext));




	//c1->Print(Form("../macros/picsDRS4/%s/Signal_shapes_with_fit%s", foldername, ext));
*/

// picture for TDR
	/*
	c1->Divide(1,2);
	c1->cd(1);
	gr[2]->GetXaxis()->SetRangeUser(130, 175);
	gr[2]->GetXaxis()->SetTitle("Time [ns]");
	gr[2]->GetXaxis()->CenterTitle();
	gr[2]->GetYaxis()->SetTitle("Signal [V]");
	gr[2]->GetYaxis()->CenterTitle();
	gr[2]->Draw("AL*");

	c1->cd(2);
	gr[3]->GetXaxis()->SetRangeUser(130, 175);
	gr[3]->GetXaxis()->SetTitle("Time [ns]");
	gr[3]->GetXaxis()->CenterTitle();
	gr[3]->GetYaxis()->SetTitle("Signal [V]");
	gr[3]->GetYaxis()->CenterTitle();
	gr[3]->Draw("AL*");
	*/
}
