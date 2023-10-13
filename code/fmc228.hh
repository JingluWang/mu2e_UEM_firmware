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
#include <set>
#include <arpa/inet.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>

#include "stib.hh"

namespace fmc228 {

  inline unsigned int FMC228_SPI(int i) { return 0xcf000010+4*(i); }
  const int LMK04828 = 0;
  const int HMC835 = 1;
  const int AD9234_0 = 2;
  const int AD9234_1 = 3;

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

  class LMK04828_GlobalRegisters : public GlobalRegisters {
  public:
    LMK04828_GlobalRegisters() : GlobalRegisters() {
      _fields.push_back(GlobalRegisterField(_gr,0x000,"RESET",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x000,"SPI_3WIRE_DIS",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x002,"POWERDOWN",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x003,"ID_DEVICE_TYPE",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x004,"ID_PROD[15:8]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x005,"ID_PROD[7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x006,"ID_REVMASK",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x00c,"ID_VNDR[15:8]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x00d,"ID_VNDR[7:0]",0,7));

      _fields.push_back(GlobalRegisterField(_gr,0x100,"CLKout0_1_ODL",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x100,"CLKout0_1_IDL",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x100,"DCLKout0_DIV",0,4));
      _fields.push_back(GlobalRegisterField(_gr,0x101,"DCLKout0_DDLY_CNTH",4,7));
      _fields.push_back(GlobalRegisterField(_gr,0x101,"DCLKout0_DDLY_CNTL",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x103,"DCLKout0_ADLY",3,7));
      _fields.push_back(GlobalRegisterField(_gr,0x103,"DCLKout0_ADLY_MUX",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x103,"DCLKout0_MUX",0,1));
      _fields.push_back(GlobalRegisterField(_gr,0x104,"DCLKout0_HS",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x104,"SDCLKout1_MUX",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x104,"SDCLKout1_DDLY",1,4));
      _fields.push_back(GlobalRegisterField(_gr,0x104,"SDCLKout1_HS",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x105,"SDCLKout1_ADLY_EN",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x105,"SDCLKout1_ADLY",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x106,"DCLKout0_DDLY_PD",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x106,"DCLKout0_HSg_PD",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x106,"DCLKout0_ADLYg_PD",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x106,"DCLKout0_ADLY_PD",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x106,"CLKout0_1_PD",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x106,"SDCLKout1_DIS_MODE",1,2));
      _fields.push_back(GlobalRegisterField(_gr,0x106,"SDCLKout1_PD",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x107,"SDCLKout1_POL",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x107,"SDCLKout1_FMT",4,6));
      _fields.push_back(GlobalRegisterField(_gr,0x107,"DCLKout0_POL",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x107,"DCLKout0_FMT",2,0));

      _fields.push_back(GlobalRegisterField(_gr,0x108,"CLKout2_3_ODL",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x108,"CLKout2_3_IDL",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x108,"DCLKout2_DIV",0,4));
      _fields.push_back(GlobalRegisterField(_gr,0x109,"DCLKout2_DDLY_CNTH",4,7));
      _fields.push_back(GlobalRegisterField(_gr,0x109,"DCLKout2_DDLY_CNTL",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x10b,"DCLKout2_ADLY",3,7));
      _fields.push_back(GlobalRegisterField(_gr,0x10b,"DCLKout2_ADLY_MUX",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x10b,"DCLKout2_MUX",0,1));
      _fields.push_back(GlobalRegisterField(_gr,0x10c,"DCLKout2_HS",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x10c,"SDCLKout3_MUX",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x10c,"SDCLKout3_DDLY",1,4));
      _fields.push_back(GlobalRegisterField(_gr,0x10c,"SDCLKout3_HS",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x10d,"SDCLKout3_ADLY_EN",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x10d,"SDCLKout3_ADLY",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x10e,"DCLKout2_DDLY_PD",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x10e,"DCLKout2_HSg_PD",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x10e,"DCLKout2_ADLYg_PD",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x10e,"DCLKout2_ADLY_PD",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x10e,"CLKout2_3_PD",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x10e,"SDCLKout3_DIS_MODE",1,2));
      _fields.push_back(GlobalRegisterField(_gr,0x10e,"SDCLKout3_PD",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x10f,"SDCLKout3_POL",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x10f,"SDCLKout3_FMT",4,6));
      _fields.push_back(GlobalRegisterField(_gr,0x10f,"DCLKout2_POL",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x10f,"DCLKout2_FMT",2,0));

      _fields.push_back(GlobalRegisterField(_gr,0x110,"CLKout4_5_ODL",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x110,"CLKout4_5_IDL",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x110,"DCLKout4_DIV",0,4));
      _fields.push_back(GlobalRegisterField(_gr,0x111,"DCLKout4_DDLY_CNTH",4,7));
      _fields.push_back(GlobalRegisterField(_gr,0x111,"DCLKout4_DDLY_CNTL",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x113,"DCLKout4_ADLY",3,7));
      _fields.push_back(GlobalRegisterField(_gr,0x113,"DCLKout4_ADLY_MUX",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x113,"DCLKout4_MUX",0,1));
      _fields.push_back(GlobalRegisterField(_gr,0x114,"DCLKout4_HS",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x114,"SDCLKout5_MUX",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x114,"SDCLKout5_DDLY",1,4));
      _fields.push_back(GlobalRegisterField(_gr,0x114,"SDCLKout5_HS",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x115,"SDCLKout5_ADLY_EN",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x115,"SDCLKout5_ADLY",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x116,"DCLKout4_DDLY_PD",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x116,"DCLKout4_HSg_PD",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x116,"DCLKout4_ADLYg_PD",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x116,"DCLKout4_ADLY_PD",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x116,"CLKout4_5_PD",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x116,"SDCLKout5_DIS_MODE",1,2));
      _fields.push_back(GlobalRegisterField(_gr,0x116,"SDCLKout5_PD",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x117,"SDCLKout5_POL",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x117,"SDCLKout5_FMT",4,6));
      _fields.push_back(GlobalRegisterField(_gr,0x117,"DCLKout4_POL",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x117,"DCLKout4_FMT",2,0));

      _fields.push_back(GlobalRegisterField(_gr,0x118,"CLKout6_7_ODL",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x118,"CLKout6_7_IDL",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x118,"DCLKout6_DIV",0,4));
      _fields.push_back(GlobalRegisterField(_gr,0x119,"DCLKout6_DDLY_CNTH",4,7));
      _fields.push_back(GlobalRegisterField(_gr,0x119,"DCLKout6_DDLY_CNTL",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x11b,"DCLKout6_ADLY",3,7));
      _fields.push_back(GlobalRegisterField(_gr,0x11b,"DCLKout6_ADLY_MUX",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x11b,"DCLKout6_MUX",0,1));
      _fields.push_back(GlobalRegisterField(_gr,0x11c,"DCLKout6_HS",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x11c,"SDCLKout7_MUX",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x11c,"SDCLKout7_DDLY",1,4));
      _fields.push_back(GlobalRegisterField(_gr,0x11c,"SDCLKout7_HS",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x11d,"SDCLKout7_ADLY_EN",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x11d,"SDCLKout7_ADLY",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x11e,"DCLKout6_DDLY_PD",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x11e,"DCLKout6_HSg_PD",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x11e,"DCLKout6_ADLYg_PD",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x11e,"DCLKout6_ADLY_PD",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x11e,"CLKout6_7_PD",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x11e,"SDCLKout7_DIS_MODE",1,2));
      _fields.push_back(GlobalRegisterField(_gr,0x11e,"SDCLKout7_PD",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x11f,"SDCLKout7_POL",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x11f,"SDCLKout7_FMT",4,6));
      _fields.push_back(GlobalRegisterField(_gr,0x11f,"DCLKout6_POL",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x11f,"DCLKout6_FMT",2,0));

      _fields.push_back(GlobalRegisterField(_gr,0x120,"CLKout8_9_ODL",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x120,"CLKout8_9_IDL",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x120,"DCLKout8_DIV",0,4));
      _fields.push_back(GlobalRegisterField(_gr,0x121,"DCLKout8_DDLY_CNTH",4,7));
      _fields.push_back(GlobalRegisterField(_gr,0x121,"DCLKout8_DDLY_CNTL",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x123,"DCLKout8_ADLY",3,7));
      _fields.push_back(GlobalRegisterField(_gr,0x123,"DCLKout8_ADLY_MUX",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x123,"DCLKout8_MUX",0,1));
      _fields.push_back(GlobalRegisterField(_gr,0x124,"DCLKout8_HS",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x124,"SDCLKout9_MUX",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x124,"SDCLKout9_DDLY",1,4));
      _fields.push_back(GlobalRegisterField(_gr,0x124,"SDCLKout9_HS",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x125,"SDCLKout9_ADLY_EN",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x125,"SDCLKout9_ADLY",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x126,"DCLKout8_DDLY_PD",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x126,"DCLKout8_HSg_PD",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x126,"DCLKout8_ADLYg_PD",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x126,"DCLKout8_ADLY_PD",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x126,"CLKout8_9_PD",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x126,"SDCLKout9_DIS_MODE",1,2));
      _fields.push_back(GlobalRegisterField(_gr,0x126,"SDCLKout9_PD",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x127,"SDCLKout9_POL",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x127,"SDCLKout9_FMT",4,6));
      _fields.push_back(GlobalRegisterField(_gr,0x127,"DCLKout8_POL",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x127,"DCLKout8_FMT",2,0));

      _fields.push_back(GlobalRegisterField(_gr,0x128,"CLKout10_11_ODL",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x128,"CLKout10_11_IDL",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x128,"DCLKout10_DIV",0,4));
      _fields.push_back(GlobalRegisterField(_gr,0x129,"DCLKout10_DDLY_CNTH",4,7));
      _fields.push_back(GlobalRegisterField(_gr,0x129,"DCLKout10_DDLY_CNTL",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x12b,"DCLKout10_ADLY",3,7));
      _fields.push_back(GlobalRegisterField(_gr,0x12b,"DCLKout10_ADLY_MUX",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x12b,"DCLKout10_MUX",0,1));
      _fields.push_back(GlobalRegisterField(_gr,0x12c,"DCLKout10_HS",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x12c,"SDCLKout11_MUX",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x12c,"SDCLKout11_DDLY",1,4));
      _fields.push_back(GlobalRegisterField(_gr,0x12c,"SDCLKout11_HS",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x12d,"SDCLKout11_ADLY_EN",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x12d,"SDCLKout11_ADLY",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x12e,"DCLKout10_DDLY_PD",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x12e,"DCLKout10_HSg_PD",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x12e,"DCLKout10_ADLYg_PD",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x12e,"DCLKout10_ADLY_PD",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x12e,"CLKout10_11_PD",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x12e,"SDCLKout11_DIS_MODE",1,2));
      _fields.push_back(GlobalRegisterField(_gr,0x12e,"SDCLKout11_PD",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x12f,"SDCLKout11_POL",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x12f,"SDCLKout11_FMT",4,6));
      _fields.push_back(GlobalRegisterField(_gr,0x12f,"DCLKout10_POL",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x12f,"DCLKout10_FMT",2,0));

      _fields.push_back(GlobalRegisterField(_gr,0x130,"CLKout12_13_ODL",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x130,"CLKout12_13_IDL",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x130,"DCLKout12_DIV",0,4));
      _fields.push_back(GlobalRegisterField(_gr,0x131,"DCLKout12_DDLY_CNTH",4,7));
      _fields.push_back(GlobalRegisterField(_gr,0x131,"DCLKout12_DDLY_CNTL",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x133,"DCLKout12_ADLY",3,7));
      _fields.push_back(GlobalRegisterField(_gr,0x133,"DCLKout12_ADLY_MUX",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x133,"DCLKout12_MUX",0,1));
      _fields.push_back(GlobalRegisterField(_gr,0x134,"DCLKout12_HS",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x134,"SDCLKout13_MUX",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x134,"SDCLKout13_DDLY",1,4));
      _fields.push_back(GlobalRegisterField(_gr,0x134,"SDCLKout13_HS",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x135,"SDCLKout13_ADLY_EN",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x135,"SDCLKout13_ADLY",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x136,"DCLKout12_DDLY_PD",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x136,"DCLKout12_HSg_PD",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x136,"DCLKout12_ADLYg_PD",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x136,"DCLKout12_ADLY_PD",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x136,"CLKout12_13_PD",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x136,"SDCLKout13_DIS_MODE",1,2));
      _fields.push_back(GlobalRegisterField(_gr,0x136,"SDCLKout13_PD",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x137,"SDCLKout13_POL",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x137,"SDCLKout13_FMT",4,6));
      _fields.push_back(GlobalRegisterField(_gr,0x137,"DCLKout12_POL",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x137,"DCLKout12_FMT",2,0));

      _fields.push_back(GlobalRegisterField(_gr,0x138,"VCO_MUX",5,6));
      _fields.push_back(GlobalRegisterField(_gr,0x138,"OSCout_MUX",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x138,"OSCout_FMT",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x139,"SYSREF_CLKin0_MUX",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x139,"SYSREF_MUX",0,1));
      _fields.push_back(GlobalRegisterField(_gr,0x13a,"SYSREF_DIV[12:8]",0,4));
      _fields.push_back(GlobalRegisterField(_gr,0x13b,"SYSREF_DIV[7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x13c,"SYSREF_DDLY[12:8]",0,4));
      _fields.push_back(GlobalRegisterField(_gr,0x13d,"SYSREF_DDLY[7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x13e,"SYSREF_PULSE_CNT",0,1));
      _fields.push_back(GlobalRegisterField(_gr,0x13f,"PLL2_NCLK_MUX",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x13f,"PLL1_NCLK_MUX",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x13f,"FB_MUX",1,2));
      _fields.push_back(GlobalRegisterField(_gr,0x13f,"FB_MUX_EN",0,1));
      _fields.push_back(GlobalRegisterField(_gr,0x140,"PLL1_PD",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x140,"VCO_LDO_PD",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x140,"VCO_PD",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x140,"OSCin_PD",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x140,"SYSREF_GBL_PD",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x140,"SYSREF_PD",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x140,"SYSREF_DDLY_PD",1,1));
      _fields.push_back(GlobalRegisterField(_gr,0x140,"SYSREF_PLSR_PD",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x141,"DDLYd_SYSREF_EN",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x141,"DDLYd12_EN",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x141,"DDLYd10_EN",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x141,"DDLYd8_EN",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x141,"DDLYd6_EN",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x141,"DDLYd4_EN",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x141,"DDLYd2_EN",1,1));
      _fields.push_back(GlobalRegisterField(_gr,0x141,"DDLYd0_EN",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x142,"DDLYd_STEP_CNT",4,0));
      _fields.push_back(GlobalRegisterField(_gr,0x143,"SYSREF_DDLY_CLR",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x143,"SYNC_1SHOT_EN",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x143,"SYNC_POL",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x143,"SYNC_EN",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x143,"SYNC_PLL2_DLD",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x143,"SYNC_PLL1_DLD",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x143,"SYNC_MODE",0,1));
      _fields.push_back(GlobalRegisterField(_gr,0x144,"SYNC_DISSYSREF",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x144,"SYNC_DIS12",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x144,"SYNC_DIS10",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x144,"SYNC_DIS8",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x144,"SYNC_DIS6",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x144,"SYNC_DIS4",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x144,"SYNC_DIS2",1,1));
      _fields.push_back(GlobalRegisterField(_gr,0x144,"SYNC_DIS0",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x146,"CLKin2_EN",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x146,"CLKin1_EN",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x146,"CLKin0_EN",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x146,"CLKin2_TYPE",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x146,"CLKin1_TYPE",1,1));
      _fields.push_back(GlobalRegisterField(_gr,0x146,"CLKin0_TYPE",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x147,"CLKin_SEL_POL",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x147,"CLKin_SEL_MODE",4,6));
      _fields.push_back(GlobalRegisterField(_gr,0x147,"CLKin1_OUT_MUX",2,3));
      _fields.push_back(GlobalRegisterField(_gr,0x147,"CLKin0_OUT_MUX",0,1));
      _fields.push_back(GlobalRegisterField(_gr,0x148,"CLKinSEL0_MUX",3,5));
      _fields.push_back(GlobalRegisterField(_gr,0x148,"CLKinSEL0_TYPE",0,2));
      _fields.push_back(GlobalRegisterField(_gr,0x149,"SDIO_RDBK_TYPE",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x149,"CLKinSEL1_MUX",3,5));
      _fields.push_back(GlobalRegisterField(_gr,0x149,"CLKinSEL1_TYPE",0,2));
      _fields.push_back(GlobalRegisterField(_gr,0x14a,"RESET_MUX",3,5));
      _fields.push_back(GlobalRegisterField(_gr,0x14a,"RESET_TYPE",0,2));
      _fields.push_back(GlobalRegisterField(_gr,0x14b,"LOS_TIMEOUT",6,7));
      _fields.push_back(GlobalRegisterField(_gr,0x14b,"LOS_EN",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x14b,"TRACK_EN",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x14b,"HOLDOVER_FORCE",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x14b,"MAN_DAC_EN",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x14b,"MAN_DAC[9:8]",0,1));
      _fields.push_back(GlobalRegisterField(_gr,0x14c,"MAN_DAC[7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x14d,"DAC_TRIP_LOW",0,5));
      _fields.push_back(GlobalRegisterField(_gr,0x14e,"DAC_CLK_MULT",6,7));
      _fields.push_back(GlobalRegisterField(_gr,0x14e,"DAC_TRIP_HIGH",0,5));
      _fields.push_back(GlobalRegisterField(_gr,0x14f,"DAC_TRIP_CNTR",0,7));

      _fields.push_back(GlobalRegisterField(_gr,0x150,"CLKin_OVERRIDE",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x150,"HOLDOVER_PLL1_DET",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x150,"HOLDOVER_LOS_DET",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x150,"HOLDOVER_VTUNE_DET",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x150,"HOLDOVER_HITLESS_SWITCH",1,1));
      _fields.push_back(GlobalRegisterField(_gr,0x150,"HOLDOVER_EN",0,0));

      _fields.push_back(GlobalRegisterField(_gr,0x151,"HOLDOVER_DLD_CNT[13:8]",0,5));
      _fields.push_back(GlobalRegisterField(_gr,0x152,"HOLDOVER_DLD_CNT[7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x153,"CLKin0_R[13:8]",0,5));
      _fields.push_back(GlobalRegisterField(_gr,0x154,"CLKin0_R[7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x155,"CLKin1_R[13:8]",0,5));
      _fields.push_back(GlobalRegisterField(_gr,0x156,"CLKin1_R[7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x157,"CLKin2_R[13:8]",0,5));
      _fields.push_back(GlobalRegisterField(_gr,0x158,"CLKin2_R[7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x159,"PLL1_N[13:8]",0,5));
      _fields.push_back(GlobalRegisterField(_gr,0x15a,"PLL1_N[7:0]",0,7));

      _fields.push_back(GlobalRegisterField(_gr,0x15b,"PLL1_WND_SIZE",6,7));
      _fields.push_back(GlobalRegisterField(_gr,0x15b,"PLL1_CP_TRI",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x15b,"PLL1_CP_POL",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x15b,"PLL1_CP_GAIN",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x15c,"PLL1_DLD_CNT[13:8]",0,5));
      _fields.push_back(GlobalRegisterField(_gr,0x15d,"PLL1_DLD_CNT[7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x15e,"PLL1_R_DLY",3,5));
      _fields.push_back(GlobalRegisterField(_gr,0x15e,"PLL1_N_DLY",0,2));
      _fields.push_back(GlobalRegisterField(_gr,0x15f,"PLL1_LD_MUX",3,7));
      _fields.push_back(GlobalRegisterField(_gr,0x15f,"PLL1_LD_TYPE",0,2));
      _fields.push_back(GlobalRegisterField(_gr,0x160,"PLL2_R[11:8]",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x161,"PLL2_R[7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x162,"PLL2_P",5,7));
      _fields.push_back(GlobalRegisterField(_gr,0x162,"OSCin_FREQ",2,4));
      _fields.push_back(GlobalRegisterField(_gr,0x162,"PLL2_XTAL_EN",1,1));
      _fields.push_back(GlobalRegisterField(_gr,0x162,"PLL2_REF_2X_EN",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x163,"PLL2_N_CAL[17:16]",0,1));
      _fields.push_back(GlobalRegisterField(_gr,0x164,"PLL2_N_CAL[15:8]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x165,"PLL2_N_CAL[7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x166,"PLL2_FCAL_DIS",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x166,"PLL2_N[17:16]",0,1));
      _fields.push_back(GlobalRegisterField(_gr,0x167,"PLL2_N[15:8]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x168,"PLL2_N[7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x169,"PLL2_WND_SIZE",5,6));
      _fields.push_back(GlobalRegisterField(_gr,0x169,"PLL2_CP_GAIN",3,4));
      _fields.push_back(GlobalRegisterField(_gr,0x169,"PLL2_CP_POL",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x169,"PLL2_CP_TRI",1,1));
      _fields.push_back(GlobalRegisterField(_gr,0x16a,"SYSREF_REQ_EN",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x16a,"PLL2_DLD_CNT[15:8]",0,5));
      _fields.push_back(GlobalRegisterField(_gr,0x16b,"PLL2_DLD_CNT[7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x16c,"PLL2_LF_R4",3,5));
      _fields.push_back(GlobalRegisterField(_gr,0x16c,"PLL2_LF_R3",0,2));
      _fields.push_back(GlobalRegisterField(_gr,0x16d,"PLL2_LF_C4",4,7));
      _fields.push_back(GlobalRegisterField(_gr,0x16d,"PLL2_LF_C3",0,3));
      _fields.push_back(GlobalRegisterField(_gr,0x16e,"PLL2_LD_MUX",3,7));
      _fields.push_back(GlobalRegisterField(_gr,0x16e,"PLL2_LD_TYPE",0,2));
      _fields.push_back(GlobalRegisterField(_gr,0x173,"PLL_PRE_PD",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x173,"PLL2_PD",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x174,"VCO1_DIV",0,4));
      _fields.push_back(GlobalRegisterField(_gr,0x17c,"OPT_REG_1",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x17d,"OPT_REG_2",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x182,"RB_PLL1_LD_LOST",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x182,"RB_PLL1_LD",1,1));
      _fields.push_back(GlobalRegisterField(_gr,0x182,"CLR_PLL1_LD_LOST",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x183,"RB_PLL2_LD_LOST",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x183,"RB_PLL2_LD",1,1));
      _fields.push_back(GlobalRegisterField(_gr,0x183,"CLR_PLL2_LD_LOST",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x184,"RB_DAC_VALUE[9:8]",6,7));
      _fields.push_back(GlobalRegisterField(_gr,0x184,"RB_CLKin2_SEL",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x184,"RB_CLKin1_SEL",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x184,"RB_CLKin0_SEL",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x184,"RB_CLKin1_LOS",1,1));
      _fields.push_back(GlobalRegisterField(_gr,0x184,"RB_CLKin0_LOS",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x185,"RB_DAC_VALUE[7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x188,"RB_HOLDOVER",4,4));

      for ( std::vector<GlobalRegisterField>::const_iterator i=_fields.begin();
            i != _fields.end(); i++ ) {
        _map[i->Name()] = *i;
      }
    }
  };

  class AD9234_GlobalRegisters : public GlobalRegisters {
  public:
    AD9234_GlobalRegisters() : GlobalRegisters() {
      _fields.push_back(GlobalRegisterField(_gr,0x000,"INTERFACE_CONFIG_A",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x001,"INTERFACE_CONFIG_B",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x002,"DEVICE_CONFIG",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x003,"CHIP_TYPE",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x004,"CHIP_ID[7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x005,"CHIP_ID[15:8]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x006,"CHIP_GRADE",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x007,"DEVICE_INDEX",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x00a,"Scratch pad",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x00b,"SPI REVISION",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x00c,"Vendor ID[7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x00d,"Vendor ID[15:8]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x015,"Analog Input",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x016,"Input termination",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x018,"Input buffer current control",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x024,"V_1P0 control",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x028,"Temperature diode",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x03f,"PDWN/STBY pin control",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x040,"Chip pin control",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x10b,"Clock divider",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x10c,"Clock divider phase",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x10d,"Clock divider and SYSREF control",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x117,"Clock delay control",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x118,"Clock fine delay",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x11c,"Clock status",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x120,"SYSREF+- Control 1",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x121,"SYSREF+- Control 2",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x123,"SYSREF+- timestamp delay control",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x128,"SYSREF+- Status 1",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x129,"SYSREF+- and clock divider status",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x12a,"SYSREF+- counter",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x1ff,"Chip sync mode",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x200,"Chip application mode",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x201,"Chip decimation ratio",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x228,"Customer offset",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x245,"FD control",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x247,"FD upper threshold LSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x248,"FD upper threshold MSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x249,"FD lower threshold LSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x24a,"FD lower threshold MSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x24b,"FD dwell time LSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x24c,"FD dwell time MSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x26f,"Signal Monitor synchronization control",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x270,"Signal Monitor control",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x271,"Signal Monitor period [7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x272,"Signal Monitor period [15:8]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x273,"Signal Monitor period [23:16]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x274,"Signal Monitor result control",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x275,"Signal Monitor result [7:0]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x276,"Signal Monitor result [15:8]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x277,"Signal Monitor result [19:16]",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x278,"Signal Monitor period counter result",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x279,"Signal Monitor SPORT over JESD204B control",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x27a,"SPORT over JESD204B input selection",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x300,"DDC sync control",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x310,"DDC 0 control",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x311,"DDC 0 input selection",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x314,"DDC 0 frequency LSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x315,"DDC 0 frequency MSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x320,"DDC 0 phase LSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x321,"DDC 0 phase MSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x327,"DDC 0 output test mode selection",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x330,"DDC 1 control",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x331,"DDC 1 input selection",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x334,"DDC 1 frequency LSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x335,"DDC 1 frequency MSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x340,"DDC 1 phase LSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x341,"DDC 1 phase MSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x347,"DDC 1 output test mode selection",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x550,"ADC test modes",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x551,"User pattern 1 LSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x552,"User pattern 1 MSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x553,"User pattern 2 LSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x554,"User pattern 2 MSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x555,"User pattern 3 LSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x556,"User pattern 3 MSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x557,"User pattern 4 LSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x558,"User pattern 4 MSB",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x559,"Output mode control 1",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x55a,"Output mode control 2",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x561,"Output mode",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x562,"Output OR clear",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x563,"Output OR status",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x564,"Output channel select",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x56e,"JESD204B lane rate control",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x570,"JESD204B quick configuration",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x571,"JESD204B link mode control 1",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x572,"JESD204B link mode control 2",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x573,"JESD204B link mode control 3",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x574,"JESD204B link mode control 4",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x578,"JESD204B LMFC offset",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x580,"JESD204B DID config",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x581,"JESD204B BID config",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x583,"JESD204B LID config 1",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x584,"JESD204B LID config 2",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x585,"JESD204B LID config 3",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x586,"JESD204B LID config 4",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x58b,"JESD204B parameters",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x58c,"JESD204B F config",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x58d,"JESD204B K config",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x58e,"JESD204B M config",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x58f,"JESD204B CS/N config",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x590,"JESD204B N' config",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x591,"JESD204B S config",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x592,"JESD204B HD/CF config",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x5a0,"JESD204B CHKSUM 0",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x5a1,"JESD204B CHKSUM 1",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x5a2,"JESD204B CHKSUM 2",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x5a3,"JESD204B CHKSUM 3",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x5b0,"JESD204B lane power-down",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x5b2,"JESD204B lane SERDOUT0+- assign",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x5b3,"JESD204B lane SERDOUT1+- assign",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x5b5,"JESD204B lane SERDOUT2+- assign",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x5b6,"JESD204B lane SERDOUT3+- assign",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x5bf,"JESD204B serializer drive adjust",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x5c1,"De-emphasis select",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x5c2,"De-emphasis setting for SERDOUT0+-",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x5c3,"De-emphasis setting for SERDOUT1+-",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x5c4,"De-emphasis setting for SERDOUT2+-",0,7)); 
      _fields.push_back(GlobalRegisterField(_gr,0x5c5,"De-emphasis setting for SERDOUT3+-",0,7)); 

      for ( std::vector<GlobalRegisterField>::const_iterator i=_fields.begin();
            i != _fields.end(); i++ ) {
        _map[i->Name()] = *i;
      }
    }
  };

  class HMC835_GlobalRegisters : public GlobalRegisters {
  public:
    HMC835_GlobalRegisters() : GlobalRegisters() {
      _fields.push_back(GlobalRegisterField(_gr,0x00,"CHIP_ID",0,23));
      _fields.push_back(GlobalRegisterField(_gr,0x01,"CHIP_ENABLE",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x01,"Chip Enable Pin Select",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x01,"SPI Chip Enable",1,1));
      _fields.push_back(GlobalRegisterField(_gr,0x01,"Keep Bias On",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x01,"Keep PFD On",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x01,"Keep CP On",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x01,"Keep Referene Buffer On",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x01,"Keep VCO Buffer On",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x01,"Keep GPO Driver On",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x02,"rdiv",0,13));
      _fields.push_back(GlobalRegisterField(_gr,0x03,"Integer Setting",0,18));
      _fields.push_back(GlobalRegisterField(_gr,0x04,"Fractional Setting",0,23));
      _fields.push_back(GlobalRegisterField(_gr,0x06,"MODULATOR",0,23));
      _fields.push_back(GlobalRegisterField(_gr,0x06,"DSM Order",2,3));
      _fields.push_back(GlobalRegisterField(_gr,0x06,"Synchronous SPI Mode",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x06,"Exact Frequency Mode Enable",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x06,"Fractional Bypass",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x06,"Autoseed EN",8,8));
      _fields.push_back(GlobalRegisterField(_gr,0x06,"Delta Sigma Modulator Enable",11,11));
      _fields.push_back(GlobalRegisterField(_gr,0x07,"LOCK_DETECT",0,23));
      _fields.push_back(GlobalRegisterField(_gr,0x07,"lkd_wincnt_max",0,2));
      _fields.push_back(GlobalRegisterField(_gr,0x07,"LD Timier Divide Setting",5,7));
      _fields.push_back(GlobalRegisterField(_gr,0x07,"LD Timer Speed",8,9));
      _fields.push_back(GlobalRegisterField(_gr,0x07,"LD Enable",11,11));
      _fields.push_back(GlobalRegisterField(_gr,0x07,"LD Mode",14,14));
      _fields.push_back(GlobalRegisterField(_gr,0x07,"CSP Enable",15,15));
      _fields.push_back(GlobalRegisterField(_gr,0x07,"Lock Detect Training",20,20));
      _fields.push_back(GlobalRegisterField(_gr,0x08,"ANALOG_EN",0,23));
      _fields.push_back(GlobalRegisterField(_gr,0x08,"LD_SDO Driver Enable",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x08,"VCO Buffer Bias Enable",10,10));
      _fields.push_back(GlobalRegisterField(_gr,0x08,"High Frequency Reference",21,21));
      _fields.push_back(GlobalRegisterField(_gr,0x08,"SDO Output Level",22,22));
      _fields.push_back(GlobalRegisterField(_gr,0x09,"CHARGE_PUMP",0,23));
      _fields.push_back(GlobalRegisterField(_gr,0x09,"CP DN Gain",0,6));
      _fields.push_back(GlobalRegisterField(_gr,0x09,"CP UP Gain",7,13));
      _fields.push_back(GlobalRegisterField(_gr,0x09,"Offset Magnitude",14,20));
      _fields.push_back(GlobalRegisterField(_gr,0x09,"Offset UP enable",21,21));
      _fields.push_back(GlobalRegisterField(_gr,0x09,"Offset DN enable",22,22));
      _fields.push_back(GlobalRegisterField(_gr,0x09,"HiK charge pump Mode",23,23));
      _fields.push_back(GlobalRegisterField(_gr,0x0a,"VCO_AUTOCAL",0,23));
      _fields.push_back(GlobalRegisterField(_gr,0x0a,"Vtune Resolution",0,2));
      _fields.push_back(GlobalRegisterField(_gr,0x0a,"AutoCal Disable",11,11));
      _fields.push_back(GlobalRegisterField(_gr,0x0a,"FSM/VSPI Clock Select",13,14));
      _fields.push_back(GlobalRegisterField(_gr,0x0b,"PD/CP",0,23));
      _fields.push_back(GlobalRegisterField(_gr,0x0b,"PD Phase Select",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x0b,"PD Up Output Enable",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x0b,"PD Down Output Enable",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x0b,"Force CP UP",9,9));
      _fields.push_back(GlobalRegisterField(_gr,0x0b,"Force CP DN",10,10));
      _fields.push_back(GlobalRegisterField(_gr,0x0b,"Force CP Mid Rail",11,11));
      _fields.push_back(GlobalRegisterField(_gr,0x0c,"EXACT_FREQ",0,23));
      _fields.push_back(GlobalRegisterField(_gr,0x0f,"GPO_REGISTER",0,23));
      _fields.push_back(GlobalRegisterField(_gr,0x0f,"GPO",0,4));
      _fields.push_back(GlobalRegisterField(_gr,0x0f,"GPO Test Data",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x0f,"Prevent Automux SDO",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x0f,"Prevent Auto tri-state SDO",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x10,"TUNING",0,8));
      _fields.push_back(GlobalRegisterField(_gr,0x10,"VCO Tune Curve",0,7));
      _fields.push_back(GlobalRegisterField(_gr,0x10,"VCO Tuning Busy",8,8));
      _fields.push_back(GlobalRegisterField(_gr,0x11,"SAR",0,19));
      _fields.push_back(GlobalRegisterField(_gr,0x11,"SAR Error Magnitude Count",0,18));
      _fields.push_back(GlobalRegisterField(_gr,0x11,"SAR Error Sign",19,19));
      _fields.push_back(GlobalRegisterField(_gr,0x12,"GPO/LD",0,1));
      _fields.push_back(GlobalRegisterField(_gr,0x12,"GPO out",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x12,"Lock Detect",1,1));
      _fields.push_back(GlobalRegisterField(_gr,0x13,"BIST",0,15));
      _fields.push_back(GlobalRegisterField(_gr,0x14,"Auxiliary SPI Register",0,13));
      _fields.push_back(GlobalRegisterField(_gr,0x14,"Aux SPI Mode",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x14,"Aux GPO Values",1,3));
      _fields.push_back(GlobalRegisterField(_gr,0x14,"Aux GPO 3.3 V",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x14,"Phase Sync",9,9));
      _fields.push_back(GlobalRegisterField(_gr,0x14,"Aux SPI GPO Output",10,11));
      _fields.push_back(GlobalRegisterField(_gr,0x14,"Aux SPI Outputs",12,13));
      _fields.push_back(GlobalRegisterField(_gr,0x15,"Manual VCO Config",0,16));
      _fields.push_back(GlobalRegisterField(_gr,0x15,"Vtune Preset Enable",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x15,"Capacitor Switch Setting",1,5));
      _fields.push_back(GlobalRegisterField(_gr,0x15,"Manual VCO Selection",6,8));
      _fields.push_back(GlobalRegisterField(_gr,0x15,"Manual VCO Tune Enable",9,9));
      _fields.push_back(GlobalRegisterField(_gr,0x15,"Enable auto-Scale CP current",16,16));
      _fields.push_back(GlobalRegisterField(_gr,0x16,"Gain Divider Register",0,10));
      _fields.push_back(GlobalRegisterField(_gr,0x16,"RF Divide Ratio",0,5));
      _fields.push_back(GlobalRegisterField(_gr,0x16,"LO1 Output Buffer Gain Control",6,7));
      _fields.push_back(GlobalRegisterField(_gr,0x16,"LO2 Output Buffer Gain Control",8,9));
      _fields.push_back(GlobalRegisterField(_gr,0x16,"Divider Output Stage Gain Control",10,10));
      _fields.push_back(GlobalRegisterField(_gr,0x17,"Modes",0,11));
      _fields.push_back(GlobalRegisterField(_gr,0x17,"VCO SubSys Master Enable",0,0));
      _fields.push_back(GlobalRegisterField(_gr,0x17,"VCO Enable",1,1));
      _fields.push_back(GlobalRegisterField(_gr,0x17,"External VCO Buffer Enable",2,2));
      _fields.push_back(GlobalRegisterField(_gr,0x17,"PLL Buffer Enable",3,3));
      _fields.push_back(GlobalRegisterField(_gr,0x17,"LO1 Output Buffer Enable",4,4));
      _fields.push_back(GlobalRegisterField(_gr,0x17,"LO2 Output Buffer Enable",5,5));
      _fields.push_back(GlobalRegisterField(_gr,0x17,"External Input Enable",6,6));
      _fields.push_back(GlobalRegisterField(_gr,0x17,"Pre Lock Mute Enable",7,7));
      _fields.push_back(GlobalRegisterField(_gr,0x17,"LO1 Output Single-Ended Enable",8,8));
      _fields.push_back(GlobalRegisterField(_gr,0x17,"LO2 Output Single-Ended Enable",9,9));
      _fields.push_back(GlobalRegisterField(_gr,0x17,"Charge Pump Output Select",11,11));
      _fields.push_back(GlobalRegisterField(_gr,0x18,"Bias Register",0,23));
      _fields.push_back(GlobalRegisterField(_gr,0x18,"External Input Buffer Bias",19,20));
      _fields.push_back(GlobalRegisterField(_gr,0x19,"Cals Register",0,23));
      _fields.push_back(GlobalRegisterField(_gr,0x1a,"Seed Register",0,23));

      for ( std::vector<GlobalRegisterField>::const_iterator i=_fields.begin();
            i != _fields.end(); i++ ) {
        _map[i->Name()] = *i;
      }
    }
  };

  class Fmc228Interface {
    int _s;
    struct sockaddr_in _saddr;
    struct sockaddr_in _daddr;
    struct hostent *_hp;
    stib::Stib *_msg;
    GlobalRegisters *_gr[4];
    int _log;
  public:
    Fmc228Interface(char *);
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
    int SpiRegisterValue(int,const char *name);
    int SpiRead(int,const char *name);
    int SpiRead(int,int);
    void SpiRead(int);
    void PrintGlobalRegisters(int);
    void ClearBuffer();
    void LogBuffer(int l) { _log = l; }
    int WriteBuffer();
    int Configure(int);
  };

}

#endif
