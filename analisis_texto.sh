#!/bin/bash
   
FILE=$1

[ ! -e  $FILE ] && echo "El archivo no existe. Procure que el archivo exista y vuelva a ejecutar el programa." && exit 1
[ ! -f  $FILE ] && echo "El archivo no es un archivo regular. Procure que el archivo sea un archivo regular y vuelva a ejecutar el programa." && exit 2  
[ ! -r  $FILE ] && echo "El archivo no tiene permiso de lectura. Cambie los permisos de lectura del archivo y vuelva a ejecutar el programa." && exit 3 
[ ! -s  $FILE ] && echo "El archivo esta vacio. Procure que el archivo no este vacío y vuelva a ejecutar el programa." && exit 4

if [[ $FILE =~ ^.+\.txt$ ]]
then
	clear
	echo "$2 ¿Desea hacer el análisis del texto del archivo $FILE? (S/N)"; read RESP
	echo
	until ([ "$RESP" == "S" ] || [ "$RESP" == "N" ])
	do 
	       	echo "El valor ingresado no es correcto (S para SI y N para no)"        
	        echo
		echo "¿Desea hacer el análisis del texto del archivo $FILE? (S/N)"; read RESP
		echo
	done   
	if [[ "$RESP" == "S" ]]
	then
        	source menu.sh $FILE $2 
	elif [[ "$RESP" == "N" ]]
	then
		clear
		echo "HA FINALIADO EL PROGRAMA" 
		echo
		echo "Hasta luego $2!"
	      	echo
	fi

	exit 0
  
else
	echo "El archivo debe tener terminación .txt. Corriga esto y vuelva a ejecutar el programa."
        exit 6

fi

