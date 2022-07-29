#!/bin/bash

L_BLANCO=$(awk '!NF {sum += 1} END {print sum}' $1)
if [[ $L_BLANCO != "^[0123456789]$" ]]
then 
	echo "El número de línes en blanco para el archivo $3 es: 0."
	echo "El número de línes en blanco para el archivo $3 es: 0." >> $NOMBRE
	echo >> $NOMBRE
else
	echo "El número de línes en blanco para el archivo $3 es: $L_BLANCO."
	echo "El número de línes en blanco para el archivo $3 es: $L_BLANCO." >> $NOMBRE
	echo >> $NOMBRE
fi	


