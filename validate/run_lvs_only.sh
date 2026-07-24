#!/bin/sh
#
# Run LVS on all standard cells
# Assumes that netlists have already been extracted
# Runs LVS and produces <cellname>_comp.out
#
echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=gf180mcuD} > /dev/null

for filename in ../magic/gf180mcu_ocd_sc_*.mag; do
    if [ -f "$filename" ]; then
	cellname=$(basename "$filename" .mag)
        echo "Running LVS on: $cellname"
	netgen -noconsole << EOF
	lvs "../netlist/layout/${cellname}.spice ${cellname}" "../netlist/schematic/${cellname}.spice ${cellname}" ${PDK_ROOT}/${PDK}/libs.tech/netgen/${PDK}_setup.tcl ${cellname}_comp.out
EOF
    fi
done
echo "Done!"

