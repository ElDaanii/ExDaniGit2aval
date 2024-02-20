#!/bin/bash
cont=1
menor_tiempo=10000000
while [ $cont -lt 22 ]; do
    tiempo=$(awk 'NR=='$cont'{print $NF}' consumos.txt)
    if [ "$tiempo" -lt "$menor_tiempo" ]; then
        menor_tiempo=$tiempo
    else
        echo "Tiempo mayor"
    fi
    ((cont++))
done

cont2=1
mayor_tiempo=0
while [ $cont2 -lt 22 ]; do
    tiempo=$(awk 'NR=='$cont2'{print $NF}' consumos.txt)
    if [ "$tiempo" -gt "$mayor_tiempo" ]; then
        mayor_tiempo=$tiempo
    else
        echo "Tiempo menor"
    fi
    ((cont2++))
done

echo "El mayor consumo $mayor_tiempo y pertenece a la siguiente ciudad, mes y año:"
grep "$mayor_tiempo" consumos.txt


echo "El menor consumo es  $menor_tiempo y pertenece a la siguiente ciudad, mes y año:"
grep "$menor_tiempo" consumos.txt