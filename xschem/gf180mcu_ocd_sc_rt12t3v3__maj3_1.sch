v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 -230 200 -210 { lab=#net1}
N 200 -150 200 -110 { lab=#net2}
N 200 -50 200 -20 { lab=VSS}
N 200 -180 210 -180 { lab=VSS}
N 200 -80 220 -80 { lab=VSS}
N 140 -180 160 -180 { lab=C}
N 140 -80 160 -80 { lab=A}
N 400 -150 400 -110 { lab=#net3}
N 400 -50 400 -20 { lab=VSS}
N 400 -180 410 -180 { lab=VSS}
N 400 -80 420 -80 { lab=VSS}
N 340 -180 360 -180 { lab=C}
N 340 -80 360 -80 { lab=B}
N 200 -340 200 -320 { lab=#net4}
N 400 -340 400 -320 { lab=#net5}
N 200 -260 200 -230 { lab=#net1}
N 400 -260 400 -230 { lab=#net1}
N 200 -420 200 -400 { lab=VDD}
N 400 -420 400 -400 { lab=VDD}
N 200 -370 220 -370 { lab=VDD}
N 200 -290 220 -290 { lab=VDD}
N 400 -290 420 -290 { lab=VDD}
N 400 -370 420 -370 { lab=VDD}
N 140 -290 160 -290 { lab=C}
N 140 -370 160 -370 { lab=B}
N 850 -250 850 -210 { lab=Y}
N 770 -280 810 -280 { lab=#net1}
N 770 -280 770 -180 { lab=#net1}
N 770 -180 810 -180 { lab=#net1}
N 850 -280 870 -280 { lab=VDD}
N 850 -180 870 -180 { lab=VSS}
N 850 -150 850 -130 { lab=VSS}
N 850 -330 850 -310 { lab=VDD}
N 330 -370 360 -370 { lab=A}
N 330 -290 360 -290 { lab=C}
N 400 -260 400 -210 { lab=#net1}
N 200 -230 400 -230 { lab=#net1}
N 850 -230 940 -230 {lab=Y}
N 630 -150 630 -110 { lab=#net6}
N 630 -50 630 -20 { lab=VSS}
N 630 -180 640 -180 { lab=VSS}
N 630 -80 650 -80 { lab=VSS}
N 570 -180 590 -180 { lab=A}
N 570 -80 590 -80 { lab=B}
N 630 -340 630 -320 { lab=#net7}
N 630 -260 630 -230 { lab=#net1}
N 630 -420 630 -400 { lab=VDD}
N 630 -290 650 -290 { lab=VDD}
N 630 -370 650 -370 { lab=VDD}
N 560 -370 590 -370 { lab=B}
N 560 -290 590 -290 { lab=A}
N 630 -260 630 -210 { lab=#net1}
N 400 -230 630 -230 {lab=#net1}
N 630 -230 770 -230 {lab=#net1}
C {gnd.sym} 200 -20 0 0 {name=l3 lab=VSS}
C {symbols/nfet_03v3.sym} 180 -180 0 0 {name=M1 L=0.28u W=1.02u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {symbols/nfet_03v3.sym} 180 -80 0 0 {name=M2 L=0.28u W=1.02u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {lab_wire.sym} 210 -180 2 0 {name=l6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 220 -80 2 0 {name=l7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 140 -180 0 0 {name=l8 sig_type=std_logic lab=C}
C {lab_wire.sym} 340 -80 0 0 {name=l9 sig_type=std_logic lab=B}
C {gnd.sym} 400 -20 0 0 {name=l1 lab=VSS}
C {symbols/nfet_03v3.sym} 380 -180 0 0 {name=M3 L=0.28u W=1.02u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {symbols/nfet_03v3.sym} 380 -80 0 0 {name=M4 L=0.28u W=1.02u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {lab_wire.sym} 410 -180 2 0 {name=l2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 420 -80 2 0 {name=l4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 340 -180 0 0 {name=l5 sig_type=std_logic lab=C}
C {lab_wire.sym} 140 -80 0 0 {name=l10 sig_type=std_logic lab=A}
C {symbols/pfet_03v3.sym} 180 -370 0 0 {name=M5 L=0.28u W=2.57u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {symbols/pfet_03v3.sym} 180 -290 0 0 {name=M6 L=0.28u W=2.57u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {symbols/pfet_03v3.sym} 380 -370 0 0 {name=M7 L=0.28u W=2.57u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {symbols/pfet_03v3.sym} 380 -290 0 0 {name=M8 L=0.28u W=2.57u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {vdd.sym} 200 -420 0 0 {name=l11 lab=VDD}
C {vdd.sym} 400 -420 0 0 {name=l12 lab=VDD}
C {lab_wire.sym} 220 -370 2 0 {name=l13 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 220 -290 2 0 {name=l14 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 420 -290 2 0 {name=l15 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 420 -370 2 0 {name=l16 sig_type=std_logic lab=VDD
}
C {symbols/nfet_03v3.sym} 830 -180 0 0 {name=M11 L=0.28u W=1.02u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {symbols/pfet_03v3.sym} 830 -280 0 0 {name=M12 L=0.28u W=2.57u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {lab_wire.sym} 870 -280 2 0 {name=l23 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 870 -180 2 0 {name=l24 sig_type=std_logic lab=VSS}
C {gnd.sym} 850 -130 0 0 {name=l25 lab=VSS}
C {vdd.sym} 850 -330 0 0 {name=l26 lab=VDD}
C {lab_wire.sym} 330 -290 0 0 {name=l29 sig_type=std_logic lab=C
}
C {ipin.sym} 330 -370 0 0 {name=p1 lab=A}
C {ipin.sym} 140 -370 0 0 {name=p2 lab=B}
C {opin.sym} 940 -230 0 0 {name=p3 lab=Y}
C {ipin.sym} -30 -60 0 0 {name=p4 lab=VDD}
C {ipin.sym} -30 -30 0 0 {name=p5 lab=VSS}
C {lab_wire.sym} 570 -80 0 0 {name=l17 sig_type=std_logic lab=B}
C {gnd.sym} 630 -20 0 0 {name=l18 lab=VSS}
C {symbols/nfet_03v3.sym} 610 -180 0 0 {name=M9 L=0.28u W=1.02u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {symbols/nfet_03v3.sym} 610 -80 0 0 {name=M10 L=0.28u W=1.02u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {lab_wire.sym} 640 -180 2 0 {name=l19 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 650 -80 2 0 {name=l20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 570 -180 0 0 {name=l21 sig_type=std_logic lab=A}
C {symbols/pfet_03v3.sym} 610 -370 0 0 {name=M13 L=0.28u W=2.57u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {symbols/pfet_03v3.sym} 610 -290 0 0 {name=M14 L=0.28u W=2.57u m=1 nf=1 ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'" as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'" nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {vdd.sym} 630 -420 0 0 {name=l22 lab=VDD}
C {lab_wire.sym} 650 -290 2 0 {name=l27 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 650 -370 2 0 {name=l28 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 560 -290 0 0 {name=l31 sig_type=std_logic lab=A
}
C {ipin.sym} 140 -290 0 0 {name=p6 lab=C}
C {lab_wire.sym} 560 -370 0 0 {name=l32 sig_type=std_logic lab=B}
