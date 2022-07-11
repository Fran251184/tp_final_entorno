#!/bin/bash

OPC=0

while [ $OPC -ne 6 ]
do
	clear
	echo "¿Qué desea hacer de acuerdo al siguiente menu?"
	echo 
	echo "1. Esta opoción devuelve un undicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud)."
	echo 
	echo "2. Esta opción devuelve el un indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras. Además muestra un Top Ten de estas palabras ordenadas desde la que tiene
más apariciones a la que tiene menos). Es decir, filtra las palabras que
tengan al menos 4 letras y de éstas, elege las 10 más usadas."
	echo 
	echo "3. Esta opición identifica los nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente. Ejemplos: Mateo, Estonoesunnombre, Ana."
	echo 
	echo "4.Esta opción devuelve un indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud)."
	echo 
	echo "5. Esta opción devuelve un contador de líneas en blanco."
	echo 
	echo "6. Terminar el programa (Salir)."
	echo 
	read -p "Elija una opción ingresando el número correspondiente" OPC 

	case $OPC in 
		1)clear 
			echo "Ha elegido la opción $OPC"
			sleep 3
			;;
		2)clear
                        echo "Ha elegido la opción $OPC"
			;;

		3)clear
                        echo "Ha elegido la opción $OPC"
			;;

		4)clear
                        echo "Ha elegido la opción $OPC"
			;;

		5)clear
                        echo "Ha elegido la opción $OPC"
			;;
		6)clear
                        echo "Ha finalizado el programa. Hasta luego!"
			;;
		*)clear 
			echo "No es una opción válida"	

	
	esac	
done
	echo " "

