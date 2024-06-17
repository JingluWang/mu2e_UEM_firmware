################################################################################
# Makefile building all dynamic libraries:
#
#
#	OBJS - files type *.o (subdir.mk)
#	LIBS - list of the loaded libraries (objects.mk)
#	RM - command "rm -rf"
#	CPP_DEPS - files type *.d (subdir.mk)
#	.PHONY - 
#	.SECONDARY - 
#	
# Vratislav Chudoba
################################################################################

RM := rm -rf

CC := g++

#global paths
ROOTINCS = $(shell root-config --incdir)
ROOTLIBS = $(shell root-config --libdir)
ROOTCFLAGS = $(shell root-config --cflags)
PWD = $(shell pwd)

DATA = $(PWD)/dataClasses
CONVERTFMC228 = $(PWD)/convertFMC228

-include $(DATA)/Data.mk

all: libData.so \
	read_binary_FMC228_longpeakfinding_v6 \

#ROOT html documentation, it will be done as a program which will be alsa compiled by this makefile, program will be as a last condition after all of the libraries
#htmldoc: libAculData.so
#	-$(RM) htmldoc
#	root -l -q html.cxx	

clean:
	-$(RM) $(DATAOBJS) $(DATACPP_DEPS) 
	-$(RM) $(DATA)/DataCint.* libData.so
	-@echo ' '
	-$(RM) htmldoc
	-@echo ' '
	-$(RM) $(CONVERTFMC228)/read_binary_FMC228_peakstream_longpeakfinding_v6
	-@echo ' '

# Those *Cint* files below need special treating:
$(DATA)/DataCint.cpp:
	-@echo 'Pre-building DataCint.cpp and DataCint.h files'
	-rootcint -f $(DATA)/DataCint.cpp -c -p $(DATA_HEADERS)
	-@echo ' '

#*.so files
libData.so: $(DATAOBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GCC C++ Linker'
	$(CC) -L $(ROOTLIBS) -shared -o"libData.so" $(DATAOBJS) $(DATALIBS)
	@echo 'Finished building target: $@'
	@echo ' '

read_binary_FMC228_longpeakfinding_v6: $(CONVERTFMC228)/read_binary_FMC228_longpeakfinding_v6.cpp libData.so
	@echo 'Building target: $@'
	@echo 'Invoking: GCC C++ Linker'
#	$(CC) -L $(ROOTLIBS) -shared -o"libData.so" $(DATAOBJS) $(DATALIBS)
	$(CC) -o $(CONVERTFMC228)/read_binary_FMC228_longpeakfinding_v6 $(CONVERTFMC228)/read_binary_FMC228_longpeakfinding_v6.cpp -lm `root-config --cflags --libs` -L $(PWD) -lData -Wl,-rpath,$(PWD)
	@echo 'Finished building target long peakfinding v6: $@'
	@echo ' '

.PHONY: all clean

# Each subdirectory must supply rules for building sources it contributes
%.o: %.cpp
	@echo 'Building file: $@'
	@echo 'Invoking: $(CC) Compiler'
	$(CC) -I$(ROOTINCS) -O0 -g3 -Wall -c -fmessage-length=0 -fPIC $(ROOTCFLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
#	$(CC) -I$(ROOTINCS) -O2 -Wall -mmmx -msse -msse2 -msse3 -mfpmath=sse,387 -march=nocona -mtune=nocona -c -fmessage-length=0 -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $@'
	@echo ' '
