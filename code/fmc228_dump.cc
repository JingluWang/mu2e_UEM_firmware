#include <iostream>
#include <stdlib.h>
#include <string.h>

#include "fmc228.hh"

using namespace std;
using namespace fmc228;

int main(int argc,char **argv) {
  int all = 0;
  if ( argc < 2 ) {
    cerr << "Usage: " << argv[0] << " <addr> [-a]" << endl;
    exit(1);
  }
  if ( argc > 2 && strcmp(argv[2],"-a") == 0 ) all = 1;

  Fmc228Interface *fmc228 = new Fmc228Interface(argv[1]);
  cout << "Reading LMK04828 registers..." << endl;
  fmc228->SpiRead(LMK04828);
  if ( all ) fmc228->PrintGlobalRegisters(LMK04828);
  cout << "Reading HMC835 registers..." << endl;
  fmc228->SpiRead(HMC835);
  if ( all ) fmc228->PrintGlobalRegisters(HMC835);
  cout << "Reading AD9234_0 registers..." << endl;
  fmc228->SpiRead(AD9234_0);
  if ( all ) fmc228->PrintGlobalRegisters(AD9234_0);
  cout << "Reading AD9234_1 registers..." << endl;
  fmc228->SpiRead(AD9234_1);
  if ( all ) fmc228->PrintGlobalRegisters(AD9234_1);

  cout << "  LMK04828 configuration:" << endl;
  double fin = 10.0;   // Assumed input frequency
  cout << "    CLKin0 : " << fin << " MHz, " << (fmc228->SpiRegisterValue(LMK04828,"CLKin0_TYPE")?"Bipolar":"CMOS") << endl;
  const char *clkin_dest[] = { "0 (SYSREF Mux)",
                               "1 (reserved)",
                               "2 (PLL1)",
                               "3 (Off)" };
  cout << "    CLKin0 input buffer destination : " << clkin_dest[fmc228->SpiRegisterValue(LMK04828,"CLKin0_OUT_MUX")] << endl;
  int clkin0_r = fmc228->SpiRegisterValue(LMK04828,"CLKin0_R[13:8]")*256+fmc228->SpiRegisterValue(LMK04828,"CLKin0_R[7:0]");
  int clkin1_r = fmc228->SpiRegisterValue(LMK04828,"CLKin1_R[13:8]")*256+fmc228->SpiRegisterValue(LMK04828,"CLKin1_R[7:0]");
  int clkin2_r = fmc228->SpiRegisterValue(LMK04828,"CLKin2_R[13:8]")*256+fmc228->SpiRegisterValue(LMK04828,"CLKin2_R[7:0]");
  cout << "    CLKin0 R Divider : " << clkin0_r << endl;
  cout << "    CLKin1 R Divider : " << clkin1_r << endl;
  cout << "    CLKin2 R Divider : " << clkin2_r << endl;
  int pll1_n = fmc228->SpiRegisterValue(LMK04828,"PLL1_N[13:8]")*256+fmc228->SpiRegisterValue(LMK04828,"PLL1_N[7:0]");
  cout << "    PLL1 N : " << pll1_n << endl;
  const char *pll1_wnd[] = { "0 (4 ns)", "1 (9 ns)", "2 (19 ns)", "3 (43 ns)" };
  cout << "    PLL1 window size : " << pll1_wnd[fmc228->SpiRegisterValue(LMK04828,"PLL1_WND_SIZE")] << endl;
  cout << "    PLL1 charge pump output : " << (fmc228->SpiRegisterValue(LMK04828,"PLL1_CP_TRI")?"Tri-state":"active") << endl;
  cout << "    PLL1 charge pump polarity : " << (fmc228->SpiRegisterValue(LMK04828,"PLL1_CP_POL")?"positive slope":"negative slope") << endl;
  cout << "    PLL1 charge pump gain : " << 50+fmc228->SpiRegisterValue(LMK04828,"PLL1_CP_GAIN")*100 << " uA" << endl;
  cout << "    PLL1 DLD counter : " << fmc228->SpiRegisterValue(LMK04828,"PLL1_DLD_CNT[13:8]")*256+
                                       fmc228->SpiRegisterValue(LMK04828,"PLL1_DLD_CNT[7:0]") << endl;
  const char *pll_dly[] = { "0 (0 ps)", "1 (205 ps)", "2 (410 ps)", "3 (615 ps)",
                            "4 (820 ps)", "5 (1025 ps)", "6 (1230 ps)", "7 (1435 ps)" };
  cout << "    PLL1 R/N delay : " << pll_dly[fmc228->SpiRegisterValue(LMK04828,"PLL1_R_DLY")] << " / " << 
                                     pll_dly[fmc228->SpiRegisterValue(LMK04828,"PLL1_N_DLY")] << endl;

  const char *pll_ld_pin[] = { "0 (Logic low)", "1 (PLL1 DLD)", "2 (PLL2 DLD)", "3 (PLL1 & PLL2 DLD)",
                               "4 (Holdover status)", "5 (DAC locked)", "6 (Reserved)", "7 (SPI Readback)",
                               "8 (DAC Rail)", "9 (DAC Low)", "10 (DAC High)", "11 (PLL1_N)",
                               "12 (PLL1_N/2)", "13 (PLL2_N)", "14 (PLL2_N/2)", "15 (PLL1_R)",
                               "16 (PLL1_R/2)", "17 (PLL2_R)", "18 (PLL2_R/2)", "19 (Undefined)",
                               "20 (Undefined)", "21 (Undefined)", "22 (Undefined)", "23 (Undefined)",
                               "24 (Undefined)", "25 (Undefined)", "26 (Undefined)", "27 (Undefined)",
                               "28 (Undefined)", "29 (Undefined)", "30 (Undefined)", "31 (Undefined)" };
  const char *pll_ld_type[] = { "0 (Reserved)", "1 (Reserved)", "2 (Reserved)", "3 (Output push-pull)",
                                "4 (Output inverted push-pull)", "5 (Reserved)", "6 (Output open drain)", "7 (Undefined)" };
  cout << "    PLL1 LD pin output : " << pll_ld_pin[fmc228->SpiRegisterValue(LMK04828,"PLL1_LD_MUX")] << " "
                                      << pll_ld_type[fmc228->SpiRegisterValue(LMK04828,"PLL1_LD_TYPE")] << endl;
  cout << "    PLL2 LD pin output : " << pll_ld_pin[fmc228->SpiRegisterValue(LMK04828,"PLL2_LD_MUX")] << " "
                                      << pll_ld_type[fmc228->SpiRegisterValue(LMK04828,"PLL2_LD_TYPE")] << endl;
  double pll2_r = fmc228->SpiRegisterValue(LMK04828,"PLL2_R[11:8]")*256+fmc228->SpiRegisterValue(LMK04828,"PLL2_R[7:0]");
  double pll2_n = fmc228->SpiRegisterValue(LMK04828,"PLL2_N[17:16]")*65536+
                  fmc228->SpiRegisterValue(LMK04828,"PLL2_N[15:8]")*256+
                  fmc228->SpiRegisterValue(LMK04828,"PLL2_N[7:0]");
  cout << "    PLL2 R : " << pll2_r << endl;
  cout << "    PLL2 N : " << pll2_n << endl;
  int pll2_pre = fmc228->SpiRegisterValue(LMK04828,"PLL2_P");
  if ( pll2_pre == 0 ) pll2_pre = 8;
  if ( pll2_pre == 1 ) pll2_pre = 2;
  cout << "    PLL2 Prescaler : " << pll2_pre << endl;
  const char *oscin_freq[] = { "0 (0-63 MHz)", "1 (63-127 MHz)", "2 (127-255 MHz)", "3 (Reserved)",
                               "4 (255-500 MHz)", "5 (Reserved)", "6 (Reserved)", "7 (Reserved)" };
  cout << "    OSCin frequency : " << oscin_freq[fmc228->SpiRegisterValue(LMK04828,"OSCin_FREQ")] << endl;
  cout << "    PLL2 external XTAL : " << (fmc228->SpiRegisterValue(LMK04828,"PLL2_XTAL_EN")?"oscillator amplifier enabled":"oscillator amplifier disabled") << endl;
  cout << "    PLL2 reference frequency doubler : " << (fmc228->SpiRegisterValue(LMK04828,"PLL2_REF_2X_EN")?"enabled":"disabled") << endl;
  cout << "    PLL2 DLD counter : " << fmc228->SpiRegisterValue(LMK04828,"PLL2_DLD_CNT[15:8]")*256+
                                       fmc228->SpiRegisterValue(LMK04828,"PLL2_DLD_CNT[7:0]") << endl;
  cout << "    SYSREF request input : " << (fmc228->SpiRegisterValue(LMK04828,"SYSREF_REQ_EN")?"enabled":"disabled") << endl;
  const char *pll2_lf_r[] = { "0.2", "1", "2", "4", "16", "(Reserved)", "(Reserved)", "(Reserved)" };
  const char *pll2_lf_c4[] = { "10", "15", "29", "34", "47", "52", "66", "71", "103", "108", "122", "126", "141", "146", "(Reserved)", "(Reserved)" };
  const char *pll2_lf_c3[] = { "10", "11", "15", "16", "19", "20", "24", "25", "29", "30", "33", "34", "38", "39", "(Reserved)", "(Reserved)" };
  cout << "    PLL2 loop filter : R4=" << pll2_lf_r[fmc228->SpiRegisterValue(LMK04828,"PLL2_LF_R4")] << " kOhm, R3="
                                       << pll2_lf_r[fmc228->SpiRegisterValue(LMK04828,"PLL2_LF_R3")] << " kOhm, C4="
                                       << pll2_lf_c4[fmc228->SpiRegisterValue(LMK04828,"PLL2_LF_C4")] << " pF, C3="
                                       << pll2_lf_c3[fmc228->SpiRegisterValue(LMK04828,"PLL2_LF_C3")] << " pF" << endl;

  const char *clkin_mux[] = { "0 (CLKin0 Manual)",
                              "1 (CLKin1 Manual)",
                              "2 (CLKin2 Manual)",
                              "3 (Pin Select Mode)",
                              "4 (Auto Mode)",
                              "5 (Reserved)",
                              "6 (Reserved)",
                              "7 (Reserved)" };
  cout << "    CLKin0 MUX : " << clkin_mux[fmc228->SpiRegisterValue(LMK04828,"CLKin_SEL_MODE")] << endl;
  cout << "    PLL1 R Delay : " << fmc228->SpiRegisterValue(LMK04828,"PLL1_R_DLY") << endl;
  const char *vco_mux[] = { "0 (VCO 0)", "1 (VCO 1)", "2 (CLKin1)", "3 (reserved)" };
  cout << "    VCO_MUX : " << vco_mux[fmc228->SpiRegisterValue(LMK04828,"VCO_MUX")] << endl;
  cout << "    OSCout_MUX : " << (fmc228->SpiRegisterValue(LMK04828,"OSCout_MUX")?" Buffered OSCin":"Feedback MUX") << endl;
  const char *osc_format[] = { "0 (Powerdown - CLKin2", "1 (LVDS)", "2 (Reserved)", "3 (Reserved)",
                               "4 (LVPECL 1600 mVpp)", "5 (LVPECL 2000 mVpp)", "6 (LVCMOS Norm/Inv)", "7 (LVCMOS Inv/Norm)",
                               "8 (LVCMOS Norm/Norm)", "9 (LVCMOS Inv/Inv)", "10 (LVCMOS Off/Norm)", "11 (LVCMOS Off/Inv)",
                               "12 (LVCMOS Norm/Off)", "13 (LVCMOS Inv/Off)", "14 (LVCMOS Off/Off)", "15 (Unknown)" };
  cout << "    OSCout_FMT : " << osc_format[fmc228->SpiRegisterValue(LMK04828,"OSCout_FMT")] << endl;
  cout << "    Input to PLL2 N Divider : " << (fmc228->SpiRegisterValue(LMK04828,"PLL2_NCLK_MUX")?"Feedback Mux":"PLL Prescaler") << endl;
  cout << "    Input to PLL1 N Divider : " << (fmc228->SpiRegisterValue(LMK04828,"PLL1_NCLK_MUX")?"Feedback Mux":"OSCin") << endl;
  const char *fb_mux[] = { "0 (DCLKout6)", "1 (DCLKout8)", "2 (SYSREF Divider)", "3 (External)" };
  cout << "    Feedback MUX : " << fb_mux[fmc228->SpiRegisterValue(LMK04828,"FB_MUX")] << " " << (fmc228->SpiRegisterValue(LMK04828,"FB_MUX_EN")?"enabled":"disabled") << endl;
  cout << "    Powerdown controls : " << endl;
  const char *pd_regs[] = { "PLL1_PD", "VCO_LDO_PD", "VCO_PD", "OSCin_PD", "SYSREF_GBL_PD", "SYSREF_PD", "SYSREF_DDLY_PD", "SYSREF_PLSR_PD" };
  for ( int i=0; i<8; i++ ) {
    cout << "      " << pd_regs[i] << " : " << fmc228->SpiRegisterValue(LMK04828,pd_regs[i]) << endl;
  }
  cout << "    Dynamic digital delays enabled :";
  for ( int i=0; i<7; i++ ) {
    char ddly_reg[16];
    sprintf( ddly_reg, "DDLYd%d_EN", 2*i );
    if ( fmc228->SpiRegisterValue(LMK04828,ddly_reg) ) {
      cout << " " << ddly_reg;
    }
  }
  if ( fmc228->SpiRegisterValue(LMK04828,"DDLYd_SYSREF_EN") ) {
    cout << "SYSREF outputs";
  }
  cout << endl;

  cout << "    SYSREF output : " << (fmc228->SpiRegisterValue(LMK04828,"SYSREF_CLKin0_MUX")?"CLKin0 Direct":"SYSREF mux") << endl;
  const char *sysref_src[] = { "0 (Normal SYNC)", "1 (Re-clocked)", "2 (SYSREF Pulser)", "3 (SYSREF Continuous)" };
  cout << "    SYSREF source : " << sysref_src[fmc228->SpiRegisterValue(LMK04828,"SYSREF_CLKin0_MUX")] << endl;
  

  cout << "    SYSREF clock divider : " << fmc228->SpiRegisterValue(LMK04828,"SYSREF_DIV[12:8]")*256+fmc228->SpiRegisterValue(LMK04828,"SYSREF_DIV[7:0]") << endl;
  cout << "    SYSREF delay : " << fmc228->SpiRegisterValue(LMK04828,"SYSREF_DDLY[12:8]")*256+fmc228->SpiRegisterValue(LMK04828,"SYSREF_DDLY[7:0]") << endl;
  cout << "    SYSREF Pulse count : " << (1<<fmc228->SpiRegisterValue(LMK04828,"SYSREF_PULSE_CNT")) << endl;
  double cdf = fin*pll1_n*pll2_pre*pll2_n/pll2_r;
  cout << "Clock distribution frequency : " << cdf << " MHz" << endl;
  for ( int i=0; i<7; i++ ) {
    char reg[80];
    sprintf( reg, "CLKout%d_%d_PD", 2*i, 2*i+1 );
    int pd = fmc228->SpiRegisterValue(LMK04828,reg);
    cout << "    DCLKout" << 2*i << " : " << (pd?"POWERDOWN":"enabled") << endl;

    sprintf( reg, "DCLKout%d_DIV", 2*i );
    int div = fmc228->SpiRegisterValue(LMK04828,reg);
    cout << "      DCLK Divisor : " << div << endl;
    sprintf( reg, "DCLKout%d_DDLY_CNTH", 2*i );
    int cnth = fmc228->SpiRegisterValue(LMK04828,reg);
    sprintf( reg, "DCLKout%d_DDLY_CNTL", 2*i );
    int cntl = fmc228->SpiRegisterValue(LMK04828,reg);
    cout << "      Digital delay : " << cnth << "/" << cntl << endl;
    cout << "      Output frequency : " << cdf/div << " MHz" << endl;

    sprintf( reg, "DCLKout%d_ADLY", 2*i );
    int adly = fmc228->SpiRegisterValue(LMK04828,reg);
    sprintf( reg, "DCLKout%d_ADLY_MUX", 2*i );
    int amux = fmc228->SpiRegisterValue(LMK04828,reg)*4;
    sprintf( reg, "DCLKout%d_MUX", 2*i );
    amux += fmc228->SpiRegisterValue(LMK04828,reg);
    const char *analog_mux[] = { "000 (divider only)",
                                 "001 (divider with duty cycle correction)",
                                 "010 (bypass)",
                                 "011 (analog delay + divider)",
                                 "100 (divider only)",
                                 "101 (divider with duty cycle correction)",
                                 "110 (bypass)",
                                 "111 (analog delay + divider with duty cycle correction)" };
    cout << "      Analog delay : " << analog_mux[amux] << endl;
    sprintf( reg, "CLKout%d_%d_IDL", 2*i, 2*i+1 );
    int idl = fmc228->SpiRegisterValue(LMK04828,reg);
    sprintf( reg, "CLKout%d_%d_ODL", 2*i, 2*i+1 );
    int odl = fmc228->SpiRegisterValue(LMK04828,reg);
    cout << "      Input/Output drive level : " << idl << "/" << odl << endl;
    sprintf( reg, "DCLKout%d_POL", 2*i );
    int pol = fmc228->SpiRegisterValue(LMK04828,reg);
    sprintf( reg, "DCLKout%d_FMT", 2*i );
    int fmt = fmc228->SpiRegisterValue(LMK04828,reg);
    const char *output_format[] = { "Powerdown", "LVDS", "HSDS 6 mA", "HSDS 8 mA",
                                    "HSDS 10 mA", "LVPECL 1600 mV", "LVPECL 2000 mV", "LCPECL" };
    cout << "      Output format : " << (pol?"inverted ":"normal ") << output_format[fmt] << endl;
    sprintf( reg, "DCLKout%d_HS", 2*i );
    int hs = fmc228->SpiRegisterValue(LMK04828,reg);
    cout << "      Half-step : " << hs << endl;
    sprintf( reg, "DCLKout%d_DDLY_PD", 2*i );
    pd = fmc228->SpiRegisterValue(LMK04828,reg);
    cout << "      Digital delay circuit : " << (pd?"powerdown":"enabled") << endl;
    sprintf( reg, "DCLKout%d_HSg_PD", 2*i );
    pd = fmc228->SpiRegisterValue(LMK04828,reg);
    cout << "      Glitchless half-step circuit : " << (pd?"powerdown":"enabled") << endl;
    sprintf( reg, "DCLKout%d_ADLYg_PD", 2*i );
    pd = fmc228->SpiRegisterValue(LMK04828,reg);
    cout << "      Glitchless analog delay circuit : " << (pd?"powerdown":"enabled") << endl;
    sprintf( reg, "DCLKout%d_ADLY_PD", 2*i );
    pd = fmc228->SpiRegisterValue(LMK04828,reg);
    cout << "      Analog delay circuit : " << (pd?"powerdown":"enabled") << endl;
   
    sprintf( reg, "CLKout%d_%d_PD", 2*i, 2*i+1 );
    pd = fmc228->SpiRegisterValue(LMK04828,reg);
    cout << "    SDCLKout" << 2*i+1 << " : " << (pd?"POWERDOWN":"enabled") << endl;
    sprintf( reg, "SDCLKout%d_POL", 2*i+1 );
    pol = fmc228->SpiRegisterValue(LMK04828,reg);
    sprintf( reg, "SDCLKout%d_FMT", 2*i+1 );
    fmt = fmc228->SpiRegisterValue(LMK04828,reg);
    cout << "      Output format : " << (pol?"inverted ":"normal ") << output_format[fmt] << endl;
    sprintf( reg, "SDCLKout%d_DDLY", 2*i+1 );
    int ddly = fmc228->SpiRegisterValue(LMK04828,reg);
    cout << "      Digital delay : " << ddly << endl;
    sprintf( reg, "SDCLKout%d_ADLY", 2*i+1 );
    adly = fmc228->SpiRegisterValue(LMK04828,reg);
    sprintf( reg, "SDCLKout%d_ADLY_EN", 2*i+1 );
    int mux = fmc228->SpiRegisterValue(LMK04828,reg);
    cout << "      Analog delay : " << adly << " (" << (adly?450+adly*150:0) << " ps) " << (mux?"enabled":"disabled") << endl;
    sprintf( reg, "SDCLKout%d_HS", 2*i+1 );
    hs = fmc228->SpiRegisterValue(LMK04828,reg);
    cout << "      Half-step : " << hs << endl;
    sprintf( reg, "SDCLKout%d_MUX", 2*i+1 );
    mux = fmc228->SpiRegisterValue(LMK04828,reg);
    cout << "      Output MUX : " << (mux?"SYSREF output":"Device clock output") << endl;
  }

  cout << "  HMC835 Phase-locked loop configuration:" << endl;
  int ld = fmc228->SpiRegisterValue(HMC835,"Lock Detect");
  cout << "    Lock detect : " << (ld?"locked":"NOT LOCKED") << endl;
  int k = fmc228->SpiRegisterValue(HMC835,"RF Divide Ratio");
  cout << "    RF divide ratio : ";
  if ( k == 0 ) {
    cout << "RF output off" << endl;
  }
  else if ( k == 1 ) {
    cout << "Fo" << endl;
  }
  else {
    cout << "Fo/" << (k&0x3e) << endl;
  }
  int mode = fmc228->SpiRegisterValue(HMC835,"Fractional Bypass")*2+
             fmc228->SpiRegisterValue(HMC835,"Delta Sigma Modulator Enable");
  cout << "    Fractional bypass : " << ((mode>>1)?"bypass modulator":"use modulator")  << endl;
  cout << "    DSM enable : " << ((mode&1)?"core enabled":"core disabled") << endl;
  cout << "    Integer/fractional mode : " << ((mode==1)?"fractional":"integer") << endl;
  int r = fmc228->SpiRegisterValue(HMC835,"rdiv");
  cout << "    Reference divider R : " << r << endl;
  int n = fmc228->SpiRegisterValue(HMC835,"Integer Setting");
  int f = fmc228->SpiRegisterValue(HMC835,"Fractional Setting");
  cout << "    Reference divider N : " << n;
  if ( mode == 1 ) {
    cout << "." << f << endl;
  }
  else {
    cout << endl;
  }
  fin = fin*pll1_n/clkin0_r;
  double fvco = fin/r*(n+(double)f/(1<<24));
  double fout = fvco/k;
  cout << "    Input frequency : " << fin << " MHz" << endl;
  cout << "    VCO frequency : " << fvco << " MHz" << endl;
  cout << "    Output frequency : " << fout << " MHz" << endl;
  for ( int i=0; i<2; i++ ) {
    cout << "  ADC " << i << " configuraiton:" << endl;
    int clk = fmc228->SpiRegisterValue(AD9234_0+i,"Clock status");
    cout << "    Clock status : " << ((clk&1)?"clock detected":"NO INPUT CLOCK DETECTED") << endl;
    int in = fmc228->SpiRegisterValue(AD9234_0+i,"Analog Input");
    cout << "    Analog input : " << (in?"enabled":"disabled") << endl;
    int term = fmc228->SpiRegisterValue(AD9234_0+i,"Input termination");
    const char *input_term[] = { "0000 (400 ohm)", "0001 (200 ohm)",
                                 "0010 (100 ohm)", "0011 (undefined)",
                                 "0100 (undefined)", "0101 (undefined)",
                                 "0110 (50 ohm)", "0111 (undefined)",
                                 "1000 (undefined)", "1001 (undefined)",
                                 "1010 (undefined)", "1011 (undefined)",
                                 "1100 (undefined)", "1101 (undefined)",
                                 "1110 (undefined)", "1111 (undefined)" };
    cout << "    Input termination : " << input_term[(term>>4)&0x0f] << endl;
    term = fmc228->SpiRegisterValue(AD9234_0+i,"Input buffer current control");
    cout << "    Input buffer current control : " << (1.0+0.5*((term>>4)&0x0f)) << "x buffer current" << endl;

    int fd = fmc228->SpiRegisterValue(AD9234_0+i,"Chip pin control");
    const char *pd_pin[] = { "00 (power down)", "01 (standby)",
                             "10 (disabled)", "11 (undefined)" };
    const char *fd_pin[] = { "000 (FD output)", "001 (JESD204b lMFC output)",
                             "010 (JESD204B internal SYNC~ output)",
                             "011 (undefined)",
                             "100 (undefined)",
                             "101 (undefined)",
                             "110 (undefined)",
                             "111 (disabled)" };
    cout << "    PDWN/STBY pin : " << pd_pin[(fd>>6)&3] << endl;
    cout << "    Fast detect A pin : " << fd_pin[(fd>>3)&7] << endl;
    cout << "    Fast detect B pin : " << fd_pin[fd&7] << endl;
    int div = fmc228->SpiRegisterValue(AD9234_0+i,"Clock divider");
    cout << "    Clock divider : divide by " << (1<<div) << endl;
    int phase = fmc228->SpiRegisterValue(AD9234_0+i,"Clock divider phase");
    cout << "    Clock divider phase : " << fixed << setprecision(1) << (0.5*phase) << " input clock cycles delayed" << endl;
    char delay = fmc228->SpiRegisterValue(AD9234_0+i,"Clock fine delay");
    cout << "    Clock fine delay : " << (150.0/87*delay) << " ps, ";
    delay = fmc228->SpiRegisterValue(AD9234_0+i,"Clock delay control");
    cout << (delay?"enabled":"disabled") << endl;
    int out = fmc228->SpiRegisterValue(AD9234_0+i,"Output mode");
    cout << "    Output mode : " << ((out&0x02)?"inverted":"non-inverted") << ", " << ((out&0x01)?"twos compliment":"offset binary") << endl;
    const char *ccbit[] = { "000 (low)", "001 (overrange)",
                            "010 signal monitor", "011 (fast detect)",
                            "100 (undefined)", "101 (SYSREF+-)",
                            "110 (undefined)", "111 (undefined)" };
    out = fmc228->SpiRegisterValue(AD9234_0+i,"Output mode control 1");
    cout << "    Converter control bit 0 : " << ccbit[out&7] << endl;
    cout << "    Converter control bit 1 : " << ccbit[(out>>4)&7] << endl;
    out = fmc228->SpiRegisterValue(AD9234_0+i,"Output mode control 2");
    cout << "    Converter control bit 2 : " << ccbit[out&7] << endl;
    cout << "    JESD204B link parameters:" << endl;
    out = fmc228->SpiRegisterValue(AD9234_0+i,"Output channel select");
    cout << "    Converter channel swap : " << (out&1) << endl;
    int user = fmc228->SpiRegisterValue(AD9234_0+i,"ADC test modes");
    cout << "    User pattern selection: " << ((user&0x80)?"single pattern":"continuous") << endl;
    cout << "    Reset PN long : " << ((user&0x20)?"long PN reset":"long PN enable") << endl;
    cout << "    Reset PN short : " << ((user&0x10)?"short PN reset":"short PN enable") << endl;
    const char *test_modes[] = { "0000 (off, normal operation)",
                                 "0001 (midscaoe short)",
                                 "0010 (positive full scale)",
                                 "0011 (negative full scale)",
                                 "0100 (altnernating checker board)",
                                 "0101 (PN sequence, long)",
                                 "0110 (PN sequence, short)",
                                 "0111 (1/0 word toggle)",
                                 "1000 (user pattern)",
                                 "1001 (undefined)",
                                 "1010 (undefined)",
                                 "1011 (undefined)",
                                 "1100 (undefined)",
                                 "1101 (undefined)",
                                 "1110 (undefined)",
                                 "1111 (ramp output)" };
    cout << "    Test mode selection : " << test_modes[user&0x0f] << endl;
    user = fmc228->SpiRegisterValue(AD9234_0+i,"User pattern 1 LSB")|
           fmc228->SpiRegisterValue(AD9234_0+i,"User pattern 1 MSB")<<8;
    cout << "    User pattern 1 : 0x" << setw(4) << setfill('0') << hex << user << dec << endl;
    user = fmc228->SpiRegisterValue(AD9234_0+i,"User pattern 2 LSB")|
           fmc228->SpiRegisterValue(AD9234_0+i,"User pattern 2 MSB")<<8;
    cout << "    User pattern 2 : 0x" << setw(4) << setfill('0') << hex << user << dec << endl;
    user = fmc228->SpiRegisterValue(AD9234_0+i,"User pattern 3 LSB")|
           fmc228->SpiRegisterValue(AD9234_0+i,"User pattern 3 MSB")<<8;
    cout << "    User pattern 3 : 0x" << setw(4) << setfill('0') << hex << user << dec << endl;
    user = fmc228->SpiRegisterValue(AD9234_0+i,"User pattern 4 LSB")|
           fmc228->SpiRegisterValue(AD9234_0+i,"User pattern 4 MSB")<<8;
    cout << "    User pattern 4 : 0x" << setw(4) << setfill('0') << hex << user << dec << endl;

    int f = fmc228->SpiRegisterValue(AD9234_0+i,"JESD204B F config")+1;
    int k = (fmc228->SpiRegisterValue(AD9234_0+i,"JESD204B K config")&0x1f)+1;
    int m = fmc228->SpiRegisterValue(AD9234_0+i,"JESD204B M config")+1;
    int n1 = (fmc228->SpiRegisterValue(AD9234_0+i,"JESD204B N' config")&0x1f)+1;
    int s = (fmc228->SpiRegisterValue(AD9234_0+i,"JESD204B S config")&0x1f)+1;
    int csn = fmc228->SpiRegisterValue(AD9234_0+i,"JESD204B CS/N config");
    int l = 4;
    double fout = 1.000;
    double lane_line_rate = fout*m*n1*10.0/8.0/l;
    int lmc1 = fmc228->SpiRegisterValue(AD9234_0+i,"JESD204B link mode control 1"); 
    int lmc2 = fmc228->SpiRegisterValue(AD9234_0+i,"JESD204B link mode control 2"); 
    int lmc3 = fmc228->SpiRegisterValue(AD9234_0+i,"JESD204B link mode control 3"); 
    int lmc4 = fmc228->SpiRegisterValue(AD9234_0+i,"JESD204B link mode control 4");
    cout << "    Link mode control: " << endl;
    cout << "      Standby = " << ((lmc1>>7)&1) << endl;
    cout << "      Tail bit enable = " << ((lmc1>>6)&1) << endl;
    cout << "      Long transport layer test = " << ((lmc1>>5)&1) << endl;
    cout << "      Lane synchronization = " << ((lmc1>>4)&1) << endl;
    cout << "      ILAS sequence mode = " << ((lmc1>>3)&3) << endl;
    cout << "      FACI = " << ((lmc1>>1)&1) << endl;
    cout << "      Power down = " << (lmc1&1) << endl;
    cout << "      SYNCINB+- pin control = " << ((lmc2>>7)&1) << endl;
    cout << "      SYNCINB+- pin invert = " << ((lmc2>>6)&1) << endl;
    cout << "      SYNCINB+- pin type = " << ((lmc2>>5)&1) << endl;
    cout << "      8B/10B bypass = " << ((lmc2>>2)&1) << endl;
    cout << "      8B/10B invert = " << ((lmc2>>1)&1) << endl;
    cout << "      CHKSUM mode = " << ((lmc3>>6)&3) << endl;
    cout << "      Test inject point = " << ((lmc3>>4)&3) << endl;
    cout << "      JESD204B test mode patterns = " << (lmc3&f) << endl;
    cout << "      ILAS delay = " << ((lmc4>>4)&f) << endl;
    cout << "    Link layer test mode = " << (lmc4&7) << endl;
    cout << "    Lanes per link (L) = " << l << endl;
    cout << "    Converters per link (M) = " << m << endl;
    cout << "    Octets per frame (F) = " << f << endl;
    cout << "    Bits per sample (N') = " << n1 << endl;
    cout << "    Control bits (CS) per sample = " << (csn&0xc0>>6) << endl;
    cout << "    ADC converter resolution (N) = " << (csn&0x3f)+1 << " bits" << endl;
    cout << "    Lane line rate = " << lane_line_rate << " GBPS" << endl;
    int deemphasis_select = fmc228->SpiRegisterValue(AD9234_0+i,"De-emphasis select");
    double idrive = fmc228->SpiRegisterValue(AD9234_0+i,"JESD204B serializer drive adjust");
    
    cout << "    JESD serializer drive adjust: " << 237.5+12.5*idrive << " mV" << endl;
    const double db[] = { 0.0, 0.3, 0.8, 1.4, 2.2, 3.0, 4.0, 4.0 };
    int ipd = fmc228->SpiRegisterValue(AD9234_0+i,"JESD204B lane power-down");
    cout << "    JESD204B lane configuration:" << endl;
    for ( int j=0; j<4; j++ ) {
      char register_name[64];
      sprintf( register_name, "JESD204B lane SERDOUT%d+- assign", j );
      int ilane = fmc228->SpiRegisterValue(AD9234_0+i,register_name)&0x07;
      cout << "    Lane " << j << " --> logical lane " << ilane << ",";
      if ( (ipd&(1<<(2*j))) ) {
        cout << " POWERED DOWN!!!" << endl;
      }
      else {
        cout << " powered up." << endl;
      }
      sprintf( register_name, "De-emphasis setting for SERDOUT%d+-", j );
      int idb = fmc228->SpiRegisterValue(AD9234_0+i,register_name);
      cout << "      De-emphasis: " << db[idb] << " db";
      if ( (deemphasis_select&(1<<2*j)) ) {
        cout << " (enabled)";
      }
      else {
        cout << " (disabled)";
      }
      cout << endl;
    }
  }
}
