#ifndef __FEI4_HH__
#define __FEI4_HH__

#include <iostream>
#include <fstream>
#include <stdexcept>
#include <sstream>
#include <iomanip>
#include <string>
#include <vector>
#include <map>
#include <arpa/inet.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>

#include "stib.hh"

// #define FEI4_CMD(chan) (0xc8001004+0x100*(chan))
// #define FEI4_FRONT_END (0xc80000a0)

namespace fei4 {

  void ClearFrontEndBits(unsigned int *);
  void SetFrontEndBits(unsigned int *);

  void SetFrontEndBit(int,int,unsigned int *);
  void ClearFrontEndBit(int,int,unsigned int *);

  inline unsigned int FEI4_CMD(int i) { return 0xc8001004+0x100*(i); }
  inline unsigned int FEI4_CSR(int i) { return 0xc8001000+0x100*(i); }
  inline unsigned int FEI4_MATCH(int i,int j) { return 0xc80010c0+0x100*(i)+4*(j); }
  const unsigned int FEI4_FRONT_END = 0xc80000a0;
  const unsigned int COLPR_DC = 0x000;
  const unsigned int COLPR_DC4 = 0x200;
  const unsigned int COLPR_DC8 = 0x100;
  const unsigned int COLPR_ALL = 0x300;

  class GlobalRegisterField {
    std::string _name;
    int _reg;
    int _msb;
    int _lsb;
    unsigned int _mask;
    int _width;
    unsigned int *_gr;
  public:
    GlobalRegisterField() : _name("undefined"), _reg(-1), _msb(-1), _lsb(-1), _mask(0), _width(0), _gr(NULL) { }
    GlobalRegisterField(unsigned int *gr,int r,std::string s,int lsb,int msb) :
      _gr(gr), _name(s), _reg(r), _msb(msb), _lsb(lsb) {
      if ( _msb > _lsb ) {
        _width = _msb-_lsb+1;
        _mask = ((1<<_width)-1)<<_lsb;
      }
      else {
        _width = _lsb-_msb+1;
        _mask = ((1<<_width)-1)<<_msb;
      }
    }
    unsigned short Value() const {
      unsigned short val;
      if ( _msb >= _lsb ) {
        val = (_gr[_reg]&_mask)>>_lsb;
      }
      else {
        val = 0;
        for ( int i=0; i<_width; i++ ) {
          if ( (_gr[_reg]&(1<<_msb+i)) ) val |= (1<<_width-i-1);
        }
      }
      return val;
    }
    void Set(unsigned short val) {
      unsigned short gr = _gr[_reg]&0xffff;
      for ( int i=0; i<_width; i++ ) {
        if ( _lsb < _msb ) {
          if ( (val&(1<<i)) ) {
            _gr[_reg] |= (1<<_lsb+i);
          }
          else {
            _gr[_reg] &= ~(1<<_lsb+i);
          }
        }
        else {
          if ( (val&(1<<i)) ) {
            _gr[_reg] |= (1<<_lsb-i);
          }
          else {
            _gr[_reg] &= ~(1<<_lsb-i);
          }
        }
      }
      _gr[_reg] |= ((_gr[_reg]&0xffff)^gr)<<16;   // Mark modified bits
    }
    int Register() const {
      return _reg;
    }
    unsigned short Raw() const {
      return _gr[_reg]&0xffff;
    }
    unsigned short Modified() const {
      return _gr[_reg]>>16;
    }
    const std::string &Name() const {
      return _name;
    }
    unsigned short operator =(unsigned short s) {
      Set(s);
      return Value();
    }
    friend std::ostream& operator <<(std::ostream & os,const GlobalRegisterField &f) {
       os << f.Value();
    }
    void Print() const {
      std::cout << "GR[" << Register() << "] = 0x" << std::setw(4) << std::setfill('0') << std::hex << Raw() << ", " << Name() << " = " << std::dec << Value() << std::endl;
    }
  };

