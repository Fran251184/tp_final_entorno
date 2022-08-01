#!/bin/bash

touch nombres.txt
chmod 777 nombres.txt
for i in $(ls -l | sort $1)
do
        SOLO_LETRAS=$(echo $i | tr -dc "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZáéíóúÁÉÍÓÚÜü")
        if [[ $SOLO_LETRAS =~ ^[A-ZÁÉÍÓÚÑ].+$ ]]
        then
		echo $SOLO_LETRAS >> nombres.txt
        fi
done

echo "Los nombres propios y palabras que comienzan con mayúscula en el texto del archivo $1 son: "
echo
cat nombres.txt
echo
cat nombres.txt >> $NOMBRE
echo >> $NOMBRE
rm nombres.txt
