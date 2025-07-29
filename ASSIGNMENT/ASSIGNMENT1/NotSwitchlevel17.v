module cmos_inverter(input a,output b);
    supply1 vdd;
    supply0 gnd;
  
  pmos(b,vdd,a);
  nmos(b,gnd,a);
                          
endmodule
