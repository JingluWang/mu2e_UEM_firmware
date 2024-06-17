void FullWavefom_test78()
{
//=========Macro generated from canvas: c_prof_ms/profile sum ms 
//=========  (Mon Feb 26 06:16:27 2024) by ROOT version 6.24/02
   TCanvas *c_prof_ms = new TCanvas("c_prof_ms", "profile sum ms ",0,64,1920,966);
   c_prof_ms->Range(-595.0001,-2550,6311,510);
   c_prof_ms->SetFillColor(0);
   c_prof_ms->SetBorderMode(0);
   c_prof_ms->SetBorderSize(2);
   c_prof_ms->SetFrameBorderMode(0);
   c_prof_ms->SetFrameBorderMode(0);
   
   Double_t Graph0_fx1[66] = {
   556,
   568,
   608,
   660,
   672,
   696,
   1092,
   1100,
   1108,
   1360,
   1376,
   1420,
   1472,
   1488,
   1512,
   1648,
   1656,
   1704,
   1880,
   1896,
   1916,
   1996,
   1896,
   2012,
   2132,
   2140,
   2148,
   2292,
   2308,
   2456,
   2812,
   2824,
   2848,
   3116,
   3128,
   3152,
   3352,
   3128,
   3364,
   3476,
   3492,
   3516,
   3624,
   3632,
   3776,
   3932,
   3948,
   3956,
   4160,
   4180,
   4296,
   4456,
   4484,
   4512,
   4636,
   4484,
   4656,
   4844,
   4860,
   4872,
   4980,
   5000,
   5064,
   5116,
   5136,
   5160};
   Double_t Graph0_fy1[66] = {
   0,
   -688,
   0,
   0,
   -816,
   0,
   0,
   -259,
   0,
   0,
   -1578,
   0,
   0,
   -928,
   0,
   0,
   -912,
   0,
   0,
   -1806,
   0,
   0,
   -1116,
   0,
   0,
   -1061,
   0,
   0,
   -1599,
   0,
   0,
   -1618,
   0,
   0,
   -1998,
   0,
   0,
   -1743,
   0,
   0,
   -671,
   0,
   0,
   -1974,
   0,
   0,
   -1662,
   0,
   0,
   -927,
   0,
   0,
   -1997,
   0,
   0,
   -575,
   0,
   0,
   -1902,
   0,
   0,
   -1022,
   0,
   0,
   -2040,
   0};
   TGraph *graph = new TGraph(66,Graph0_fx1,Graph0_fy1);
   graph->SetName("Graph0");
   graph->SetTitle("Waveform from pulse generator");
   graph->SetFillStyle(1000);
   
   TH1F *Graph_Graph01 = new TH1F("Graph_Graph01","Waveform from pulse generator",100,95.6,5620.4);
   Graph_Graph01->SetMinimum(-2244);
   Graph_Graph01->SetMaximum(204);
   Graph_Graph01->SetDirectory(0);
   Graph_Graph01->SetStats(0);

   Int_t ci;      // for color index setting
   TColor *color; // for color definition with alpha
   ci = TColor::GetColor("#000099");
   Graph_Graph01->SetLineColor(ci);
   Graph_Graph01->GetXaxis()->SetTitle("time (ns)");
   Graph_Graph01->GetXaxis()->SetLabelFont(42);
   Graph_Graph01->GetXaxis()->SetTitleOffset(1);
   Graph_Graph01->GetXaxis()->SetTitleFont(42);
   Graph_Graph01->GetYaxis()->SetLabelFont(42);
   Graph_Graph01->GetYaxis()->SetTitleFont(42);
   Graph_Graph01->GetZaxis()->SetLabelFont(42);
   Graph_Graph01->GetZaxis()->SetTitleOffset(1);
   Graph_Graph01->GetZaxis()->SetTitleFont(42);
   graph->SetHistogram(Graph_Graph01);
   
   graph->Draw("alp");
   
   TPaveText *pt = new TPaveText(0.2299713,0.9344958,0.7700287,0.995,"blNDC");
   pt->SetName("title");
   pt->SetBorderSize(0);
   pt->SetFillColor(0);
   pt->SetFillStyle(0);
   pt->SetTextFont(42);
   TText *pt_LaTex = pt->AddText("Waveform from pulse generator");
   pt->Draw();
   c_prof_ms->Modified();
   c_prof_ms->cd();
   c_prof_ms->SetSelected(c_prof_ms);
}
