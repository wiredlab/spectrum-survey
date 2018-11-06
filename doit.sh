#!/bin/bash


CSV="$1"
PNG="$(basename $CSV .csv).png"

python ../heatmap.py $CSV $PNG
