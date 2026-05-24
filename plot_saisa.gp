set datafile separator "|"

set terminal pngcairo size 1200,700 enhanced font "Arial,12"
set output "grafik_saisa_garis.png"

set title "Grafik Respon LED dan Buzzer terhadap Suhu LM35"
set xlabel "Time / Kondisi Suhu"
set ylabel "Output (%)"

set grid
set xrange [1:5]
set yrange [-10:110]

set xtics ("25C" 1, "45C" 2, "55C" 3, "65C" 4, "75C" 5)
set ytics 0,20,100

set key outside right

plot "TimeTempLEDHijauLEDOrange.txt" every ::1 using 1:3 with linespoints linewidth 2 pointsize 1.5 title "LED Hijau", \
     "TimeTempLEDHijauLEDOrange.txt" every ::1 using 1:4 with linespoints linewidth 2 pointsize 1.5 title "LED Orange", \
     "TimeTempLEDHijauLEDOrange.txt" every ::1 using 1:5 with linespoints linewidth 2 pointsize 1.5 title "LED Merah", \
     "TimeTempLEDHijauLEDOrange.txt" every ::1 using 1:6 with linespoints linewidth 2 pointsize 1.5 title "Buzzer"