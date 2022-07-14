#!/bin/bash 

CONT=0
SUM_LONG=0
for i in $(ls -l | sort $1)
do
	SOLO_LETRAS=$(echo $i | tr -dc "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZáéíóúÁÉÍÓÚÜü")
	P_LARGA=$SOLO_LETRAS
	P_CORTA=$SOLO_LETRAS
	echo
	break	
done

for i in $(ls -l | sort $1)
do
	CONT=$(($CONT+1))
	SOLO_LETRAS=$(echo $i | tr -dc "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZáéíóúÁÉÍÓÚÜü")
	SUM_LONG=$(($SUM_LONG + ${#SOLO_LETRAS}))
	if [ ${#SOLO_LETRAS} -gt ${#P_LARGA} ]
	then		
		P_LARGA=$SOLO_LETRAS
	elif [ ${#SOLO_LETRAS} -lt ${#P_CORTA} ]
	then	
		P_CORTA=$SOLO_LETRAS	
	fi

done

LEN_PL=${#P_LARGA}
LEN_PC=${#P_CORTA}
PROMEDIO=$(($SUM_LONG / $CONT))

echo "En el texto pretenenciente al archivo $1:"
echo
echo >> resultados_$2_$1
echo "-La palabra más larga es ($P_LARGA) con un len de $LEN_PL." 
echo "-La palabra más larga es ($P_LARGA) con un len de $LEN_PL." >> resultados_$2_$1
echo "-La palabra más corta es ($P_CORTA) con un len de $LEN_PC."
echo "-La palabra más corta es ($P_CORTA) con un len de $LEN_PC." >> resultados_$2_$1
echo "-El promedio de longitud de palabra es $PROMEDIO."
echo "-El promedio de longitud de palabra es $PROMEDIO." >> resultados_$2_$1
echo >> resultados_$2_$1

