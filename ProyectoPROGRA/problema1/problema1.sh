#!/bin/bash

DATA=/root/Proyecto-de-Programacion/ProyectoPROGRA/problema1/hojasDatos
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

m=0

for e in `find $OUT_DATA -name "*.csv"`
do
      sleep 1;
      echo "Dando el formato correcto de los datos para grafico del archivo $e"
      cat $e | awk -F "\",\"" '{print $1 " " $2 " " $3 " " $4 " " $5}' | sed '1,$ s/"//g' | sed '1 s/date/#date/g'  > $GRAF_DATA/graf-$m.dat
      let  m=m+1

done 2> error2.log

echo "SUCCESSFUL EXECUTION!!"
