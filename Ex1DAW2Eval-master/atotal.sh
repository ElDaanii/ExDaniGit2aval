#!/bin/bash

echo "Introduce una ciudad"
read ciudad

cont=1
suma=0
if [ $ciudad -eq 'Madrid']: then
    while [ $cont -lt 22 ]; do
        consumo=$(awk 'NR=='$cont'{print $NF}' consumos.txt)
        suma=$((suma + consumo))
        ((cont++))
    done

    echo "La suma es $suma"
elif
    if [ $ciudad -eq 'Barcelona']: then
    while [ $cont -lt 22 ]; do
        consumo=$(awk 'NR=='$cont'{print $NF}' consumos.txt)
        suma=$((suma + consumo))
        ((cont++))
    done
    fi

    echo "La suma es $suma"
elif
    if [ $ciudad -eq 'Barcelona']: then
    while [ $cont -lt 22 ]; do
        consumo=$(awk 'NR=='$cont'{print $NF}' consumos.txt)
        suma=$((suma + consumo))
        ((cont++))
    done
    fi

    echo "La suma es $suma"
else
    echo "Introduce una ciudad existente"
fi