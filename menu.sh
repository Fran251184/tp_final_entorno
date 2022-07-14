#!/bin/bash

OPC=0
touch resultados_$2_$1
chmod 777 resultados_$2_$1
echo "RESULTADOS DEL ANALISIS DE $2 PARA EL TEXTO DEL ACHIVO $1" >> resultados_$2_$1
echo >> resultados_$2_$1
echo >> resultados_$2_$1
echo >> resultados_$2_$1
while [ $OPC -ne 6 ]
do
	clear
	echo "$2 ¿Qué desea hacer de acuerdo al siguiente menu?"
	echo 
	echo "1. Esta opoción devuelve un dicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud)."
	echo 
	echo "2. Esta opción devuelve el un indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras. Además muestra un Top Ten de estas palabras ordenadas desde la que tiene más apariciones a la que tiene menos). Es decir, filtra las palabras que tengan al menos 4 letras y de éstas, elige las 10 más usadas."
	echo 
	echo "3. Esta opición identifica los nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente. Ejemplos: Mateo, Estonoesunnombre, Ana."
	echo 
	echo "4.Esta opción devuelve un indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud)."
	echo 
	echo "5. Esta opción devuelve un contador de líneas en blanco."
	echo 
	echo "6. Terminar el programa (Salir)."
	echo 
	read -p "Elija una opción ingresando el número correspondiente: " OPC 

	case $OPC in 
		1)clear 
			echo "ANÁLISIS LONGITUD DE PALABRAS ($(date))" >> resultados_$2_$1
			echo "Ha elegido la opción $OPC" 
			echo
			echo >> resultados_$2_$1
			echo "Idicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud)."
			echo "Idicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud)." >> resultados_$2_$1
			echo >> resultados_$2_$1
			sleep 5
			source statsWords.sh $1 $2
			sleep 9
			;;
		2)clear
			echo "ANÁLISIS DE USO DE PALABRAS ($(date))" >> resultados_$2_$1
			echo "Ha elegido la opción $OPC"
			echo
			echo >> resultados_$2_$1
			echo "Top ten de indicador estadístico de uso de palabras de al menos 4(cuatro) letras."
			echo "Top ten de indicador estadístico de uso de palabras de al menos 4(cuatro) letras." >> resultados_$2_$1
			echo
			echo >> resultados_$2_$1
			sleep 5
			source statsUsageWords.sh $1 $2
			sleep 9	
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
                        cat resultados_$2_$1
			echo
			echo
			echo
			echo "HA FINALIZADO EL PROGRAMA"
		       	echo
			echo "(Recuerde que en el arcivho resultados_$2_$1 que se encuentra en este mismo directorio quedaron guardados los resultados de su análisis)"
			echo
			echo "HASTA LUEGO $2!"
			exit 0
			;;
		*)clear 
			echo "No es una opción válida"	
	
	esac	
done 

