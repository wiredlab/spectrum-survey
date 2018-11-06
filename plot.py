#!/usr/bin/env python3


import csv

import numpy as np
from matplotlib import pyplot as plt



plt.close('all')



plt.figure(figsize=(10,5))


for infile in ('850-950.csv', '900-930.csv'):
    d = np.loadtxt(infile, delimiter=',')

    f = d[:, 0] / 1e6
    mag = d[:, 1]
    plt.plot(f, mag)

plt.grid(True)
plt.xlabel('Frequency (MHz)')
plt.ylabel('dB (arbitrary reference)')
plt.xticks(np.arange(850, 950, step=5), rotation=45)
plt.title('Spectrum survey\nAverage power')

plt.savefig('average_850-950.pdf')




plt.figure(figsize=(10, 5))
infile = '900-930.csv'
d = np.loadtxt(infile, delimiter=',')

f = d[:, 0] / 1e6
mag = d[:, 1]
plt.plot(f, mag)

plt.grid(True)
plt.xlabel('Frequency (MHz)')
plt.ylabel('dB (arbitrary reference)')
plt.xticks(np.arange(900, 931, step=5), rotation=45)
plt.title('Spectrum survey\nAverage power')

plt.savefig('average_900-930.pdf')
