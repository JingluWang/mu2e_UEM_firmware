################################################################################
# AculData input with some variables
################################################################################

DATALIBS := -lHist #-lCore #-lCint -lRIO -lTree -lNet -lThread -lMatrix -lMathCore -lGpad -lGraf -lSpectrum #-lTELoss

# Add inputs and outputs from these tool invocations to the build variables 
DATA_HEADERS += \
$(DATA)/RawEvent.h \
$(DATA)/AEvent.h \
$(DATA)/CoinEvent.h \
$(DATA)/CoinEventFitFunction.h \
$(DATA)/InTimeOutTimeEvent.h \
$(DATA)/CountEvent.h \
$(DATA)/linkdef.h


DATACPP_SRCS += \
$(DATA)/RawEvent.cpp \
$(DATA)/AEvent.cpp \
$(DATA)/CoinEvent.cpp \
$(DATA)/CoinEventFitFunction.cpp \
$(DATA)/InTimeOutTimeEvent.cpp \
$(DATA)/CountEvent.cpp \
$(DATA)/DataCint.cpp

DATAOBJS += \
$(DATA)/RawEvent.o \
$(DATA)/AEvent.o \
$(DATA)/CoinEvent.o \
$(DATA)/CoinEventFitFunction.o \
$(DATA)/InTimeOutTimeEvent.o \
$(DATA)/CountEvent.o \
$(DATA)/DataCint.o

DATACPP_DEPS += \
$(DATA)/RawEvent.d \
$(DATA)/AEvent.d \
$(DATA)/CoinEvent.d \
$(DATA)/CoinEventFitFunction.d \
$(DATA)/InTimeOutTimeEvent.d \
$(DATA)/CountEvent.d \
$(DATA)/DataCint.d
