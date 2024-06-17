// Do NOT change. Changes will be lost next time file is generated

#define R__DICTIONARY_FILENAME dIhomedIkujiwadodIWorkDirdIFileTransferdImu2euemdIFMC228_v4dIdataClassesdIDataCint
#define R__NO_DEPRECATION

/*******************************************************************/
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#define G__DICTIONARY
#include "RConfig.h"
#include "TClass.h"
#include "TDictAttributeMap.h"
#include "TInterpreter.h"
#include "TROOT.h"
#include "TBuffer.h"
#include "TMemberInspector.h"
#include "TInterpreter.h"
#include "TVirtualMutex.h"
#include "TError.h"

#ifndef G__ROOT
#define G__ROOT
#endif

#include "RtypesImp.h"
#include "TIsAProxy.h"
#include "TFileMergeInfo.h"
#include <algorithm>
#include "TCollectionProxyInfo.h"
/*******************************************************************/

#include "TDataMember.h"

// Header files passed as explicit arguments
#include "/home/kujiwado/WorkDir/FileTransfer/mu2euem/FMC228_v4/dataClasses/RawEvent.h"
#include "/home/kujiwado/WorkDir/FileTransfer/mu2euem/FMC228_v4/dataClasses/AEvent.h"
#include "/home/kujiwado/WorkDir/FileTransfer/mu2euem/FMC228_v4/dataClasses/CoinEvent.h"
#include "/home/kujiwado/WorkDir/FileTransfer/mu2euem/FMC228_v4/dataClasses/CoinEventFitFunction.h"
#include "/home/kujiwado/WorkDir/FileTransfer/mu2euem/FMC228_v4/dataClasses/InTimeOutTimeEvent.h"
#include "/home/kujiwado/WorkDir/FileTransfer/mu2euem/FMC228_v4/dataClasses/CountEvent.h"

// Header files passed via #pragma extra_include

// The generated code does not explicitly qualify STL entities
namespace std {} using namespace std;

