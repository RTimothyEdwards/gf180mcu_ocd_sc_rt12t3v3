#!/bin/bash
#
# Run lctime on all the R-C extracted standard cell layouts.
#

echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=gf180mcuD} > /dev/null
libname=gf180mcu_ocd_sc_rt12t3v3

for filename in ../netlist/rcx/*.spice; do
    if [ -f "$filename" ]; then
	cellname=$(basename "$filename" .spice)
	if [[ $cellname == *__ant || $cellname == *__decap* || $cellname == *__fill* ]]; then
	    continue
	fi
	echo "Running lctime on ${cellname}"
	if [[ $cellname == *__df* || $cellname == *__dl* ]]; then
	    lctime --liberty template_tt.lib \
		--include "${PDK_ROOT}/${PDK}/libs.tech/ngspice/design.ngspice" \
		--library "${PDK_ROOT}/${PDK}/libs.tech/ngspice/sm141064.ngspice typical" \
		--output-loads "0.000500, 0.002000, 0.009000, 0.030000, 0.080000, 0.300000, 0.637000" \
		--slew-times "0.010000, 0.023000, 0.053000, 0.122000, 0.280000, 0.650000, 1.500000" \
		--related-pin-transition "0.01, 0.5, 1.5" \
		--spice ../netlist/rcx/${cellname}.spice \
		--cell ${cellname} \
		--output ../lib/${cellname}.lib
	fi
    fi
done
echo "Done!"
exit 0
