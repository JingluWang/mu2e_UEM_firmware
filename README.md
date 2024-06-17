This repository documents the Xilinx Vivado project required to run the FPGA in the Vadatech microTCA crate. Main instructions are found here: https://eprebys.faculty.ucdavis.edu/mu2e-uem-microtca-firmware-notes/

A couple comments:

- The above software is built to compile on Vivado version 2016.2. If you are having trouble installing Vivado 2016.2, try unchecking the boxes in setup for "Create shortcuts on desktop" and "Add this to program group" (not sure if this actually helps, but someone said to do it and I've been doing it along with the next step), and also (specifically for AlmaLinux), try running `dnf install epel-release` and `dnf install -y ncurses-compat-libs` and then reinstalling.
- In order to run the code in the "code" folder, you may need to run "make" in the folder to build the programs. If this fails with an error about "TFile.h" or something like that, that means you're missing ROOT, so install ROOT on your computer and source the ROOT install's `source $(ROOTDIR)/bin/thisroot.sh` file.
- If it complains about some kind of "patch", do `dnf install patch`.
- If there's other problems installing ROOT or making the code directory, try installing [ROOT's required dependencies](https://root.cern/install/dependencies/#fedora-scientific-linux-and-centos). CentOS8 is probably the closest to AlmaLinux so you can follow those ones. It's a good group of programs that are required by many other things. For example, g++ is not installed by default on AlmaLinux, and that'll be needed to make things. There will be a couple things that AlmaLinux can't find, try doing `dnf install ... --skip-broken` ([skip-broken ref](https://dnf.readthedocs.io/en/latest/command_ref.html#skip-broken-option-label)) and it'll skip the ones it can't find. 

The original state of this repository as it was left by Minh on the UEM computer before the recomiling and reformatting by Ryan can be found in the [original-minh branch](https://github.com/prebys/mu2e_UEM_firmware/tree/original-minh). 

- Follow Minh's document: doc db: 40514. TODO: Some changes are needed here, to be added later.
- There are several firmware in the specified directory but one should be used is: top_fmc228_pcie_newAlgPeak_v7.bit
Mathew (Purdue) says this is designed more towards a "peak-finding tool" unlike that of an oscilloscope for waveform dumping purposes. The setup scripts required for UDP-based data acquisition to be followed. The output data format is described in the note (40514).
- The read binary code reads the output and produces a ROOT tree with peak finding data. It was written in ROOT5 and have been modified to ROOT6 in this commit. TODO: Change in required variables, and arrays to be done later.
- make clean and make in the directory: FMC228_v4
- Inside FMC228_v4/convertFMC228: ./read_binary_FMC228_longpeakfinding_v6 <path to input root file> <path to output> <no. of events>
- To read this tree and plot several things : ShowProf_rawevent1.C inside macros.
