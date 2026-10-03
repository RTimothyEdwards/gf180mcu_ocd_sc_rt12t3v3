#!/bin/sh
#
# Run GDS and LEF generation on all layouts
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
	gds write ../gds/${cellname}.gds
	lef write ../lef/${cellname}.lef
	quit -noprompt
EOF
    fi
done
echo "Done!"
