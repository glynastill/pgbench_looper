# Gnuplot script file for plotting pgbench data in csv file pgbench_looper.sh
# Filename: pgbench_looper.p
# Usage: gnuplot -e "filename='test-20130407_16-26.csv'" pgbench_looper.p -persist
#        gnuplot -e "filename='test-20130407_16-26.csv' outfilename='test-20130407_16-26.png'" pgbench_looper.p

if (!exists("filename")) filename='pgbench_looper.csv'
if (exists("outfilename")) set terminal png truecolor giant; set output outfilename
set datafile separator ","
set logscale y
set mxtics 10
set mytics 10 
set grid xtics mxtics ytics mytics
set style line 11 lc rgb '#808080' lt 1
set border 3 back ls 11
set tics nomirror
set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12
set style line 1 lc rgb '#8b1a0e' pt 1 ps 1 lt 1 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 6 ps 1 lt 1 lw 2 # --- green
set style line 3 lc rgb '#003399' pt 1 ps 1 lt 1 lw 2 # --- blue
plot filename every ::2::97 using 5:7 smooth unique with lines title 'Read Only', \
filename every ::98::193 using 5:7 smooth unique with lines title 'Read Write', \
filename every ::194::298 using 5:7 smooth unique with lines title 'Custom'
