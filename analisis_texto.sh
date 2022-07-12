#!/bin/bash
echo 
echo "El siguiente programa hace un análisis de cualquier texto que usted ingrese como parámetro desde la directorio /TUIA. En este direcorio ya hay cargados dos archivos txt como ejemplo para la ejecución del programa. Si usted desea analizar otro texto, debe antes cargar el archivo en el directorio TUIA. Primero debe indicarle al programa el nombre del archivo como parámetro. Segundo, usted puede hacer el análisis del texto del archivo de aucuerdo a un menú de opciones. Finalmente, si usted quiere finalizar el programa, eliga la opcion correspondiente"  
echo 
FILE=$1
[ ! -e  $FILE ] && echo "El archivo no existe" && exit 1
[ ! -f  $FILE ] && echo "El archivo no es un archivo regular" && exit 2
[ ! -r  $FILE ] && echo "El archivo no tiene permiso de lectura" && exit 3
[ ! -x  $FILE ] && echo "El archivo no tiene permiso de ejecución" && exit 4

echo "¿Desea hacer el análisis del texto del archivo $FILE? (S/N)"; read RESP

#while ([ "$RESP" != "S" ] || [ "$RESP" != "N" ])
#do 
#	clear
#	echo "El valor ingresado no es correcto (S para SI y N para no)"	
#	echo "¿Desea hacer el análisis del texto del archivo $FILE? (S/N)"
#	read RESP
#done	
if [[ "$RESP" == "S" ]] 
then 
	source menu.sh $FILE 
elif [[ "$RESP" == "n" ]]
then	
	echo "Ha finalizado el programa. Hasta luego!"	
fi 
