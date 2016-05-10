# !/bin/bash
echo $1
inkscape --verb=ObjectToPath --select=EditSelectAll --export-plain-svg=/tmp/$1.svg $1
./svgtoipe.py /tmp/$1.svg $2
rm /tmp/$1.svg
