#!/bin/bash

DATA=/root/Proyecto-de-Programacion/problema1/hojasDatos
mkdir $DATA/datos_csv


OUT_DATA=$DATA/datos_csv
GRAF_DATA=$DATA/datos_graf

mkdir $GRAF_DATA


m=0

for i in `find $DATA -name '*.xls' ` 
do        
      echo "Procesando archivo $i"
      xls2csv $i > $OUT_DATA/data-$m.csv
      let m=m+1

done 2> error1.log
