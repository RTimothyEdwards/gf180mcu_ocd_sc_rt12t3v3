v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 -730 -130 -700 { lab=VDD}
N -130 -640 -130 -610 { lab=SN}
N -130 -610 -130 -570 { lab=SN}
N -130 -510 -130 -480 { lab=VSS}
N -190 -670 -170 -670 { lab=S}
N -210 -670 -210 -540 { lab=S}
N -230 -610 -210 -610 { lab=S}
N -210 -670 -190 -670 { lab=S}
N -210 -540 -170 -540 { lab=S}
N -130 -670 -100 -670 { lab=VDD}
N -130 -540 -100 -540 { lab=VSS}
N 520 -370 520 -340 { lab=VDD}
N 520 -280 520 -250 { lab=Y}
N 520 -250 520 -210 { lab=Y}
N 520 -150 520 -120 { lab=VSS}
N 460 -310 480 -310 { lab=#net1}
N 440 -310 440 -180 { lab=#net1}
N 440 -310 460 -310 { lab=#net1}
N 440 -180 480 -180 { lab=#net1}
N 520 -310 550 -310 { lab=VDD}
N 520 -180 550 -180 { lab=VSS}
N 520 -240 590 -240 {lab=Y}
N 40 -400 40 -350 {lab=#net2}
N 240 -400 240 -350 {lab=#net2}
N 240 -510 240 -460 {lab=VDD}
N 40 -510 240 -510 {lab=VDD}
N 40 -510 40 -460 {lab=VDD}
N 40 -380 240 -380 {lab=#net2}
N 40 -290 40 -250 {lab=#net1}
N 40 -250 440 -250 {lab=#net1}
N 240 -290 240 -250 {lab=#net1}
N -30 -430 -0 -430 {lab=A}
N 40 -190 240 -190 {lab=#net3}
N 40 -100 240 -100 {lab=#net4}
N 40 -320 240 -320 {lab=#net5}
N 40 -430 240 -430 {lab=VDD}
N -30 -320 -0 -320 {lab=B}
N -30 -190 0 -190 {lab=B}
N -30 -100 0 -100 {lab=S}
N 280 -100 310 -100 {lab=SN}
N 280 -190 310 -190 {lab=A}
N 280 -320 310 -320 {lab=S}
N 280 -430 310 -430 {lab=SN}
N 40 -70 40 -30 {lab=VSS}
N 40 -30 240 -30 {lab=VSS}
N 240 -70 240 -30 {lab=VSS}
N 40 -160 40 -130 {lab=#net6}
N 240 -160 240 -130 {lab=#net7}
N 240 -250 240 -220 {lab=#net1}
N 40 -250 40 -220 {lab=#net1}
C {symbols/pfet_03v3.sym} -150 -670 0 0 {name=M1 L=0.28u W=2.57u m=1 nf=2 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {symbols/nfet_03v3.sym} -150 -540 0 0 {name=M2 L=0.28u W=1.02u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {lab_wire.sym} -100 -670 2 0 {name=l2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} -100 -540 2 0 {name=l4 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} -130 -610 2 0 {name=l9 sig_type=std_logic lab=SN
}
C {ipin.sym} -30 -430 0 0 {name=p1 lab=A}
C {ipin.sym} -30 -320 0 0 {name=p2 lab=B}
C {ipin.sym} -230 -610 0 0 {name=p3 lab=S}
C {opin.sym} 590 -240 0 0 {name=p4 lab=Y}
C {ipin.sym} -160 0 0 0 {name=p5 lab=VDD}
C {ipin.sym} -160 30 0 0 {name=p6 lab=VSS}
C {symbols/pfet_03v3.sym} 500 -310 0 0 {name=M3 L=0.28u W=2.57u m=1 nf=2 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {symbols/nfet_03v3.sym} 500 -180 0 0 {name=M4 L=0.28u W=1.02u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {lab_wire.sym} 550 -310 2 0 {name=l7 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 550 -180 2 0 {name=l8 sig_type=std_logic lab=VSS
}
C {symbols/pfet_03v3.sym} 20 -430 0 0 {name=M5 L=0.28u W=2.57u m=1 nf=2 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {symbols/pfet_03v3.sym} 20 -320 0 0 {name=M6 L=0.28u W=2.57u m=1 nf=2 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {symbols/pfet_03v3.sym} 260 -430 0 1 {name=M7 L=0.28u W=2.57u m=1 nf=2 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {symbols/pfet_03v3.sym} 260 -320 0 1 {name=M8 L=0.28u W=2.57u m=1 nf=2 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {symbols/nfet_03v3.sym} 20 -190 0 0 {name=M9 L=0.28u W=1.02u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {symbols/nfet_03v3.sym} 260 -190 0 1 {name=M10 L=0.28u W=1.02u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {symbols/nfet_03v3.sym} 260 -100 0 1 {name=M11 L=0.28u W=1.02u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {symbols/nfet_03v3.sym} 20 -100 0 0 {name=M12 L=0.28u W=1.02u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {lab_pin.sym} -30 -190 0 0 {name=p7 sig_type=std_logic lab=B}
C {lab_pin.sym} 310 -190 0 1 {name=p8 sig_type=std_logic lab=A}
C {lab_pin.sym} 310 -320 0 1 {name=p9 sig_type=std_logic lab=S}
C {lab_pin.sym} 310 -430 0 1 {name=p10 sig_type=std_logic lab=SN}
C {lab_pin.sym} 310 -100 0 1 {name=p11 sig_type=std_logic lab=SN}
C {lab_pin.sym} -30 -100 0 0 {name=p12 sig_type=std_logic lab=S}
C {lab_pin.sym} 40 -30 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 40 -510 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -130 -730 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 520 -370 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 520 -120 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -130 -480 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 160 -430 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 160 -320 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 160 -190 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 160 -100 0 0 {name=p22 sig_type=std_logic lab=VSS}
