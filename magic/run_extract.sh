#!/bin/sh
#
# Run extraction on all standard cell layouts
#     extracts the layout into ../netlist/layout/<cellname>.spice
#
export PDK_ROOT=${PDK_ROOT:-/usr/share/pdk}
export PDK=${PDK:-gf180mcuD}
mkdir -p ../netlist/layout

for filename in ../magic/*.mag; do
    if [ -f "$filename" ]; then
	cellname=$(basename "$filename" .mag)
        echo "Running extraction on: ${cellname}.mag"
	magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
	load ../magic/${cellname}
	extract do local
	extract all
	ext2spice lvs
	ext2spice -o ../netlist/layout/${cellname}.spice
EOF
	rm ${cellname}.ext
    fi
done
echo "Done!"
