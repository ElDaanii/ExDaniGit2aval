#!/bin/bash

cont=1
promedio=0
while [ $cont -lt 22 ]; do
    tiempo=$(awk 'NR=='$cont'{print $NF}' consumos.txt)
    promedio=$((promedio + tiempo))
    ((cont++))
done

promedio=$((promedio / 4))

cont2=0
while [ $cont2 -lt 22 ]; do
    if [ $promedio -le 400 ];then
        grep "$cont2" consumos.txt | echo "ECO"
    else
        grep "$cont2" consumos.txt |  echo "NO ES ECO"
    fi
    ((cont2++))
done
