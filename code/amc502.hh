#ifndef __AMC502_HH__
#define __AMC502_HH__

#include <iostream>
#include <fstream>
#include <stdexcept>
#include <sstream>
#include <iomanip>
#include <string>
#include <vector>
#include <map>
#include <set>
#include <arpa/inet.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>

#include "stib.hh"

namespace amc502 {

  const unsigned int AMC502_CSR = 0xc0000000;
  const unsigned int AMC502_I2C = 0xc0000004;
  const unsigned int AMC502_CMD = 0xc0000008;
  const unsigned int AMC502_PLL = 0xc000000c;
  const unsigned int AMC502_COUNT_LOW = 0xc0000010;
  const unsigned int AMC502_COUNT_HIGH = 0xc0000014;

  inline unsigned int AMC502_I2C_WBUF(int i) { return 0xc0000100+4*(i); }
  inline unsigned int AMC502_I2C_RBUF(int i) { return 0xc0000200+4*(i); }
  inline unsigned int AMC502_FREQUENCY(int i) { return 0xc0000010+4*(i); }

  const int MUX0 = 0;
  const int MUX1 = 1;
  const int ZL30162 = 2;

  class GlobalRegisterField {
    std::string _name;
    int _reg;
    int _msb;
    int _lsb;
    unsigned long _mask;
    int _width;
    unsigned long *_gr;
  public:
    GlobalRegisterField() : _name("undefined"), _reg(-1), _msb(-1), _lsb(-1), _mask(0), _width(0), _gr(NULL) { }
    GlobalRegisterField(unsigned long *gr,int r,std::string s,int lsb,int msb) :
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
    unsigned int Value() const {
      unsigned int val;
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
    void Set(unsigned int val) {
      unsigned long gr = _gr[_reg]&0xffffffff;
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
      _gr[_reg] |= ((_gr[_reg]&0xffffffff)^gr)<<32;   // Mark modified bits
    }
    int Register() const {
      return _reg;
    }
    unsigned int Raw() const {
      return _gr[_reg]&0xffffffff;
    }
    void SetRaw(unsigned int v) {
      _gr[_reg] = v;
    }
    unsigned int Mask() const {
      return _mask;
    }
    unsigned int Modified() const {
      return _gr[_reg]>>32;
    }
    const std::string &Name() const {
      return _name;
    }
    unsigned int operator =(unsigned int s) {
      Set(s);
      return Value();
    }
    friend std::ostream& operator <<(std::ostream & os,const GlobalRegisterField &f) {
       os << f.Value();
    }
    void Print() const {
      std::cout << "  " << Name() << " = " << std::dec << Value() << std::endl;
    }
  };

  class GlobalRegisters {
  protected:
    static const int ngr = 0x2000;
    unsigned long _gr[ngr];
    std::map<std::string,GlobalRegisterField> _map;
    std::vector<GlobalRegisterField> _fields;
  public:
    unsigned int Get(int i) const {
      return _gr[i]&0xff;
    }
    GlobalRegisters() {
      for ( int i=0; i<ngr; i++ ) {
        _gr[i] = 0xffffffff00000000l;
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
      _gr[r] &= 0xff;
    }
    unsigned int Raw(int r) {
      return _gr[r]&0xffffffff;
    }
    int Stale(int r) const {
      return (_gr[r]>>32)!=0;
    }
    void Set(int r,unsigned int v) {
      _gr[r] = v;
    }
    void Print() const {
      for ( std::vector<GlobalRegisterField>::const_iterator i=_fields.begin(); i != _fields.end(); i++ ) {
        i->Print();
      }
    }
    std::set<int> MappedRegisters() {
      std::set<int> mapped;
      for ( std::vector<GlobalRegisterField>::const_iterator i=_fields.begin(); i!=_fields.end(); i++ ) {
        mapped.insert(i->Register());
      }
      return mapped;
    }
  };

  class ZL30162_GlobalRegisters : public GlobalRegisters {
  public:
    ZL30162_GlobalRegisters() : GlobalRegisters() {
      _fields.push_back(GlobalRegisterField(_gr,0x000,"ready",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x001,"id_reg",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x002,"hw_rev_reg",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x00b,"central_freq_offset",0,31));
      _fields.push_back(GlobalRegisterField(_gr,0x010,"spurs_suppression",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x011,"sticky_lock",0,7));

      for ( std::vector<GlobalRegisterField>::const_iterator i=_fields.begin();
            i != _fields.end(); i++ ) {
        _map[i->Name()] = *i;
      }
    }
  };

  class Amc502Interface {
    int _s;
    struct sockaddr_in _saddr;
    struct sockaddr_in _daddr;
    struct hostent *_hp;
    stib::Stib *_msg;
    GlobalRegisters *_gr[3];
    int _log;
  public:
    Amc502Interface(char *,int);
    ~Amc502Interface() {
      shutdown(_s,SHUT_RDWR);
    }
    void WriteModifiedRegisters(int c) {
      WriteModifiedRegisters(c,_gr[c]);
    }
    stib::Stib *Buffer() { return _msg; }
    void WriteModifiedRegisters(int,GlobalRegisters *);
    void WriteGlobalRegister(int,int,int);
    void WriteGlobalRegister(int chan,const char *name,int value) {
      if ( _log ) {
        std::cout << "gr[" << chan << "]." << name << " = " << _gr[chan]->Field(name) << " <-- " << std::hex << value << std::dec << std::endl;
      }
      _gr[chan]->Field(name) = value;
    }
    int I2cRegisterValue(int,const char *name);
    int I2cRead(int,const char *name);
    int I2cRead(int,int);
    void I2cWriteByte(int,int,int);
    void I2cWriteWord(int,int,unsigned int);
    int I2cReadByte(int,int);
    int I2cReadWord(int,int);
    void SetTclkSamplePhase(int,int);
    void PrintGlobalRegisters(int);
    void ClearBuffer();
    int WriteBuffer();
    void LogBuffer(int l) { _log = l; }
    void WriteCrossbarSwitch(int,const unsigned char *);
    const unsigned char *ReadCrossbarSwitch(int);
    void PrintCrossbarSwitch(int);
    int ReadFrequency(int);
  };

}

#endif