  class GlobalRegisters {
    unsigned int _gr[32];
    std::map<std::string,GlobalRegisterField> _map;
    std::vector<GlobalRegisterField> _fields;
  public:
    unsigned int Get(int i) const {
      return _gr[i]&0xffff;
    }
    GlobalRegisters() {
      for ( int i=0; i<32; i++ ) {
        _gr[i] = 0xffff0000;
      }
//
//  Default values...
//
      _gr[0] |= 0x0000;
      _gr[1] |= 0x0000;
      _gr[2] |= 0x1800;
      _gr[3] |= 0x0000;
      _gr[4] |= 0x0000;
      _gr[5] |= 0xd455;
      _gr[6] |= 0x00d4;
      _gr[7] |= 0xff58;
      _gr[8] |= 0xf258;
      _gr[9] |= 0x00aa;
      _gr[10] |= 0x4c4c;
      _gr[11] |= 0x56d4;
      _gr[12] |= 0x2600;
      _gr[13] |= 0x0000;
      _gr[14] |= 0xd526;
      _gr[15] |= 0x1a96;
      _gr[16] |= 0x0038;
      _gr[17] |= 0x002d;
      _gr[18] |= 0x00ff;
      _gr[19] |= 0x0600;
      _gr[20] |= 0xffff;
      _gr[21] |= 0x0400;
      _gr[22] |= 0x0000;
      _gr[23] |= 0x0000;
      _gr[24] |= 0x0000;
      _gr[25] |= 0xaf00;
      _gr[26] |= 0x8012;
      _gr[27] |= 0x8000;
      _gr[28] |= 0x8006;
      _gr[29] |= 0x0557;
      _gr[30] |= 0x0000;
      _gr[31] |= 0xf100;
     
      _fields.push_back(GlobalRegisterField(_gr,0,"spare",0,15));
      _fields.push_back(GlobalRegisterField(_gr,1,"SME",8,8));
      _fields.push_back(GlobalRegisterField(_gr,2,"Trig_Count",12,15));
      _fields.push_back(GlobalRegisterField(_gr,2,"CAE",11,11));
      _fields.push_back(GlobalRegisterField(_gr,3,"ErrorMask_0",0,15));
      _fields.push_back(GlobalRegisterField(_gr,4,"ErrorMask_1",0,15));
      _fields.push_back(GlobalRegisterField(_gr,5,"PrmpVbp_R",15,8));
      _fields.push_back(GlobalRegisterField(_gr,5,"BufVgOpAmp",7,0));
      _fields.push_back(GlobalRegisterField(_gr,6,"PrmpVbp",7,0));
      _fields.push_back(GlobalRegisterField(_gr,7,"TDACVbp",15,8));
      _fields.push_back(GlobalRegisterField(_gr,7,"DisVbn",7,0));
      _fields.push_back(GlobalRegisterField(_gr,8,"Amp2Vbn",15,8));
      _fields.push_back(GlobalRegisterField(_gr,8,"Amp2VbpFol",7,0));
      _fields.push_back(GlobalRegisterField(_gr,9,"Amp2Vbp",7,0));
      _fields.push_back(GlobalRegisterField(_gr,10,"FDACVbn",15,8));
      _fields.push_back(GlobalRegisterField(_gr,10,"Amp2Vbpff",7,0));
      _fields.push_back(GlobalRegisterField(_gr,11,"PrmpVbnFol",15,8));
      _fields.push_back(GlobalRegisterField(_gr,11,"PrmpVbp_L",7,0));
      _fields.push_back(GlobalRegisterField(_gr,12,"PrmpVbpf",15,8));
      _fields.push_back(GlobalRegisterField(_gr,12,"PrmpVbnLCC",7,0));
      _fields.push_back(GlobalRegisterField(_gr,13,"S1",15,15));
      _fields.push_back(GlobalRegisterField(_gr,13,"S0",14,14));
      _fields.push_back(GlobalRegisterField(_gr,13,"PixelLatch",13,1));
      _fields.push_back(GlobalRegisterField(_gr,14,"LVDSDrvIref",15,8));
      _fields.push_back(GlobalRegisterField(_gr,14,"GADCCompBias",7,0));
      _fields.push_back(GlobalRegisterField(_gr,15,"PllIbias",15,8));
      _fields.push_back(GlobalRegisterField(_gr,15,"LVDSDrvVos",7,0));
      _fields.push_back(GlobalRegisterField(_gr,16,"TempSensIBias",15,8));
      _fields.push_back(GlobalRegisterField(_gr,16,"PllIcp",7,0));
      _fields.push_back(GlobalRegisterField(_gr,17,"PlsrIDACRamp",7,0));
      _fields.push_back(GlobalRegisterField(_gr,18,"VrefDigTune",15,8));
      _fields.push_back(GlobalRegisterField(_gr,18,"PlsrVgOpAmp",7,0));
      _fields.push_back(GlobalRegisterField(_gr,19,"PlsrDACbias",15,8));
      _fields.push_back(GlobalRegisterField(_gr,19,"VrefAnTune",7,0));
      _fields.push_back(GlobalRegisterField(_gr,20,"Vthin_Coarse",15,8));
      _fields.push_back(GlobalRegisterField(_gr,20,"Vthin_Fine",7,0));
      _fields.push_back(GlobalRegisterField(_gr,21,"HLD",12,12));
      _fields.push_back(GlobalRegisterField(_gr,21,"DJO",11,11));
      _fields.push_back(GlobalRegisterField(_gr,21,"DHS",10,10));
      _fields.push_back(GlobalRegisterField(_gr,21,"PlsrDAC",9,0));
      _fields.push_back(GlobalRegisterField(_gr,22,"CP0",9,9));
      _fields.push_back(GlobalRegisterField(_gr,22,"CP1",8,8));
      _fields.push_back(GlobalRegisterField(_gr,22,"Colpr_Addr",7,2));
      _fields.push_back(GlobalRegisterField(_gr,23,"DisableColCnfg0",0,15));
      _fields.push_back(GlobalRegisterField(_gr,24,"DisableColCnfg1",0,15));
      _fields.push_back(GlobalRegisterField(_gr,25,"Trig_Lat",8,15));
      _fields.push_back(GlobalRegisterField(_gr,25,"DisableColCnfg2",0,7));
      _fields.push_back(GlobalRegisterField(_gr,26,"CMDcnt12",3,15));
      _fields.push_back(GlobalRegisterField(_gr,26,"STC",2,2));
      _fields.push_back(GlobalRegisterField(_gr,26,"HD1",1,1));
      _fields.push_back(GlobalRegisterField(_gr,26,"HD0",0,0));
      _fields.push_back(GlobalRegisterField(_gr,27,"PLL",15,15));
      _fields.push_back(GlobalRegisterField(_gr,27,"EFS",14,14));
      _fields.push_back(GlobalRegisterField(_gr,27,"STP",13,13));
      _fields.push_back(GlobalRegisterField(_gr,27,"RER",12,12));
      _fields.push_back(GlobalRegisterField(_gr,27,"ADC",10,10));
      _fields.push_back(GlobalRegisterField(_gr,27,"SRR",9,9));
      _fields.push_back(GlobalRegisterField(_gr,27,"HOR",5,5));
      _fields.push_back(GlobalRegisterField(_gr,27,"CAL",4,4));
      _fields.push_back(GlobalRegisterField(_gr,27,"SRC",3,3));
      _fields.push_back(GlobalRegisterField(_gr,27,"LEN",2,2));
      _fields.push_back(GlobalRegisterField(_gr,27,"SRK",1,1));
      _fields.push_back(GlobalRegisterField(_gr,27,"M13",0,0));
      _fields.push_back(GlobalRegisterField(_gr,28,"LV0",15,15));
      _fields.push_back(GlobalRegisterField(_gr,28,"40M",9,9));
      _fields.push_back(GlobalRegisterField(_gr,28,"80M",8,8));
      _fields.push_back(GlobalRegisterField(_gr,28,"c10",7,7));
      _fields.push_back(GlobalRegisterField(_gr,28,"c11",6,6));
      _fields.push_back(GlobalRegisterField(_gr,28,"c12",5,5));
      _fields.push_back(GlobalRegisterField(_gr,28,"c00",4,4));
      _fields.push_back(GlobalRegisterField(_gr,28,"c01",3,3));
      _fields.push_back(GlobalRegisterField(_gr,28,"c02",2,2));
      _fields.push_back(GlobalRegisterField(_gr,28,"160",1,1));
      _fields.push_back(GlobalRegisterField(_gr,28,"320",0,0));
      _fields.push_back(GlobalRegisterField(_gr,29,"N8b",13,13));
      _fields.push_back(GlobalRegisterField(_gr,29,"c2o",12,12));
      _fields.push_back(GlobalRegisterField(_gr,29,"EmptyRecordCnfg",11,4));
      _fields.push_back(GlobalRegisterField(_gr,29,"LVE",2,2));
      _fields.push_back(GlobalRegisterField(_gr,29,"LV3",1,1));
      _fields.push_back(GlobalRegisterField(_gr,29,"LV1",0,0));
      _fields.push_back(GlobalRegisterField(_gr,30,"TM0",15,15));
      _fields.push_back(GlobalRegisterField(_gr,30,"TM1",14,14));
      _fields.push_back(GlobalRegisterField(_gr,30,"TMD",13,13));
      _fields.push_back(GlobalRegisterField(_gr,30,"ILR",12,12));
      _fields.push_back(GlobalRegisterField(_gr,31,"PlsrRiseUpTau",13,15));
      _fields.push_back(GlobalRegisterField(_gr,31,"PPW",12,12));
      _fields.push_back(GlobalRegisterField(_gr,31,"PlsrPwr",12,12));
      _fields.push_back(GlobalRegisterField(_gr,31,"PlsrDelay",11,6));
      _fields.push_back(GlobalRegisterField(_gr,31,"XDC",5,5));
      _fields.push_back(GlobalRegisterField(_gr,31,"ExtDigCalSW",5,5));
      _fields.push_back(GlobalRegisterField(_gr,31,"XAC",4,4));
      _fields.push_back(GlobalRegisterField(_gr,31,"ExtAnaCalSW",4,4));
      _fields.push_back(GlobalRegisterField(_gr,31,"GADCSel",0,2));
      for ( std::vector<GlobalRegisterField>::const_iterator i=_fields.begin();
            i != _fields.end(); i++ ) {
        _map[i->Name()] = *i;
      }
    }

