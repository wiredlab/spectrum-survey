#!/bin/bash

# Script to continuously alternate between two spectrum scanner settings

RANGELO="850M"
RANGEHI="950M"
RANGELO2="900M"
RANGEHI2="930M"
BIN="100k"
BIN2="10k"
INT="10"
GAIN="30"
CROP="30"
RUNFOR="1200"


cd /home/pi/spectrum_scan

while [ 1 ]; do
    outfile="$(date -u -Is)_${RANGELO}_${RANGEHI}_${BIN}_i${INT}_g${GAIN}_c${CROP}"
    echo $outfile
    rtl_power \
        -f "$RANGELO":"$RANGEHI":"$BIN" \
        -i "$INT" \
        -g "$GAIN" \
        -c "$CROP"% \
        -e "$RUNFOR" \
        > "$outfile".csv

    outfile="$(date -u -Is)_${RANGELO2}_${RANGEHI2}_${BIN2}_i${INT}_g${GAIN}_c${CROP}"
    echo $outfile
    rtl_power \
        -f "$RANGELO2":"$RANGEHI2":"$BIN2" \
        -i "$INT" \
        -g "$GAIN" \
        -c "$CROP"% \
        -e "$RUNFOR" \
        > "$outfile".csv
done

# vim: sw=4
