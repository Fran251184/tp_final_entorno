#!/bin/bash

N_P_LARGA=0
N_P_CORTA=0
SUM_LONG=0
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
	CONT=$(($CONT+1))
	ORACION+="$i " #esta mal. hay que cortar la frase que ya fue evaluada. tal vez un if?
	if [[ $i =~ ^.+\.$ ]] || [[ $i =~ ^.+\?$ ]] || [[ $i =~ ^.+\!$ ]]
        then

		if [ $CONT -gt $N_P_LARGA ] 
		then
			N_P_LARGA=$CONT
			O_LARGA=$ORACION
			CONT=0
			ORACION="-"
		elif [ $CONT -lt $N_P_CORTA ]
		then	
			N_P_CORTA=$CONT
			CONT=0
			O_CORTA=$ORACION
			ORACION="-"
		fi	
        fi
done
echo $O_LARGA
echo $O_CORTA
 