    GlobalRegisterField &Field(std::string s) {
      std::map<std::string,GlobalRegisterField>::iterator i=_map.find(s);
      if ( i == _map.end() ) {
        std::ostringstream os;
        os<<__func__<<": no field named '"<<s <<"'."<<std::endl;
        throw std::runtime_error(os.str().c_str());
      }
      else {
        return i->second;
      }
    }
    void Unmark(int r) {
      _gr[r] &= 0xffff;
    }
    unsigned short Raw(int r) {
      return _gr[r]&0xffff;
    }
    int Stale(int r) const {
      return (_gr[r]>>16)!=0;
    }
    void Print() const {
      for ( std::vector<GlobalRegisterField>::const_iterator i=_fields.begin(); i != _fields.end(); i++ ) {
        i->Print();
      }
    }
  };

  class Fei4Calibrations {
    int _tdac[80*336];
    int _fdac[80*336];
    int _kill[80*336];
    int _vthr;
    int _trimdac;
    const char *_filename;
  public:
    Fei4Calibrations(const char *file) :
      _filename(file), _vthr(0), _trimdac(0) {

      for ( int i=0; i<80*336; i++ ) {
        _tdac[i] = 0;
        _fdac[i] = 0;
        _kill[i] = 0;
      }

      std::ifstream ifs(_filename,std::ifstream::in);
      std::string line;
      int ir, ic;
      while ( getline(ifs,line) ) {
        std::stringstream s(line);
        std::string token;
        while ( s.good() ) {
          s >> token;
          size_t e = token.find_first_of('=');
          if ( e != std::string::npos ) {
            std::string key = token.substr(0,e);
            std::string val = token.substr(e+1);
            if ( key.compare("Vthr") == 0 ) {
              _vthr = atoi(val.c_str());
            }
            else if ( key.compare("TrimmedVdac") == 0 ) {
              _trimdac = atoi(val.c_str());
            }
            else if ( key.compare("Tdac") == 0 ) {
              _tdac[ic*336+ir] = atoi(val.c_str());
            }
            else if ( key.compare("Fdac") == 0 ) {
              _fdac[ic*336+ir] = atoi(val.c_str());
            }
            else if ( key.compare("Kill") == 0 ) {
              _kill[ic*336+ir] = atoi(val.c_str());
            }
          }
          else {
            size_t r = token.find_first_of('r');
            size_t c = token.find_first_of('c');
            if ( r != std::string::npos ) {
              ir = atoi(token.substr(r+1,c-1).c_str());
            }
            if ( c != std::string::npos ) {
              ic = atoi(token.substr(c+1).c_str());
            }
          }
        }
      }
    }
    void KillColumn(int ic) {
      for ( int ir=0; ir<336; ir++ ) {
        _kill[ic*336+ir] = 1;
      }
    }
    int Tdac(int ir,int ic) const { return _tdac[ic*336+ir]; }
    int Fdac(int ir,int ic) const { return _fdac[ic*336+ir]; }
    int Kill(int ir,int ic) const { return _kill[ic*336+ir]; }
    int Vthr() const { return _vthr; }
    int TrimmedDac() const { return _trimdac; }
  };

