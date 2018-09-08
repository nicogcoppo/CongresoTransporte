#!/usr/bin/bash


############ DEFINICIONES #################

declare -r octave="../archivosOctave/"

declare -r aster="../archCodeAster/"

############ FUNCIONES ####################



############ SCRIPT   #####################

# /* Adecuacion de los desplazamientos calculados por GNU OCTAVE

cat ${octave}"T_listo.dat" | head -1 | tr ' ' '\n' | tail -n +3 >/tmp/x.dat

cat ${octave}"U_listo.dat" | head -1 | tr ' ' '\n' | tail -n +3 >/tmp/y1.dat

cat ${octave}"U_listo.dat" | tail -n +2 | head -1 | tr ' ' '\n' | tail -n +3>/tmp/y2.dat

cat ${octave}"U_listo.dat" | tail -n +3 | head -1 | tr ' ' '\n' | tail -n +3 >/tmp/y3.dat

#cat ${octave}"D2.dat" | tr ')' '\n' |  sed '/matrix/,/]/d' | tr '[' ' ' | tr ']' ' ' | tr  ',' '\n' | tail -n +3 | awk 'NF' | tr -d '[:blank:]' >/tmp/d2.dat

#cat ${octave}"D3.dat" | tr ')' '\n' |  sed '/matrix/,/]/d' | tr '[' ' ' | tr ']' ' ' | tr  ',' '\n' | tail -n +3 | awk 'NF' | tr -d '[:blank:]'  >/tmp/d3.dat

cat ${octave}"D2.dat" | tr ')' '\n' | grep -v 'matrix' | grep -v ',' | tr ' ' '\n' | awk 'NF' | tr 'E' 'e' >/tmp/d2.dat

cat ${octave}"D3.dat" | tr ')' '\n' | grep -v 'matrix' | grep -v ',' | tr ' ' '\n' | awk 'NF' | tr 'E' 'e' >/tmp/d3.dat

cat ${octave}"D2h.dat" | tr ')' '\n' | grep -v 'matrix' | grep -v ',' | tr ' ' '\n' | awk 'NF' | tr 'E' 'e' >/tmp/d2h.dat

cat ${octave}"D3h.dat" | tr ')' '\n' | grep -v 'matrix' | grep -v ',' | tr ' ' '\n' | awk 'NF' | tr 'E' 'e' >/tmp/d3h.dat


# /* Adecuacion de los desplazamientos calculados por CodeAster

cat ${aster}"resultados-aster.resu" | tail -n +18 | tr ',' '\t' | tr 'E' 'e' >/tmp/aster.dat 

paste -d '\t' /tmp/x.dat /tmp/y1.dat /tmp/y2.dat /tmp/y3.dat /tmp/aster.dat /tmp/d2.dat /tmp/d3.dat /tmp/d2h.dat /tmp/d3h.dat >./xy.dat



gnuplot <./ploteoDifCentr.gp

########### MANTENIMIENTO #################

exit 0


