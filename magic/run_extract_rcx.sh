#!/bin/sh
#
# Run full R-C extraction on all standard cell layouts
#     extracts the layout into ../netlist/rcx/<cellname>.spice
#
echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=gf180mcuD} > /dev/null
mkdir -p ../netlist/rcx

for filename in ../magic/*.mag; do
    if [ -f "$filename" ]; then
	cellname=$(basename "$filename" .mag)
        echo "Running extraction on: ${cellname}.mag"
	magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
	load ../magic/${cellname}
	extresist threshold 1000
	extresist mindelay 0
	extract do local
	extract do resistance
	select top cell
	extract all
	ext2spice lvs
	ext2spice cthresh 0.1
	ext2spice extresist on
	ext2spice -o ../netlist/rcx/${cellname}.spice
EOF
	rm ${cellname}.ext
	rm ${cellname}.res.ext
    fi
done
echo "Done!"
