#!/bin/bash

ciudad=$(grep "$1" consumos.txt)

cont=1
promedio=0
while [ $cont -lt 22 ]; do
    tiempo=$(awk 'NR=='$cont'{print $NF}' consumos.txt)
    promedio=$((promedio + tiempo))
    ((cont++))
done

promedio=$((promedio / 4))

echo "El promedio es $promedio"

