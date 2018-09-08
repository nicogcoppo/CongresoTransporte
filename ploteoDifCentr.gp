#!/usr/bin/gnuplot -persistent

############# VARIABLES ##########################



############# OPCIONES DE VISUALIZACION ############

#set term pdfcairo color size 15cm,10cm linewidth 1

#set output "./informe.pdf"

############# OPCIONES DE TIPO DE PLOTEO ###########

set lmargin 12

set grid

#set multiplot layout 4,1

#set multipage 


############  PLOTEOS  ############################

set terminal jpeg 

set output "../informe/figure4.jpeg"


set title "DESPLAZAMIENTOS RELATIVOS MODAL"

set xlabel "t (seg)"

set ylabel "Ur (m)"

set xrange [0:5e-03]

set yrange [-2.5e-08:2.5e-08]

plot "./xy.dat" using 1:($2-$2) ti "Nodo 1" w l,"" using 1:($12-$2) ti "Nodo 2" w l,"" using 1:($13-$2) ti "Nodo 3" w l

## //////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure19.jpeg"


set title "DESPLAZAMIENTOS RELATIVOS MODAL H-REF"

set xlabel "t (seg)"

set ylabel "Ur (m)"

set xrange [0:1e-03]

unset yrange

plot "./xy.dat" using 1:($2-$2) ti "Nodo 1" w l,"" using 1:($14-$2) ti "Nodo 2" w l,"" using 1:($15-$2) ti "Nodo 3" w l


## ///////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure7.jpeg"


set title "DESPLAZAMIENTOS RELATIVOS ALGORITMO"

set xlabel "t (seg)"

set ylabel "Ur (m)"

set xrange [0:5e-03]

unset yrange

plot "./xy.dat" using 1:($2-$2) ti "Nodo 1" w l,"" using 1:($3-$2) ti "Nodo 2" w l,"" using 1:($4-$2) ti "Nodo 3" w l

## ///////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure13.jpeg"


set title "DESPLAZAMIENTOS RELATIVOS ASTER"

set xlabel "t (seg)"

set ylabel "Ur (m)"

set xrange [0:1e-03]

plot "./xy.dat" using 1:($6-$6) ti "asterRelN0" w l,"" using 1:($7-$6) ti "asterRelN2" w l,"" using 1:($8-$6) ti "asterRelN3" w l


## ///////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure5.jpeg"


set title "DESPLAZAMIENTOS ABSOLUTOS MODAL"

set xlabel "t (seg)"

set ylabel "Ua (m)"

set xrange [0:2.5e-03]



set yrange [0:5e-08]

plot "./xy.dat" using 1:($2) ti "Nodo 1" w l,"" using 1:($12) ti "Nodo 2" w l,"" using 1:($13) ti "Nodo 3" w l

## ///////////////////////////////////////////////


set terminal jpeg 

set output "../informe/figure20.jpeg"


set title "DESPLAZAMIENTOS ABSOLUTOS MODAL H-REF"

set xlabel "t (seg)"

set ylabel "Ua (m)"


set xrange [0:2.5e-03]

set yrange [0:5e-08]


plot "./xy.dat" using 1:($2) ti "Nodo 1" w l,"" using 1:($14) ti "Nodo 2" w l,"" using 1:($15) ti "Nodo 3" w l



## ///////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure8.jpeg"


set title "DESPLAZAMIENTOS ABSOLUTOS ALGORITMO"

set xlabel "t (seg)"

set ylabel "Ua (m)"


set xrange [0:2.5e-03]

set yrange [0:4e-08]


plot "./xy.dat" using 1:($2) ti "Nodo 1" w l,"" using 1:($3) ti "Nodo 2" w l,"" using 1:($4) ti "Nodo 3" w l

## ///////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure14.jpeg"


set title "DESPLAZAMIENTOS ABSOLUTOS ASTER"

set xlabel "t (seg)"

set ylabel "Ua (m)"

set xrange [0:1e-03]

set yrange [0:2e-08]

plot "./xy.dat" using 1:($6) ti "asterAbsN0" w l,"" using 1:($7) ti "asterAbsN2" w l,"" using 1:($8) ti "asterAbsN3" w l


## ///////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure9.jpeg"

set title "DESPLAZAMIENTOS ABSOLUTOS ALGORITMO vs. ANALISIS MODAL"

set xlabel "t (seg)"

set ylabel "Ua (m)"

set xrange [0:2.5e-03]

set yrange [0:5e-08]


