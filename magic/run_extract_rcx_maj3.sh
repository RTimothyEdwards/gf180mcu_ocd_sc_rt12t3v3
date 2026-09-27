#!/bin/sh
#
# Run full R-C extraction on the majority-3 cell layout, which
# has a known issue with two nets getting disconnected in the netlist.
#
# NOTE: Previous error with disconnected net "A" has been resolved by
# the hack method of detecting it and attaching it to a random node.
# However, the net a_208_231r# is still disconnected from the rest of
# the network (a_208_231r.*) and is not caught.
# Best guess:  The split node is going unnoticed at some point in
# "extresist" such that it doesn't even get handled as an error.
#
#     extracts the layout into ../netlist/rcx/<cellname>.spice
#
echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=gf180mcuD} > /dev/null
mkdir -p ../netlist/rcx

for filename in ../magic/*maj*.mag; do
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
	# Keep outputs for diagnostics
	# rm ${cellname}.ext
	# rm ${cellname}.res.ext
    fi
done
echo "Done!"
