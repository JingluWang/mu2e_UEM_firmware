ROOTOPTS = `root-config --cflags`
ROOTLIBS = `root-config --libs`
CPPOPTS  = -g
#LIBS     = $(ROOTLIBS)

all: poke peek fei4_sr fei4_cal fei4_dig fei4_analog fei4_alive fei4_plot fei4_producer fei4_tdac fei4_trimfit fei4_self fei4_self_gui fei4_hot fmc228_dump fmc228_print amc502_mux amc502_pll amc502_lock amc502_stress amc502_edges fmc164_hist fmc164_plot fmc228_plot
#configure: configure.cc stib.cc stib.hh
#	g++ $(ROOTOPTS) -o configure configure.cc stib.cc $(LIBS)
#make10b8b : make10b8b.cc
#	g++ -g -o make10b8b make10b8b.cc
#test10b8b : test10b8b.cc
#	g++ -g -o test10b8b test10b8b.cc
#
poke : poke.cc stib.hh stib.cc
	g++ -g -o poke poke.cc stib.cc
peek : peek.cc stib.hh stib.cc
	g++ -g -o peek peek.cc stib.cc
#fei4_config : fei4_config.cc fei4.hh fei4.cc stib.hh stib.cc
#	g++ -g -o fei4_config fei4_config.cc fei4.cc stib.cc
#fei4_stream : fei4_stream.cc
#	g++ -g $(ROOTOPTS) -o fei4_stream fei4_stream.cc $(ROOTLIBS)
fei4_sr : fei4_sr.cc fei4.hh fei4.cc stib.hh stib.cc
	g++ -g -o fei4_sr fei4_sr.cc fei4.cc stib.cc
fei4_cal : fei4_cal.cc fei4.hh fei4.cc stib.hh stib.cc
	g++ -g -o fei4_cal fei4_cal.cc fei4.cc stib.cc
fei4_dig : fei4_dig.cc fei4.hh fei4.cc stib.hh stib.cc
	g++ -g -o fei4_dig fei4_dig.cc fei4.cc stib.cc
#fei4_dig320 : fei4_dig320.cc fei4.hh fei4.cc stib.hh stib.cc
#	g++ -g -o fei4_dig320 fei4_dig320.cc fei4.cc stib.cc
fei4_analog : fei4_analog.cc fei4.hh fei4.cc stib.hh stib.cc
	g++ -g $(ROOTOPTS) -o fei4_analog fei4_analog.cc fei4.cc stib.cc $(ROOTLIBS)
#fei4_read_latches : fei4_read_latches.cc fei4.hh fei4.cc stib.hh stib.cc
#	g++ -g -o fei4_read_latches fei4_read_latches.cc fei4.cc stib.cc
fei4_alive : fei4_alive.cc fei4.hh fei4.cc stib.hh stib.cc
	g++ -g $(ROOTOPTS) -o fei4_alive fei4_alive.cc fei4.cc stib.cc $(ROOTLIBS)
#fei4_alive320 : fei4_alive320.cc fei4.hh fei4.cc stib.hh stib.cc
#	g++ -g $(ROOTOPTS) -o fei4_alive320 fei4_alive320.cc fei4.cc stib.cc $(ROOTLIBS)
fei4_plot : fei4_plot.cc fei4.hh fei4.cc stib.hh stib.cc
	g++ -g $(ROOTOPTS) -o fei4_plot fei4_plot.cc fei4.cc stib.cc $(ROOTLIBS)
fei4_producer : fei4_producer.cc fei4.hh fei4.cc stib.hh stib.cc
	g++ -g $(ROOTOPTS) -o fei4_producer fei4_producer.cc fei4.cc stib.cc -lNew $(ROOTLIBS)
#fei4_reg : fei4_reg.cc fei4.hh fei4.cc stib.hh stib.cc
#	g++ -g -o fei4_reg fei4_reg.cc fei4.cc stib.cc
#fei4_latch : fei4_latch.cc fei4.hh fei4.cc stib.hh stib.cc
#	g++ -g -o fei4_latch fei4_latch.cc fei4.cc stib.cc
#fei4_scan : fei4_scan.cc fei4.hh fei4.cc stib.hh stib.cc
#	g++ -g $(ROOTOPTS) -o fei4_scan fei4_scan.cc fei4.cc stib.cc $(ROOTLIBS)
# fei4_analog : fei4_analog.cc fei4.hh fei4.cc stib.hh stib.cc
# 	g++ -g $(ROOTOPTS) -o fei4_analog fei4_analog.cc fei4.cc stib.cc $(ROOTLIBS)
fei4_tdac : fei4_tdac.cc fei4.hh fei4.cc stib.hh stib.cc
	g++ -g $(ROOTOPTS) -o fei4_tdac fei4_tdac.cc fei4.cc stib.cc $(ROOTLIBS)
