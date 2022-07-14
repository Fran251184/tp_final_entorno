#!/bin/bash 

touch palabra1.txt 
chmod 777 palabra1.txt
touch palabra2.txt
chmod 777 palabra2.txt
touch palabra3.txt
chmod 777 palabra3.txt

for i in $(ls -l | sort $1)
do
	SOLO_LETRAS=$(echo $i | tr -dc "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZáéíóúÁÉÍÓÚÜü") 
	if [ ${#SOLO_LETRAS} -ge 4 ]
	then
		echo $SOLO_LETRAS >> palabra1.txt
	fi	
done

for i in $(ls -l | sort palabra1.txt)
do 
	NUM=$(grep -o -i $i palabra1.txt | wc -l) 
	echo "$NUM es el número de frecuencia de la palabra ($i)" >> palabra2.txt
done

cat palabra2.txt | sort -r -f -u | uniq > palabra3.txt
echo "El Top Ten de palabras de más de cuatro letras con su frecuencia de aparición en texto del archivo $1 es:"
echo
cat palabra3.txt | head -10 
cat palabra3.txt | head -10 >> resultados_$2_$1 
echo
echo >> resultados_$2_$1
rm palabra1.txt palabra2.txt palabra3.txt 

#El uso grep -c solo contara el número de líneas que contienen la palabra coincidente en lugar del número total de coincidencias. La opción -o es la que le dice a grep que muestre cada coincidencia en una línea única y luego wc -l le dice a wc que cuente el número de líneas. Así es como se deduce el número total de palabras coincidentes.

#En la linea 24 -r hace que sort ordene de modo inverso, -f ignora la distición entre mayúsculas y minúsculas, y lugeo -u elimina los duplicados que se puedan dar porque la misma palabra esté en mayúscula y minúscula. 