plot "./xy.dat" using 1:($2) ti "Nodo 1" w l,"" using 1:($3) ti "algoAbsN2" w l,"" using 1:($4) ti "algoAbsN3" w l,"" using 1:($12) ti "modalAbsN2" w l,"" using 1:($13) ti "modalAbsN3" w l

## ///////////////////////////////////////////////

## ///////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure21.jpeg"

set title "DESPLAZAMIENTOS ABSOLUTOS ALGORITMO vs. ANALISIS MODAL H-REF"

set xlabel "t (seg)"

set ylabel "Ua (m)"

set xrange [0:5e-03]

set yrange [0:5e-08]

plot "./xy.dat" using 1:($2) ti "Nodo 1" w l,"" using 1:($3) ti "algoAbsN2" w l,"" using 1:($4) ti "algoAbsN3" w l,"" using 1:($14) ti "modalHrefAbsN2" w l,"" using 1:($15) ti "modalHrefAbsN3" w l


## ///////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure10.jpeg"


set title "ERROR DESPLAZAMIENTOS ABSOLUTOS ALGORITMO vs. MODAL"

set xlabel "t (seg)"

set ylabel "Error (%)"

set xrange [0:5e-03]

set yrange [-20:15]

plot "./xy.dat"  using 1:(((($12)/($3))-1)*100) ti "N2" w l,"" using 1:(((($13)/($4))-1)*100) ti "N3" w l



## ///////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure11.jpeg"

set title "DESPLAZAMIENTOS RELATIVOS ALGORITMO vs. ANALISIS MODAL"

set xlabel "t (seg)"

set ylabel "Ua (m)"

set xrange [0:5e-03]

set yrange [-1e-08:1.5e-08]

plot "./xy.dat" using 1:($2-$2) ti "Nodo 1" w l,"" using 1:($3-$2) ti "algoRelN2" w l,"" using 1:($4-$2) ti "algoRelN3" w l,"" using 1:($12-$2) ti "modalRelN2" w l,"" using 1:($13-$2) ti "modalRelN3" w l

## ///////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure22.jpeg"

set title "DESPLAZAMIENTOS RELATIVOS ALGORITMO vs. ANALISIS MODAL H-REF"

set xlabel "t (seg)"

set ylabel "Ua (m)"

set xrange [0:5e-03]

set yrange [-1.2e-09:6e-10]

plot "./xy.dat" using 1:($2-$2) ti "Nodo 1" w l,"" using 1:($3-$2) ti "algoRelN2" w l,"" using 1:($4-$2) ti "algoRelN3" w l,"" using 1:($14-$2) ti "modalHrefRelN2" w l,"" using 1:($15-$2) ti "modalHrefRelN3" w l

## /////////////////////////////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure23.jpeg"


set title "ERROR DESPLAZAMIENTOS ABSOLUTOS ALGORITMO vs. MODAL H-REF"

set xlabel "t (seg)"

set ylabel "Error (%)"

set xrange [0:2e-02]

set yrange [-5:5]

plot "./xy.dat"  using 1:(((($14)/($3))-1)*100) ti "N2" w l,"" using 1:(((($15)/($4))-1)*100) ti "N3" w l




## ///////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure12.jpeg"


set title "ERROR DESPLAZAMIENTOS RELATIVOS ALGORITMO vs. MODAL"

set xlabel "t (seg)"

set ylabel "Error (%)"

set xrange [0:2e-02]

set yrange [-1000:1000]

plot "./xy.dat"  using 1:(((($12-$2)/($3-$2))-1)*100) ti "N2" w l,"" using 1:(((($13-$2)/($4-$2))-1)*100) ti "N3" w l

unset yrange

#/////////////////////////////////////////////////////////////////////


set terminal jpeg 

set output "../informe/figure24.jpeg"


set title "ERROR DESPLAZAMIENTOS RELATIVOS ALGORITMO vs. MODAL H-REF" 

set xlabel "t (seg)"

set ylabel "Error (%)"

set xrange [0:2e-02]

set yrange [-100:100]

plot "./xy.dat"  using 1:(((($14-$2)/($3-$2))-1)*100) ti "N2" w l,"" using 1:(((($15-$2)/($4-$2))-1)*100) ti "N3" w l

unset yrange


## ///////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure15.jpeg"


set title "DESPLAZAMIENTOS ABSOLUTOS ASTER vs. ALGORITMO"

set xlabel "t (seg)"

set ylabel "Ua (m)"

