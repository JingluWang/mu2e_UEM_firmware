void example()
{

   TCanvas *c1 = new TCanvas("c1","profile",200,10,700,500);
   hprof2d = new TProfile2D("hprof2d","profile 2D",40,-4,4,40,-4,4,0,20);
   Float_t px,py,pz;
   for(Int_t i=0;i<25000;i++){
	gRandom->Rannor(px,py);
	pz=px*px + py*py;
	hprof2d -> Fill(px,py,pz,1);

   }
   hprof2d->Draw("colz");
}