#fei4_qdac : fei4_qdac.cc fei4.hh fei4.cc stib.hh stib.cc
#	g++ -g $(ROOTOPTS) -o fei4_qdac fei4_qdac.cc fei4.cc stib.cc $(ROOTLIBS)
fei4_trimfit : fei4_trimfit.cc fei4.hh fei4.cc stib.hh stib.cc
	g++ -g $(ROOTOPTS) -o fei4_trimfit fei4_trimfit.cc fei4.cc stib.cc $(ROOTLIBS)
#fei4_print : fei4_print.cc fei4.hh fei4.cc stib.hh stib.cc
#	g++ -g $(ROOTOPTS) -o fei4_print fei4_print.cc fei4.cc stib.cc $(ROOTLIBS)
#fei4_pdly : fei4_pdly.cc fei4.hh fei4.cc stib.hh stib.cc
#	g++ -g $(ROOTOPTS) -o fei4_pdly fei4_pdly.cc fei4.cc stib.cc $(ROOTLIBS)
#test_ethio: test_ethio.cc fei4.hh fei4.cc stib.hh stib.cc
#	g++ -g $(ROOTOPTS) -o test_ethio test_ethio.cc fei4.cc stib.cc $(ROOTLIBS)
#fei4_tot : fei4_tot.cc fei4.hh fei4.cc stib.hh stib.cc
#	g++ -g $(ROOTOPTS) -o fei4_tot fei4_tot.cc fei4.cc stib.cc $(ROOTLIBS)
#fei4_checktot : fei4_checktot.cc fei4.hh fei4.cc stib.hh stib.cc
#	g++ -g $(ROOTOPTS) -o fei4_checktot fei4_checktot.cc fei4.cc stib.cc $(ROOTLIBS)
fei4_self : fei4_self.cc fei4.hh fei4.cc stib.hh stib.cc
	g++ -g -o fei4_self fei4_self.cc fei4.cc stib.cc
fei4_self_gui : fei4_self_gui.cc fei4.hh fei4.cc stib.hh stib.cc
	g++ -g $(ROOTOPTS) -o fei4_self_gui fei4_self_gui.cc fei4.cc stib.cc $(ROOTLIBS)
fei4_hot : fei4_hot.cc fei4.hh fei4.cc stib.hh stib.cc
	g++ -g -o fei4_hot fei4_hot.cc fei4.cc stib.cc
fmc228_dump : fmc228_dump.cc fmc228.hh fmc228.cc stib.hh stib.cc
	g++ -g -o fmc228_dump fmc228_dump.cc fmc228.cc stib.cc
fmc228_print : fmc228_print.cc fmc228.hh fmc228.cc stib.hh stib.cc
	g++ -g -o fmc228_print fmc228_print.cc fmc228.cc stib.cc
#amc502_clocks : amc502_clocks.cc amc502.hh amc502.cc stib.hh stib.cc
#	g++ -g -o amc502_clocks amc502_clocks.cc amc502.cc stib.cc
amc502_mux : amc502_mux.cc amc502.hh amc502.cc stib.hh stib.cc
	g++ -g -o amc502_mux amc502_mux.cc amc502.cc stib.cc
amc502_pll : amc502_pll.cc amc502.hh amc502.cc stib.hh stib.cc
	g++ -g -o amc502_pll amc502_pll.cc amc502.cc stib.cc
amc502_lock : amc502_lock.cc amc502.hh amc502.cc stib.hh stib.cc
	g++ -g -o amc502_lock amc502_lock.cc amc502.cc stib.cc
amc502_stress : amc502_stress.cc amc502.hh amc502.cc stib.hh stib.cc
	g++ -g -o amc502_stress amc502_stress.cc amc502.cc stib.cc
amc502_edges : amc502_edges.cc amc502.hh amc502.cc stib.hh stib.cc
	g++ -g -o amc502_edges amc502_edges.cc amc502.cc stib.cc
fmc164_hist : fmc164_hist.cc
	g++ -g $(ROOTOPTS) -o fmc164_hist fmc164_hist.cc $(ROOTLIBS)
fmc164_plot : fmc164_plot.cc
	g++ -g $(ROOTOPTS) -o fmc164_plot fmc164_plot.cc $(ROOTLIBS)
fmc228_plot : fmc228_plot.cc
	g++ -g $(ROOTOPTS) -o fmc228_plot fmc228_plot.cc $(ROOTLIBS)

clean :
	rm  poke peek fei4_sr fei4_cal fei4_dig fei4_analog fei4_alive fei4_plot fei4_producer fei4_tdac fei4_trimfit fei4_self fei4_self_gui fei4_hot fmc228_dump fmc228_print amc502_mux amc502_pll amc502_lock amc502_stress amc502_edges fmc164_hist fmc164_plot fmc228_plot
