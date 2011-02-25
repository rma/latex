set terminal postscript eps enhanced solid color rounded 32 \
    fontfile 'jrhand.pfa' "Jrhand"

# line styles for plots
set style line 1 lw 8 lc rgbcolor "#f0dfaf"
set style line 2 lw 8 lc rgbcolor "#8fb28f"
set style line 3 lw 8 lc rgbcolor "#8cd0d3"
set style line 4 lw 8 lc rgbcolor "#cc9393"
set style line 5 lw 8 lc rgbcolor "#dfaf8f"

# line style for axes and text colour for legends
set style line 7 lw 2 lc rgbcolor "#dcdccc"
set key textcolor rgbcolor "#dcdccc"

# set the axes to use the desired linestyle
set border ls 7

set xrange [-1:1]
set yrange [0:1]

#set xtics -1,1
#set ytics 0,1

set output 'experiments.eps'
plot x*x       title "x^2"   w lines ls 1,\
     x         title "x"     w lines ls 2,\
     -x        title "-x"    w lines ls 3,\
     1-(x * x) title "1-x^2" w lines ls 4