namespace ROOT {
   static void *new_RawEvent(void *p = 0);
   static void *newArray_RawEvent(Long_t size, void *p);
   static void delete_RawEvent(void *p);
   static void deleteArray_RawEvent(void *p);
   static void destruct_RawEvent(void *p);
   static void streamer_RawEvent(TBuffer &buf, void *obj);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::RawEvent*)
   {
      ::RawEvent *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::RawEvent >(0);
      static ::ROOT::TGenericClassInfo 
         instance("RawEvent", ::RawEvent::Class_Version(), "dataClasses/RawEvent.h", 26,
                  typeid(::RawEvent), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::RawEvent::Dictionary, isa_proxy, 16,
                  sizeof(::RawEvent) );
      instance.SetNew(&new_RawEvent);
      instance.SetNewArray(&newArray_RawEvent);
      instance.SetDelete(&delete_RawEvent);
      instance.SetDeleteArray(&deleteArray_RawEvent);
      instance.SetDestructor(&destruct_RawEvent);
      instance.SetStreamerFunc(&streamer_RawEvent);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::RawEvent*)
   {
      return GenerateInitInstanceLocal((::RawEvent*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::RawEvent*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_AEvent(void *p = 0);
   static void *newArray_AEvent(Long_t size, void *p);
   static void delete_AEvent(void *p);
   static void deleteArray_AEvent(void *p);
   static void destruct_AEvent(void *p);
   static void streamer_AEvent(TBuffer &buf, void *obj);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::AEvent*)
   {
      ::AEvent *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::AEvent >(0);
      static ::ROOT::TGenericClassInfo 
         instance("AEvent", ::AEvent::Class_Version(), "dataClasses/AEvent.h", 31,
                  typeid(::AEvent), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::AEvent::Dictionary, isa_proxy, 16,
                  sizeof(::AEvent) );
      instance.SetNew(&new_AEvent);
      instance.SetNewArray(&newArray_AEvent);
      instance.SetDelete(&delete_AEvent);
      instance.SetDeleteArray(&deleteArray_AEvent);
      instance.SetDestructor(&destruct_AEvent);
      instance.SetStreamerFunc(&streamer_AEvent);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::AEvent*)
   {
      return GenerateInitInstanceLocal((::AEvent*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::AEvent*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_CoinEvent(void *p = 0);
   static void *newArray_CoinEvent(Long_t size, void *p);
   static void delete_CoinEvent(void *p);
   static void deleteArray_CoinEvent(void *p);
   static void destruct_CoinEvent(void *p);
   static void streamer_CoinEvent(TBuffer &buf, void *obj);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::CoinEvent*)
   {
      ::CoinEvent *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::CoinEvent >(0);
      static ::ROOT::TGenericClassInfo 
         instance("CoinEvent", ::CoinEvent::Class_Version(), "dataClasses/CoinEvent.h", 28,
                  typeid(::CoinEvent), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::CoinEvent::Dictionary, isa_proxy, 16,
                  sizeof(::CoinEvent) );
      instance.SetNew(&new_CoinEvent);
      instance.SetNewArray(&newArray_CoinEvent);
      instance.SetDelete(&delete_CoinEvent);
      instance.SetDeleteArray(&deleteArray_CoinEvent);
      instance.SetDestructor(&destruct_CoinEvent);
      instance.SetStreamerFunc(&streamer_CoinEvent);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::CoinEvent*)
   {
      return GenerateInitInstanceLocal((::CoinEvent*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::CoinEvent*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_CoinEventFitFunction(void *p = 0);
   static void *newArray_CoinEventFitFunction(Long_t size, void *p);
   static void delete_CoinEventFitFunction(void *p);
   static void deleteArray_CoinEventFitFunction(void *p);
   static void destruct_CoinEventFitFunction(void *p);
   static void streamer_CoinEventFitFunction(TBuffer &buf, void *obj);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::CoinEventFitFunction*)
   {
      ::CoinEventFitFunction *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::CoinEventFitFunction >(0);
      static ::ROOT::TGenericClassInfo 
         instance("CoinEventFitFunction", ::CoinEventFitFunction::Class_Version(), "dataClasses/CoinEventFitFunction.h", 28,
                  typeid(::CoinEventFitFunction), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::CoinEventFitFunction::Dictionary, isa_proxy, 16,
                  sizeof(::CoinEventFitFunction) );
      instance.SetNew(&new_CoinEventFitFunction);
      instance.SetNewArray(&newArray_CoinEventFitFunction);
      instance.SetDelete(&delete_CoinEventFitFunction);
      instance.SetDeleteArray(&deleteArray_CoinEventFitFunction);
      instance.SetDestructor(&destruct_CoinEventFitFunction);
      instance.SetStreamerFunc(&streamer_CoinEventFitFunction);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::CoinEventFitFunction*)
   {
      return GenerateInitInstanceLocal((::CoinEventFitFunction*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::CoinEventFitFunction*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_InTimeOutTimeEvent(void *p = 0);
   static void *newArray_InTimeOutTimeEvent(Long_t size, void *p);
   static void delete_InTimeOutTimeEvent(void *p);
   static void deleteArray_InTimeOutTimeEvent(void *p);
   static void destruct_InTimeOutTimeEvent(void *p);
   static void streamer_InTimeOutTimeEvent(TBuffer &buf, void *obj);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::InTimeOutTimeEvent*)
   {
      ::InTimeOutTimeEvent *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::InTimeOutTimeEvent >(0);
      static ::ROOT::TGenericClassInfo 
         instance("InTimeOutTimeEvent", ::InTimeOutTimeEvent::Class_Version(), "dataClasses/InTimeOutTimeEvent.h", 29,
                  typeid(::InTimeOutTimeEvent), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::InTimeOutTimeEvent::Dictionary, isa_proxy, 16,
                  sizeof(::InTimeOutTimeEvent) );
      instance.SetNew(&new_InTimeOutTimeEvent);
      instance.SetNewArray(&newArray_InTimeOutTimeEvent);
      instance.SetDelete(&delete_InTimeOutTimeEvent);
      instance.SetDeleteArray(&deleteArray_InTimeOutTimeEvent);
      instance.SetDestructor(&destruct_InTimeOutTimeEvent);
      instance.SetStreamerFunc(&streamer_InTimeOutTimeEvent);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::InTimeOutTimeEvent*)
   {
      return GenerateInitInstanceLocal((::InTimeOutTimeEvent*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::InTimeOutTimeEvent*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_CountEvent(void *p = 0);
   static void *newArray_CountEvent(Long_t size, void *p);
   static void delete_CountEvent(void *p);
   static void deleteArray_CountEvent(void *p);
   static void destruct_CountEvent(void *p);
   static void streamer_CountEvent(TBuffer &buf, void *obj);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::CountEvent*)
   {
      ::CountEvent *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::CountEvent >(0);
      static ::ROOT::TGenericClassInfo 
         instance("CountEvent", ::CountEvent::Class_Version(), "dataClasses/CountEvent.h", 28,
                  typeid(::CountEvent), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::CountEvent::Dictionary, isa_proxy, 16,
                  sizeof(::CountEvent) );
      instance.SetNew(&new_CountEvent);
      instance.SetNewArray(&newArray_CountEvent);
      instance.SetDelete(&delete_CountEvent);
      instance.SetDeleteArray(&deleteArray_CountEvent);
      instance.SetDestructor(&destruct_CountEvent);
      instance.SetStreamerFunc(&streamer_CountEvent);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::CountEvent*)
   {
      return GenerateInitInstanceLocal((::CountEvent*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::CountEvent*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

//______________________________________________________________________________
atomic_TClass_ptr RawEvent::fgIsA(0);  // static to hold class pointer

//______________________________________________________________________________
const char *RawEvent::Class_Name()
{
   return "RawEvent";
}

//______________________________________________________________________________
const char *RawEvent::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::RawEvent*)0x0)->GetImplFileName();
}

//______________________________________________________________________________
int RawEvent::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::RawEvent*)0x0)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *RawEvent::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::RawEvent*)0x0)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *RawEvent::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::RawEvent*)0x0)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr AEvent::fgIsA(0);  // static to hold class pointer

//______________________________________________________________________________
const char *AEvent::Class_Name()
{
   return "AEvent";
}

//______________________________________________________________________________
const char *AEvent::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::AEvent*)0x0)->GetImplFileName();
}

//______________________________________________________________________________
int AEvent::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::AEvent*)0x0)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *AEvent::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::AEvent*)0x0)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *AEvent::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::AEvent*)0x0)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr CoinEvent::fgIsA(0);  // static to hold class pointer

