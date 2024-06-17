void TimeSpan_test78()
{
//=========Macro generated from canvas: c_prof_ms/profile sum ms 
//=========  (Mon Feb 26 08:47:59 2024) by ROOT version 6.24/02
   TCanvas *c_prof_ms = new TCanvas("c_prof_ms", "profile sum ms ",835,297,700,500);
   c_prof_ms->Range(-15,-25.725,135,231.525);
   c_prof_ms->SetFillColor(0);
   c_prof_ms->SetBorderMode(0);
   c_prof_ms->SetBorderSize(2);
   c_prof_ms->SetFrameBorderMode(0);
   c_prof_ms->SetFrameBorderMode(0);
   
   TH1F *sP__1 = new TH1F("sP__1","time span of the signal ",20,0,120);
   sP__1->SetBinContent(0,626);
   sP__1->SetBinContent(1,196);
   sP__1->SetBinContent(2,21);
   sP__1->SetBinContent(3,58);
   sP__1->SetBinContent(4,31);
   sP__1->SetBinContent(5,70);
   sP__1->SetBinContent(6,36);
   sP__1->SetBinContent(7,57);
   sP__1->SetBinContent(8,15);
   sP__1->SetBinContent(9,45);
   sP__1->SetBinContent(10,25);
   sP__1->SetBinContent(11,41);
   sP__1->SetBinContent(12,22);
   sP__1->SetBinContent(13,10);
   sP__1->SetBinContent(14,7);
   sP__1->SetBinContent(15,27);
   sP__1->SetBinContent(16,2);
   sP__1->SetBinContent(17,15);
   sP__1->SetBinContent(18,5);
   sP__1->SetBinContent(19,9);
   sP__1->SetBinContent(20,2);
   sP__1->SetBinContent(21,135);
   sP__1->SetEntries(1455);
   
   TPaveStats *ptstats = new TPaveStats(0.722063,0.6848739,0.9226361,0.8466387,"brNDC");
   ptstats->SetName("stats");
   ptstats->SetBorderSize(1);
   ptstats->SetFillColor(0);
   ptstats->SetTextAlign(12);
   ptstats->SetTextFont(42);
   TText *ptstats_LaTex = ptstats->AddText(" ");
   ptstats_LaTex->SetTextSize(0.03720588);
   ptstats_LaTex = ptstats->AddText("Entries = 1455   ");
   ptstats_LaTex = ptstats->AddText("Mean  =  31.88");
   ptstats_LaTex = ptstats->AddText("Std Dev   =  29.81");
   ptstats->SetOptStat(1111);
   ptstats->SetOptFit(0);
   ptstats->Draw();
   sP__1->GetListOfFunctions()->Add(ptstats);
   ptstats->SetParent(sP__1);

   Int_t ci;      // for color index setting
   TColor *color; // for color definition with alpha
   ci = TColor::GetColor("#000099");
   sP__1->SetLineColor(ci);
   sP__1->GetXaxis()->SetTitle("time (ns)");
   sP__1->GetXaxis()->SetLabelFont(42);
   sP__1->GetXaxis()->SetTitleOffset(1);
   sP__1->GetXaxis()->SetTitleFont(42);
   sP__1->GetYaxis()->SetLabelFont(42);
   sP__1->GetYaxis()->SetTitleFont(42);
   sP__1->GetZaxis()->SetLabelFont(42);
   sP__1->GetZaxis()->SetTitleOffset(1);
   sP__1->GetZaxis()->SetTitleFont(42);
   sP__1->Draw("");
   
   TPaveText *pt = new TPaveText(0.2965903,0.9344958,0.7034097,0.995,"blNDC");
   pt->SetName("title");
   pt->SetBorderSize(0);
   pt->SetFillColor(0);
   pt->SetFillStyle(0);
   pt->SetTextFont(42);
   TText *pt_LaTex = pt->AddText("time span of the signal ");
   pt->Draw();
   c_prof_ms->Modified();
   c_prof_ms->cd();
   c_prof_ms->SetSelected(c_prof_ms);
}
