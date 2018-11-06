 #!/bin/bash

unzip -u data-3.zip


cat data-3/2018*850M*.csv > data-3/850M_950M.csv
cat data-3/2018*900M*.csv > data-3/900M_930M.csv


./flatten.py data-3/850M_950M.csv > 850-950.csv
./flatten.py data-3/900M_930M.csv > 900-930.csv

./heatmap.py data-3/850M_950M.csv 850-950.png
./heatmap.py data-3/900M_930M.csv 900-930.png


./plot.py