//______________________________________________________________________________
const char *CoinEvent::Class_Name()
{
   return "CoinEvent";
}

//______________________________________________________________________________
const char *CoinEvent::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::CoinEvent*)0x0)->GetImplFileName();
}

//______________________________________________________________________________
int CoinEvent::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::CoinEvent*)0x0)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *CoinEvent::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::CoinEvent*)0x0)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *CoinEvent::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::CoinEvent*)0x0)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr CoinEventFitFunction::fgIsA(0);  // static to hold class pointer

//______________________________________________________________________________
const char *CoinEventFitFunction::Class_Name()
{
   return "CoinEventFitFunction";
}

//______________________________________________________________________________
const char *CoinEventFitFunction::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::CoinEventFitFunction*)0x0)->GetImplFileName();
}

//______________________________________________________________________________
int CoinEventFitFunction::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::CoinEventFitFunction*)0x0)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *CoinEventFitFunction::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::CoinEventFitFunction*)0x0)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *CoinEventFitFunction::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::CoinEventFitFunction*)0x0)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr InTimeOutTimeEvent::fgIsA(0);  // static to hold class pointer

//______________________________________________________________________________
const char *InTimeOutTimeEvent::Class_Name()
{
   return "InTimeOutTimeEvent";
}

//______________________________________________________________________________
const char *InTimeOutTimeEvent::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::InTimeOutTimeEvent*)0x0)->GetImplFileName();
}

//______________________________________________________________________________
int InTimeOutTimeEvent::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::InTimeOutTimeEvent*)0x0)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *InTimeOutTimeEvent::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::InTimeOutTimeEvent*)0x0)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *InTimeOutTimeEvent::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::InTimeOutTimeEvent*)0x0)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr CountEvent::fgIsA(0);  // static to hold class pointer

//______________________________________________________________________________
const char *CountEvent::Class_Name()
{
   return "CountEvent";
}

//______________________________________________________________________________
const char *CountEvent::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::CountEvent*)0x0)->GetImplFileName();
}