set xrange [0:5e-03]

unset yrange

plot "./xy.dat" using 1:($2) ti "algoAbsN1" w l,"" using 1:($3) ti "algoAbsN2" w l,"" using 1:($4) ti "algoAbsN3" w l,"" using 1:($6) ti "asterAbsN1" w l,"" using 1:($7) ti "asterAbsN2" w l,"" using 1:($8) ti "asterAbsN3" w l



## ///////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure16.jpeg"

set title "ERROR DESPLAZAMIENTOS ABSOLUTOS ASTER vs. ALGORITMO"

set xlabel "t (seg)"

set ylabel "Error (%)"

set xrange [0:2e-02]

set yrange [-5:5]

plot "./xy.dat"  using 1:(((($3)/($7))-1)*100) ti "N2" w l,"" using 1:(((($4)/($8))-1)*100) ti "N3" w l



## ///////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure17.jpeg"


set title "DESPLAZAMIENTOS RELATIVOS ASTER vs. ALGORITMO"

set xlabel "t (seg)"

set ylabel "Ua (m)"

set xrange [0:2e-03]

set yrange [-7e-10:5e-10]

plot "./xy.dat" using 1:($2-$2) ti "algoRelN1" w l,"" using 1:($3-$2) ti "algoRelN2" w l,"" using 1:($4-$2) ti "algoRelN3" w l,"" using 1:($6-$2) ti "asterRelN1" w l,"" using 1:($7-$2) ti "asterRelN2" w l,"" using 1:($8-$2) ti "asterRelN3" w l



## ///////////////////////////////////////////////

set terminal jpeg 

set output "../informe/figure18.jpeg"

set title "ERROR DESPLAZAMIENTOS RELATIVOS ASTER vs. ALGORITMO"

set xlabel "t (seg)"

set ylabel "Error (%)"

set xrange [0:2e-02]

set yrange [-1000:1000]

plot "./xy.dat"  using 1:(((($3-$2)/($7-$2))-1)*100) ti "N2" w l,"" using 1:(((($4-$2)/($8-$2))-1)*100) ti "N3" w l





# #\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

# set title "DESPLAZAMIENTOS ABSOLUTOS UNIFICADOS"

# set xlabel "t (seg)"

# set ylabel "Ua (m)"

# set xrange [0:5e-03]


# plot "./xy.dat" using 1:($2) ti "Nodo 1" w l,"" using 1:($3) ti "Nodo 2" w l,"" using 1:($4) ti "Nodo 3" w l,"" using 1:($6) ti "asterAbsN0" w l,"" using 1:($7) ti "asterAbsN2" w l,"" using 1:($8) ti "asterAbsN3" w l,"" using 1:($12) ti "modalAbsN2" w l,"" using 1:($13) ti "modalAbsN3" w l

# unset yrange

# ## ///////////////////////////////////////////////


# set title "ERROR DESPLAZAMIENTOS (ABSOLUTOS)"

# set xlabel "t (seg)"

# set ylabel "Error (%)"

# set xrange [0:5e-03]

# plot "./xy.dat" using 1:((($6/$2)-1)*100) ti "N0" w l,"" using 1:((($7/$3)-1)*100) ti "N2" w l,"" using 1:((($8/$4)-1)*100) ti "N3" w l

# unset yrange

# ## ///////////////////////////////////////////////

# set title "DESPLAZAMIENTOS RELATIVOS UNIFICADOS"

# set xlabel "t (seg)"

# set ylabel "Ur (m)"

# set xrange [0:5e-03]


# plot "./xy.dat" using 1:($2-$2) ti "Nodo 1" w l,"" using 1:($3-$2) ti "Nodo 2" w l,"" using 1:($4-$2) ti "Nodo 3" w l,"" using 1:($6-$6) ti "asterRelN0" w l,"" using 1:($7-$6) ti "asterRelN2" w l,"" using 1:($8-$6) ti "asterRelN3" w l

# unset yrange



# ## ///////////////////////////////////////////////

# set title "ERROR DESPLAZAMIENTOS (RELATIVOS)"

# set xlabel "t (seg)"

# set ylabel "Error (%)"

# set xrange [0:5e-03]

# plot "./xy.dat"  using 1:(((($7-$6)/($3-$2))-1)*100) ti "N2" w l,"" using 1:(((($8-$6)/($4-$2))-1)*100) ti "N3" w l

# unset yrange

##################### MANTENIMIENTO ###################

unset multiplot


