#!/bin/bash
#
# Run lctime on all the R-C extracted standard cell layouts.
#

echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=gf180mcuD} > /dev/null
libname=gf180mcu_ocd_sc_rt12t3v3

# for filename in ../netlist/rcx/*.spice; do
for filename in ../magic/*.mag; do
    cellname=$(basename "$filename" .mag)
    if [[ $cellname == *__ant || $cellname == *__decap* ||  $cellname == *__fill* ]]; then
	continue
    fi
    if [ -f "$filename" ]; then
	echo "Cell to characterize: ${cellname}"
    fi
done
echo "Done!"
exit 0

