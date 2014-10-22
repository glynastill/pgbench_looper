pgbench_looper
==============

Basic shell script to loop around and run pgbench with different workloads, 
outputs log file with machine specifics and csv file with data that can be 
plotted as required. Gnuplot script and excel sheet included to graph output.

Usage
-----

Edit the variables at the top of the script to suit, then run.

$ ./pgbench_looper.sh

Graphing output
---------------

### Gnuplot ###

$ gnuplot -e "filename='test-20130407_16-26.csv'" pgbench_looper.p -persist
$ gnuplot -e "filename='test-20130407_16-26.csv'; outfilename='test-20130407_16-26.png'" pgbench_looper.p

### Excel ###

Cut n' paste into excel worksheet, refresh pivot table tab.