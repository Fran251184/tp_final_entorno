#!/bin/bash

CONT=0
for i in $(ls -l | sort $1)
do
	if [[ $i =~ ^.+\.$ ]] || [[ $i =~ ^.+\?$ ]] || [[ $i =~ ^.+\!$ ]]
	then
		O_LARGA+="$i"
		O_CORTA+="$i"	
		N_P_LARGA=$(($N_P_LARGA + 1))
	       	N_P_CORTA=$(($N_P_CORTA + 1))

		break	
	fi	
	O_LARGA+="$i "
	O_CORTA+="$i "
	N_P_LARGA=$(($N_P_LARGA + 1))
	N_P_CORTA=$(($N_P_CORTA + 1))	
done

for i in $(ls -l | sort $1)
do
	CONT=$(($CONT + 1))
	P_TOTAL=$(($P_TOTAL +1))
	ORACION+="$i "
	if [[ $i =~ ^.+\.$ ]] || [[ $i =~ ^.+\?$ ]] || [[ $i =~ ^.+\!$ ]]
        then	
		N_ORACIONES=$(($N_ORACIONES +1)) 
		if [ $CONT -gt $N_P_LARGA ] 
		then
			N_P_LARGA=$CONT
			O_LARGA=$ORACION
			CONT=0
			ORACION=""
			continue
		elif [ $CONT -lt $N_P_CORTA ]
		then	
			N_P_CORTA=$CONT
			CONT=0
			O_CORTA=$ORACION
			ORACION=""
			continue
		fi	
		ORACION=""
		CONT=0
        fi
done

echo "En el texto del archivo $1:" 
echo
echo "-La oración más larga tiene un len de $N_P_LARGA palabras y es: "
echo "-La oración más larga tiene un len de $N_P_LARGA palabras y es: " >> resultados_$2_$1
echo
echo >> resultados_$2_$1
echo $O_LARGA
echo $O_LARGA >> resultados_$2_$1
echo
echo >> resultados_$2_$1
echo "-La oración más corta tiene un len de $N_P_CORTA palabras y es: "
echo "-La oración más corta tiene un len de $N_P_CORTA palabras y es: " >> resultados_$2_$1
echo
echo >> resultados_$2_$1
echo $O_CORTA
echo $O_CORTA >> resultados_$2_$1
echo
echo >> resultados_$2_$1
echo "-El promedio de longitud de oraciones (en palabras) de acuerdo al número de oraciones es $(($P_TOTAL / $N_ORACIONES))."
echo "-El promedio de longitud de oraciones (en palabras) de acuerdo al número de oraciones es $(($P_TOTAL / $N_ORACIONES))." >> resultados_$2_$1
echo >> resultados_$2_$1


