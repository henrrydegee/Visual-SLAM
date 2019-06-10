set term postscript eps enhanced color
set output "avg_trl.eps"
set size ratio 0.5
set yrange [0:*]
set xlabel "Path Length [m]"
set ylabel "Translation Error [%]\nRotation Error [deg/100m]"
plot "avg_tl.txt" using 1:($2*100) title 'Translation Error' lc rgb "#FF0000" pt 4 w linespoints,"avg_rl.txt" using 1:($2*57.3*100) title 'Rotation Error' lc rgb "#0000FF" pt 4 w linespoints
