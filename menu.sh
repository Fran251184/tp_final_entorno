#!/bin/bash

OPC=0
NOMBRE=resultados_$2_$1
touch $NOMBRE
chmod 777 $NOMBRE
echo "RESULTADOS DEL ANALISIS DE $2 SOBRE EL TEXTO DEL ACHIVO $1" > $NOMBRE
echo >> $NOMBRE
echo "Fecha: $(date +"%d/%m/%Y")." >> $NOMBRE
echo >> $NOMBRE
while [ $OPC -ne 6 ]
do
	clear
	echo "$2 ¿Qué desea hacer de acuerdo al siguiente menu?"
	echo 
	echo "1. Esta opoción devuelve un indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud)."
	echo 
	echo "2. Esta opción devuelve un indicador estadístico de uso de palabras que deben ser de al menos 4(cuatro) letras. Además muestra un Top Ten de las palabras (ordenadas desde la que tiene más apariciones a la que tiene menos). Es decir, filtra las palabras que tengan al menos 4 letras y de ellas, elige las 10 más usadas."
	echo 
	echo "3. Esta opición identifica los nombres propios (se identifican sólo si están en este formato Nnnnnnnnn, aunque la palabra no sea un nombre propio realmente. Ejemplos: Mateo, Estonoesunnombre, Ana)."
	echo 
	echo "4. Esta opción devuelve un indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud)."
	echo 
	echo "5. Esta opción devuelve un contador de líneas en blanco."
	echo 
	echo "6. Terminar el programa (Salir)."
	echo 
	read -p "Elija una opción ingresando el número correspondiente: " OPC
       	echo
	until [[ $OPC =~ ^[123456]+$ ]]
	do
		echo "La opción ingresada es incorrecta. Debe ingresar opciones del 1 al 6."
		echo
		read -p "Elija una opción ingresando el número correspondiente: " OPC	
		echo
	done	
	case $OPC in 
		1)clear 
			echo "ANÁLISIS SOBRE LONGITUD DE PALABRAS" >> $NOMBRE
			echo "Ha elegido la opción $OPC" 
			echo
			echo >> $NOMBRE
			echo "Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud)."
			echo "Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud)." >> $NOMBRE
			echo
			echo >> $NOMBRE
			sleep 5
			source statsWords.sh $1 $2 
			sleep 9
			;;
		2)clear
			echo "ANÁLISIS SOBRE USO DE PALABRAS" >> $NOMBRE
			echo "Ha elegido la opción $OPC"
			echo
			echo >> $NOMBRE
			echo "Top Ten de indicador estadístico de uso de palabras de al menos 4(cuatro) letras."
			echo "Top Ten de indicador estadístico de uso de palabras de al menos 4(cuatro) letras." >> $NOMBRE
			echo
			echo >> $NOMBRE
			sleep 5
			source statsUsageWords.sh $1 $2 
			sleep 9	
			;;
		3)clear
                    	echo "ANÁLISIS SOBRE NOMBRES PROPIOS" >> $NOMBRE
                        echo "Ha elegido la opción $OPC"
                        echo
                        echo >> $NOMBRE
                        echo "Identificación de nombres propios y palabras con inicio de mayúscula."
                        echo "Identificación de nombres propios y palabras con inicio de mayúscula." >> $NOMBRE
                        echo
                        echo >> $NOMBRE
                        sleep 5
                        source findNames.sh $1 $2 
                        sleep 9
                        ;;
		4)clear
                        echo "ANÁLISIS SOBRE LONGITUD DE ORACIONES" >> $NOMBRE
                        echo "Ha elegido la opción $OPC"
                        echo
                        echo >> $NOMBRE
                        echo "Indicador estadístico de longitud de oraciones de acuerdo al número de palabras (la más corta, la más larga y el promedio de longitud)."
                        echo "Indicador estadístico de longitud de oraciones de acuerdo al número de palabras (la más corta, la más larga y el promedio de longitud)." >> $NOMBRE
                        echo
                        echo >> $NOMBRE
                        sleep 5
                        source statsSentence.sh $1 $2
                        sleep 9
                        ;;
		5)clear
                        echo "ANÁLISIS SOBRE LÍNEAS EN BLANCO" >> $NOMBRE
                        echo "Ha elegido la opción $OPC"
                        echo
                        echo >> $NOMBRE
                        echo "Cantidad de líneas en blanco."
                        echo "Cantidad de líneas en blanco." >> $NOMBRE
                        echo
                        echo >> $NOMBRE
                        sleep 5
                        source blankLinesCounter.sh $1 $2
                        sleep 9
			;;			
		6)clear
                        cat $NOMBRE
			rm $NOMBRE
			echo
			echo "-----------------------------------------------------------------------"
			echo
			echo "HA FINALIZADO EL PROGRAMA"
		       	echo
			echo
			echo "HASTA LUEGO $2!"
			exit 0
			;;
	
	esac	
done 