  class Fei4Interface {
    int _s;
    struct sockaddr_in _saddr;
    struct sockaddr_in _daddr;
    struct hostent *_hp;
    stib::Stib *_msg;
    GlobalRegisters _gr[12];
    int _log;
  public:
    Fei4Interface(char *);
    void WriteModifiedRegisters(int c) {
      WriteModifiedRegisters(c,_gr[c]);
    }
    stib::Stib *Buffer() { return _msg; }
    void WriteModifiedRegisters(int,GlobalRegisters &);
    void WriteGlobalRegister(int,int,int);
    void WriteGlobalRegister(int chan,const char *name,int value) {
      if ( _log ) {
        std::cout << "gr[" << chan << "]." << name << " = " << _gr[chan].Field(name) << " <-- " << std::hex << value << std::dec << std::endl;
      }
      _gr[chan].Field(name) = value;
    }
    void GlobalPulse(int,int);
    void WriteFrontEnd(int,const unsigned int *);
    int Configure(int);
    void ClearPixelSR(int,int);
    void SetPixelSR(int,int);
    void WritePixelSR(int,int,const unsigned int *);
    void ReadPixelSR(int,int);
    void LoadPixelLatches(int,int,int);
    void ReadPixelLatches(int,int,int);
    int SetupDigitalInject(int);
    void SetMatchPattern(int,int,int,int,int,int);
    void ClearMatchCounters(int);
    int Pulse(int,int,int);
    int ReadMatchCounters(int,unsigned int *);
    void ClearBuffer();
    void LogBuffer(int l) { _log = l; }
    int WriteBuffer();
  };

}

#endif
