#!/bin/bash

 FMT_BEGIN='20110205 0000'
 FMT_END='20110205 0200'
 FMT_X_SHOW='%H: %M'


graficar()
 {
 gnuplot 
 set xdata time
 set timefmt "%Y%m%d%H%M"
 set xrange ["$FMT_BEGIN" : "$FMT_END"]
 set format x "$FMT_X_SHOW"

 set terminal png
 set output 'fig3.png'
 plot "graf-0.dat" using 1:3 with lines title "sensor1", "graf-0.dat" using 1:4 with linespoints title "sensor2"

 }