//______________________________________________________________________________
int CountEvent::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::CountEvent*)0x0)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *CountEvent::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::CountEvent*)0x0)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *CountEvent::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::CountEvent*)0x0)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
void RawEvent::Streamer(TBuffer &R__b)
{
   // Stream an object of class RawEvent.

   UInt_t R__s, R__c;
   if (R__b.IsReading()) {
      Version_t R__v = R__b.ReadVersion(&R__s, &R__c); if (R__v) { }
      fAmp.Streamer(R__b);
      fTime.Streamer(R__b);
      fPeakHigh.Streamer(R__b);
      fPeakHighTime.Streamer(R__b);
      fPeakSum0.Streamer(R__b);
      fPeakSum.Streamer(R__b);
      fPeakSum_tail.Streamer(R__b);
      fPeakSum0_peak.Streamer(R__b);
      fPeakSumTime0.Streamer(R__b);
      fPeakSumTime1.Streamer(R__b);
      fPeakSumTime2.Streamer(R__b);
      {
         vector<Double_t> &R__stl =  fvAmp;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvTime;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakHigh;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakHighTime;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum0;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum_tail;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum0_peak;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime0;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime1;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime2;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      R__b >> fGraphSignal;
      R__b.CheckByteCount(R__s, R__c, RawEvent::IsA());
   } else {
      R__c = R__b.WriteVersion(RawEvent::IsA(), kTRUE);
      fAmp.Streamer(R__b);
      fTime.Streamer(R__b);
      fPeakHigh.Streamer(R__b);
      fPeakHighTime.Streamer(R__b);
      fPeakSum0.Streamer(R__b);
      fPeakSum.Streamer(R__b);
      fPeakSum_tail.Streamer(R__b);
      fPeakSum0_peak.Streamer(R__b);
      fPeakSumTime0.Streamer(R__b);
      fPeakSumTime1.Streamer(R__b);
      fPeakSumTime2.Streamer(R__b);
      {
         vector<Double_t> &R__stl =  fvAmp;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvTime;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakHigh;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakHighTime;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum0;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum_tail;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum0_peak;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime0;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime1;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime2;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      R__b << fGraphSignal;
      R__b.SetByteCount(R__c, kTRUE);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_RawEvent(void *p) {
      return  p ? new(p) ::RawEvent : new ::RawEvent;
   }
   static void *newArray_RawEvent(Long_t nElements, void *p) {
      return p ? new(p) ::RawEvent[nElements] : new ::RawEvent[nElements];
   }
   // Wrapper around operator delete
   static void delete_RawEvent(void *p) {
      delete ((::RawEvent*)p);
   }
   static void deleteArray_RawEvent(void *p) {
      delete [] ((::RawEvent*)p);
   }
   static void destruct_RawEvent(void *p) {
      typedef ::RawEvent current_t;
      ((current_t*)p)->~current_t();
   }
   // Wrapper around a custom streamer member function.
   static void streamer_RawEvent(TBuffer &buf, void *obj) {
      ((::RawEvent*)obj)->::RawEvent::Streamer(buf);
   }
} // end of namespace ROOT for class ::RawEvent

//______________________________________________________________________________
void AEvent::Streamer(TBuffer &R__b)
{
   // Stream an object of class AEvent.

   UInt_t R__s, R__c;
   if (R__b.IsReading()) {
      Version_t R__v = R__b.ReadVersion(&R__s, &R__c); if (R__v) { }
      fAmpPos.Streamer(R__b);
      fTime.Streamer(R__b);
      R__b >> fAmpMax;
      R__b >> fTimeAmpMax;
      R__b >> fZeroLevel;
      R__b >> fEdgeXi;
      R__b >> fEdgeSlope;
      R__b >> fTime10;
      R__b >> fTime90;
      R__b >> fTimeMid;
      R__b >> fAmpMid;
      R__b >> fToT;
      fAmpCFD.Streamer(R__b);
      R__b >> fTimeCFD;
      R__b >> fChargeCFD;
      R__b >> fChargeLED;
      R__b >> fChargeTF;
      R__b >> fTimeThresh;
      R__b >> fTimeThreshBack;
      R__b >> fTimeLED;
      R__b >> fTimeFront;
      R__b >> fGraphSignal;
      R__b >> fGraphCFD;
      R__b.CheckByteCount(R__s, R__c, AEvent::IsA());
   } else {
      R__c = R__b.WriteVersion(AEvent::IsA(), kTRUE);
      fAmpPos.Streamer(R__b);
      fTime.Streamer(R__b);
      R__b << fAmpMax;
      R__b << fTimeAmpMax;
      R__b << fZeroLevel;
      R__b << fEdgeXi;
      R__b << fEdgeSlope;
      R__b << fTime10;
      R__b << fTime90;
      R__b << fTimeMid;
      R__b << fAmpMid;
      R__b << fToT;
      fAmpCFD.Streamer(R__b);
      R__b << fTimeCFD;
      R__b << fChargeCFD;
      R__b << fChargeLED;
      R__b << fChargeTF;
      R__b << fTimeThresh;
      R__b << fTimeThreshBack;
      R__b << fTimeLED;
      R__b << fTimeFront;
      R__b << fGraphSignal;
      R__b << fGraphCFD;
      R__b.SetByteCount(R__c, kTRUE);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_AEvent(void *p) {
      return  p ? new(p) ::AEvent : new ::AEvent;
   }
   static void *newArray_AEvent(Long_t nElements, void *p) {
      return p ? new(p) ::AEvent[nElements] : new ::AEvent[nElements];
   }
   // Wrapper around operator delete
   static void delete_AEvent(void *p) {
      delete ((::AEvent*)p);
   }
   static void deleteArray_AEvent(void *p) {
      delete [] ((::AEvent*)p);
   }
   static void destruct_AEvent(void *p) {
      typedef ::AEvent current_t;
      ((current_t*)p)->~current_t();
   }
   // Wrapper around a custom streamer member function.
   static void streamer_AEvent(TBuffer &buf, void *obj) {
      ((::AEvent*)obj)->::AEvent::Streamer(buf);
   }
} // end of namespace ROOT for class ::AEvent

//______________________________________________________________________________
void CoinEvent::Streamer(TBuffer &R__b)
{
   // Stream an object of class CoinEvent.

   UInt_t R__s, R__c;
   if (R__b.IsReading()) {
      Version_t R__v = R__b.ReadVersion(&R__s, &R__c); if (R__v) { }
      fAmp.Streamer(R__b);
      fTime.Streamer(R__b);
      fPeakHigh.Streamer(R__b);
      fPeakHighTime.Streamer(R__b);
      fPeakSum0.Streamer(R__b);
      fPeakSum_tail.Streamer(R__b);
      fPeakSum0_peak.Streamer(R__b);
      fPeakSum.Streamer(R__b);
      fPeakSumTime0.Streamer(R__b);
      fPeakSumTime1.Streamer(R__b);
      fPeakSumTime2.Streamer(R__b);
      {
         vector<Double_t> &R__stl =  fvAmp;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvTime;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakHigh;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakHighTime;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum0;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum_tail;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum0_peak;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime0;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime1;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime2;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      R__b >> fGraphSignal;
      R__b.CheckByteCount(R__s, R__c, CoinEvent::IsA());
   } else {
      R__c = R__b.WriteVersion(CoinEvent::IsA(), kTRUE);
      fAmp.Streamer(R__b);
      fTime.Streamer(R__b);
      fPeakHigh.Streamer(R__b);
      fPeakHighTime.Streamer(R__b);
      fPeakSum0.Streamer(R__b);
      fPeakSum_tail.Streamer(R__b);
      fPeakSum0_peak.Streamer(R__b);
      fPeakSum.Streamer(R__b);
      fPeakSumTime0.Streamer(R__b);
      fPeakSumTime1.Streamer(R__b);
      fPeakSumTime2.Streamer(R__b);
      {
         vector<Double_t> &R__stl =  fvAmp;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvTime;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakHigh;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakHighTime;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum0;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum_tail;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum0_peak;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime0;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime1;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime2;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      R__b << fGraphSignal;
      R__b.SetByteCount(R__c, kTRUE);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_CoinEvent(void *p) {
      return  p ? new(p) ::CoinEvent : new ::CoinEvent;
   }
   static void *newArray_CoinEvent(Long_t nElements, void *p) {
      return p ? new(p) ::CoinEvent[nElements] : new ::CoinEvent[nElements];
   }
   // Wrapper around operator delete
   static void delete_CoinEvent(void *p) {
      delete ((::CoinEvent*)p);
   }
   static void deleteArray_CoinEvent(void *p) {
      delete [] ((::CoinEvent*)p);
   }
   static void destruct_CoinEvent(void *p) {
      typedef ::CoinEvent current_t;
      ((current_t*)p)->~current_t();
   }
   // Wrapper around a custom streamer member function.
   static void streamer_CoinEvent(TBuffer &buf, void *obj) {
      ((::CoinEvent*)obj)->::CoinEvent::Streamer(buf);
   }
} // end of namespace ROOT for class ::CoinEvent

//______________________________________________________________________________
void CoinEventFitFunction::Streamer(TBuffer &R__b)
{
   // Stream an object of class CoinEventFitFunction.

   UInt_t R__s, R__c;
   if (R__b.IsReading()) {
      Version_t R__v = R__b.ReadVersion(&R__s, &R__c); if (R__v) { }
      fAmp.Streamer(R__b);
      fTime.Streamer(R__b);
      fPeakHigh.Streamer(R__b);
      fPeakHighTime.Streamer(R__b);
      fPeakSum0_peak.Streamer(R__b);
      fPeakSum0.Streamer(R__b);
      fPeakSum.Streamer(R__b);
      fPeakSumTime0.Streamer(R__b);
      fPeakSumTime1.Streamer(R__b);
      fPeakSumTime2.Streamer(R__b);
      {
         vector<Double_t> &R__stl =  fvAmp;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvTime;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakHigh;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakHighTime;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum0_peak;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum0;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime0;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime1;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime2;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      R__b >> fGraphSignal;
      R__b.CheckByteCount(R__s, R__c, CoinEventFitFunction::IsA());
   } else {
      R__c = R__b.WriteVersion(CoinEventFitFunction::IsA(), kTRUE);
      fAmp.Streamer(R__b);
      fTime.Streamer(R__b);
      fPeakHigh.Streamer(R__b);
      fPeakHighTime.Streamer(R__b);
      fPeakSum0_peak.Streamer(R__b);
      fPeakSum0.Streamer(R__b);
      fPeakSum.Streamer(R__b);
      fPeakSumTime0.Streamer(R__b);
      fPeakSumTime1.Streamer(R__b);
      fPeakSumTime2.Streamer(R__b);
      {
         vector<Double_t> &R__stl =  fvAmp;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvTime;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakHigh;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakHighTime;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum0_peak;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum0;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSum;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime0;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime1;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvPeakSumTime2;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      R__b << fGraphSignal;
      R__b.SetByteCount(R__c, kTRUE);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_CoinEventFitFunction(void *p) {
      return  p ? new(p) ::CoinEventFitFunction : new ::CoinEventFitFunction;
   }
   static void *newArray_CoinEventFitFunction(Long_t nElements, void *p) {
      return p ? new(p) ::CoinEventFitFunction[nElements] : new ::CoinEventFitFunction[nElements];
   }
   // Wrapper around operator delete
   static void delete_CoinEventFitFunction(void *p) {
      delete ((::CoinEventFitFunction*)p);
   }
   static void deleteArray_CoinEventFitFunction(void *p) {
      delete [] ((::CoinEventFitFunction*)p);
   }
   static void destruct_CoinEventFitFunction(void *p) {
      typedef ::CoinEventFitFunction current_t;
      ((current_t*)p)->~current_t();
   }
   // Wrapper around a custom streamer member function.
   static void streamer_CoinEventFitFunction(TBuffer &buf, void *obj) {
      ((::CoinEventFitFunction*)obj)->::CoinEventFitFunction::Streamer(buf);
   }
} // end of namespace ROOT for class ::CoinEventFitFunction

//______________________________________________________________________________
void InTimeOutTimeEvent::Streamer(TBuffer &R__b)
{
   // Stream an object of class InTimeOutTimeEvent.

   UInt_t R__s, R__c;
   if (R__b.IsReading()) {
      Version_t R__v = R__b.ReadVersion(&R__s, &R__c); if (R__v) { }
      fAmp.Streamer(R__b);
      fTime.Streamer(R__b);
      fPeakHigh.Streamer(R__b);
      fPeakHighTime.Streamer(R__b);
      fPeakSum0_peak.Streamer(R__b);
      fPeakSum0.Streamer(R__b);
      fPeakSum.Streamer(R__b);
      fPeakSumTime0.Streamer(R__b);
      fPeakSumTime1.Streamer(R__b);
      fPeakSumTime2.Streamer(R__b);
      {
         vector<Double_t> &R__stl =  fvInTimeAmp;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimeTime;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimePeakHigh;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimePeakHighTime;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimeBeginInTime;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimeBeginInTime_peaksum;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimePeakSum0_peak;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimePeakSum0;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimePeakSum;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimePeakSumTime0;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimePeakSumTime1;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimePeakSumTime2;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      R__b >> fGraphSignal;
      R__b.CheckByteCount(R__s, R__c, InTimeOutTimeEvent::IsA());
   } else {
      R__c = R__b.WriteVersion(InTimeOutTimeEvent::IsA(), kTRUE);
      fAmp.Streamer(R__b);
      fTime.Streamer(R__b);
      fPeakHigh.Streamer(R__b);
      fPeakHighTime.Streamer(R__b);
      fPeakSum0_peak.Streamer(R__b);
      fPeakSum0.Streamer(R__b);
      fPeakSum.Streamer(R__b);
      fPeakSumTime0.Streamer(R__b);
      fPeakSumTime1.Streamer(R__b);
      fPeakSumTime2.Streamer(R__b);
      {
         vector<Double_t> &R__stl =  fvInTimeAmp;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimeTime;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimePeakHigh;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimePeakHighTime;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimeBeginInTime;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimeBeginInTime_peaksum;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimePeakSum0_peak;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimePeakSum0;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimePeakSum;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimePeakSumTime0;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimePeakSumTime1;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvInTimePeakSumTime2;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      R__b << fGraphSignal;
      R__b.SetByteCount(R__c, kTRUE);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_InTimeOutTimeEvent(void *p) {
      return  p ? new(p) ::InTimeOutTimeEvent : new ::InTimeOutTimeEvent;
   }
   static void *newArray_InTimeOutTimeEvent(Long_t nElements, void *p) {
      return p ? new(p) ::InTimeOutTimeEvent[nElements] : new ::InTimeOutTimeEvent[nElements];
   }
   // Wrapper around operator delete
   static void delete_InTimeOutTimeEvent(void *p) {
      delete ((::InTimeOutTimeEvent*)p);
   }
   static void deleteArray_InTimeOutTimeEvent(void *p) {
      delete [] ((::InTimeOutTimeEvent*)p);
   }
   static void destruct_InTimeOutTimeEvent(void *p) {
      typedef ::InTimeOutTimeEvent current_t;
      ((current_t*)p)->~current_t();
   }
   // Wrapper around a custom streamer member function.
   static void streamer_InTimeOutTimeEvent(TBuffer &buf, void *obj) {
      ((::InTimeOutTimeEvent*)obj)->::InTimeOutTimeEvent::Streamer(buf);
   }
} // end of namespace ROOT for class ::InTimeOutTimeEvent

//______________________________________________________________________________
void CountEvent::Streamer(TBuffer &R__b)
{
   // Stream an object of class CountEvent.

   UInt_t R__s, R__c;
   if (R__b.IsReading()) {
      Version_t R__v = R__b.ReadVersion(&R__s, &R__c); if (R__v) { }
      fAmp.Streamer(R__b);
      fTime.Streamer(R__b);
      {
         vector<vector<Double_t> > &R__stl =  fvCount;
         R__stl.clear();
         TClass *R__tcl1 = TBuffer::GetClass(typeid(class std::vector<double, class std::allocator<double> >));
         if (R__tcl1==0) {
            Error("fvCount streamer","Missing the TClass object for class std::vector<double, class std::allocator<double> >!");
            return;
         }
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            vector<double> R__t;
            R__b.StreamObject(&R__t,R__tcl1);
            R__stl.push_back(R__t);
         }
      }
      {
         vector<vector<Double_t> > &R__stl =  fvCount_sum;
         R__stl.clear();
         TClass *R__tcl1 = TBuffer::GetClass(typeid(class std::vector<double, class std::allocator<double> >));
         if (R__tcl1==0) {
            Error("fvCount_sum streamer","Missing the TClass object for class std::vector<double, class std::allocator<double> >!");
            return;
         }
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            vector<double> R__t;
            R__b.StreamObject(&R__t,R__tcl1);
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvCount_Event_Batch1;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      {
         vector<Double_t> &R__stl =  fvCount_Event_Batch2;
         R__stl.clear();
         int R__i, R__n;
         R__b >> R__n;
         R__stl.reserve(R__n);
         for (R__i = 0; R__i < R__n; R__i++) {
            double R__t;
            R__b >> R__t;
            R__stl.push_back(R__t);
         }
      }
      R__b >> fGraphSignal;
      R__b.CheckByteCount(R__s, R__c, CountEvent::IsA());
   } else {
      R__c = R__b.WriteVersion(CountEvent::IsA(), kTRUE);
      fAmp.Streamer(R__b);
      fTime.Streamer(R__b);
      {
         vector<vector<Double_t> > &R__stl =  fvCount;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
         TClass *R__tcl1 = TBuffer::GetClass(typeid(class std::vector<double, class std::allocator<double> >));
         if (R__tcl1==0) {
            Error("fvCount streamer","Missing the TClass object for class std::vector<double, class std::allocator<double> >!");
            return;
         }
            vector<vector<Double_t> >::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b.StreamObject((vector<double>*)&(*R__k),R__tcl1);
            }
         }
      }
      {
         vector<vector<Double_t> > &R__stl =  fvCount_sum;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
         TClass *R__tcl1 = TBuffer::GetClass(typeid(class std::vector<double, class std::allocator<double> >));
         if (R__tcl1==0) {
            Error("fvCount_sum streamer","Missing the TClass object for class std::vector<double, class std::allocator<double> >!");
            return;
         }
            vector<vector<Double_t> >::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b.StreamObject((vector<double>*)&(*R__k),R__tcl1);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvCount_Event_Batch1;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      {
         vector<Double_t> &R__stl =  fvCount_Event_Batch2;
         int R__n=int(R__stl.size());
         R__b << R__n;
         if(R__n) {
            vector<Double_t>::iterator R__k;
            for (R__k = R__stl.begin(); R__k != R__stl.end(); ++R__k) {
            R__b << (*R__k);
            }
         }
      }
      R__b << fGraphSignal;
      R__b.SetByteCount(R__c, kTRUE);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_CountEvent(void *p) {
      return  p ? new(p) ::CountEvent : new ::CountEvent;
   }
   static void *newArray_CountEvent(Long_t nElements, void *p) {
      return p ? new(p) ::CountEvent[nElements] : new ::CountEvent[nElements];
   }
   // Wrapper around operator delete
   static void delete_CountEvent(void *p) {
      delete ((::CountEvent*)p);
   }
   static void deleteArray_CountEvent(void *p) {
      delete [] ((::CountEvent*)p);
   }
   static void destruct_CountEvent(void *p) {
      typedef ::CountEvent current_t;
      ((current_t*)p)->~current_t();
   }
   // Wrapper around a custom streamer member function.
   static void streamer_CountEvent(TBuffer &buf, void *obj) {
      ((::CountEvent*)obj)->::CountEvent::Streamer(buf);
   }
} // end of namespace ROOT for class ::CountEvent

namespace ROOT {
   static TClass *vectorlEvectorlEdoublegRsPgR_Dictionary();
   static void vectorlEvectorlEdoublegRsPgR_TClassManip(TClass*);
   static void *new_vectorlEvectorlEdoublegRsPgR(void *p = 0);
   static void *newArray_vectorlEvectorlEdoublegRsPgR(Long_t size, void *p);
   static void delete_vectorlEvectorlEdoublegRsPgR(void *p);
   static void deleteArray_vectorlEvectorlEdoublegRsPgR(void *p);
   static void destruct_vectorlEvectorlEdoublegRsPgR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const vector<vector<double> >*)
   {
      vector<vector<double> > *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(vector<vector<double> >));
      static ::ROOT::TGenericClassInfo 
         instance("vector<vector<double> >", -2, "vector", 386,
                  typeid(vector<vector<double> >), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &vectorlEvectorlEdoublegRsPgR_Dictionary, isa_proxy, 0,
                  sizeof(vector<vector<double> >) );
      instance.SetNew(&new_vectorlEvectorlEdoublegRsPgR);
      instance.SetNewArray(&newArray_vectorlEvectorlEdoublegRsPgR);
      instance.SetDelete(&delete_vectorlEvectorlEdoublegRsPgR);
      instance.SetDeleteArray(&deleteArray_vectorlEvectorlEdoublegRsPgR);
      instance.SetDestructor(&destruct_vectorlEvectorlEdoublegRsPgR);
      instance.AdoptCollectionProxyInfo(TCollectionProxyInfo::Generate(TCollectionProxyInfo::Pushback< vector<vector<double> > >()));

      ::ROOT::AddClassAlternate("vector<vector<double> >","std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >");
      return &instance;
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const vector<vector<double> >*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *vectorlEvectorlEdoublegRsPgR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const vector<vector<double> >*)0x0)->GetClass();
      vectorlEvectorlEdoublegRsPgR_TClassManip(theClass);
   return theClass;
   }

   static void vectorlEvectorlEdoublegRsPgR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_vectorlEvectorlEdoublegRsPgR(void *p) {
      return  p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) vector<vector<double> > : new vector<vector<double> >;
   }
   static void *newArray_vectorlEvectorlEdoublegRsPgR(Long_t nElements, void *p) {
      return p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) vector<vector<double> >[nElements] : new vector<vector<double> >[nElements];
   }
   // Wrapper around operator delete
   static void delete_vectorlEvectorlEdoublegRsPgR(void *p) {
      delete ((vector<vector<double> >*)p);
   }
   static void deleteArray_vectorlEvectorlEdoublegRsPgR(void *p) {
      delete [] ((vector<vector<double> >*)p);
   }
   static void destruct_vectorlEvectorlEdoublegRsPgR(void *p) {
      typedef vector<vector<double> > current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class vector<vector<double> >

namespace ROOT {
   static TClass *vectorlEdoublegR_Dictionary();
   static void vectorlEdoublegR_TClassManip(TClass*);
   static void *new_vectorlEdoublegR(void *p = 0);
   static void *newArray_vectorlEdoublegR(Long_t size, void *p);
   static void delete_vectorlEdoublegR(void *p);
   static void deleteArray_vectorlEdoublegR(void *p);
   static void destruct_vectorlEdoublegR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const vector<double>*)
   {
      vector<double> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(vector<double>));
      static ::ROOT::TGenericClassInfo 
         instance("vector<double>", -2, "vector", 386,
                  typeid(vector<double>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &vectorlEdoublegR_Dictionary, isa_proxy, 0,
                  sizeof(vector<double>) );
      instance.SetNew(&new_vectorlEdoublegR);
      instance.SetNewArray(&newArray_vectorlEdoublegR);
      instance.SetDelete(&delete_vectorlEdoublegR);
      instance.SetDeleteArray(&deleteArray_vectorlEdoublegR);
      instance.SetDestructor(&destruct_vectorlEdoublegR);
      instance.AdoptCollectionProxyInfo(TCollectionProxyInfo::Generate(TCollectionProxyInfo::Pushback< vector<double> >()));

      ::ROOT::AddClassAlternate("vector<double>","std::vector<double, std::allocator<double> >");
      return &instance;
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const vector<double>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *vectorlEdoublegR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const vector<double>*)0x0)->GetClass();
      vectorlEdoublegR_TClassManip(theClass);
   return theClass;
   }

   static void vectorlEdoublegR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_vectorlEdoublegR(void *p) {
      return  p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) vector<double> : new vector<double>;
   }
   static void *newArray_vectorlEdoublegR(Long_t nElements, void *p) {
      return p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) vector<double>[nElements] : new vector<double>[nElements];
   }
   // Wrapper around operator delete
   static void delete_vectorlEdoublegR(void *p) {
      delete ((vector<double>*)p);
   }
   static void deleteArray_vectorlEdoublegR(void *p) {
      delete [] ((vector<double>*)p);
   }
   static void destruct_vectorlEdoublegR(void *p) {
      typedef vector<double> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class vector<double>

namespace {
  void TriggerDictionaryInitialization_DataCint_Impl() {
    static const char* headers[] = {
"dataClasses/RawEvent.h",
"dataClasses/AEvent.h",
"dataClasses/CoinEvent.h",
"dataClasses/CoinEventFitFunction.h",
"dataClasses/InTimeOutTimeEvent.h",
"dataClasses/CountEvent.h",
0
    };
    static const char* includePaths[] = {
"/home/kujiwado/products/root-build/include/",
"/home/kujiwado/WorkDir/FileTransfer/mu2euem/FMC228_v4/",
0
    };
    static const char* fwdDeclCode = R"DICTFWDDCLS(
#line 1 "DataCint dictionary forward declarations' payload"
#pragma clang diagnostic ignored "-Wkeyword-compat"
#pragma clang diagnostic ignored "-Wignored-attributes"
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
extern int __Cling_AutoLoading_Map;
class __attribute__((annotate("$clingAutoload$dataClasses/RawEvent.h")))  RawEvent;
class __attribute__((annotate("$clingAutoload$dataClasses/AEvent.h")))  AEvent;
class __attribute__((annotate("$clingAutoload$dataClasses/CoinEvent.h")))  CoinEvent;
class __attribute__((annotate("$clingAutoload$dataClasses/CoinEventFitFunction.h")))  CoinEventFitFunction;
class __attribute__((annotate("$clingAutoload$dataClasses/InTimeOutTimeEvent.h")))  InTimeOutTimeEvent;
class __attribute__((annotate("$clingAutoload$dataClasses/CountEvent.h")))  CountEvent;
)DICTFWDDCLS";
    static const char* payloadCode = R"DICTPAYLOAD(
#line 1 "DataCint dictionary payload"


#define _BACKWARD_BACKWARD_WARNING_H
// Inline headers
#include "dataClasses/RawEvent.h"
#include "dataClasses/AEvent.h"
#include "dataClasses/CoinEvent.h"
#include "dataClasses/CoinEventFitFunction.h"
#include "dataClasses/InTimeOutTimeEvent.h"
#include "dataClasses/CountEvent.h"

#undef  _BACKWARD_BACKWARD_WARNING_H
)DICTPAYLOAD";
    static const char* classesHeaders[] = {
"AEvent", payloadCode, "@",
"CoinEvent", payloadCode, "@",
"CoinEventFitFunction", payloadCode, "@",
"CountEvent", payloadCode, "@",
"InTimeOutTimeEvent", payloadCode, "@",
"RawEvent", payloadCode, "@",
nullptr
};
    static bool isInitialized = false;
    if (!isInitialized) {
      TROOT::RegisterModule("DataCint",
        headers, includePaths, payloadCode, fwdDeclCode,
        TriggerDictionaryInitialization_DataCint_Impl, {}, classesHeaders, /*hasCxxModule*/false);
      isInitialized = true;
    }
  }
  static struct DictInit {
    DictInit() {
      TriggerDictionaryInitialization_DataCint_Impl();
    }
  } __TheDictionaryInitializer;
}
void TriggerDictionaryInitialization_DataCint() {
  TriggerDictionaryInitialization_DataCint_Impl();
}
