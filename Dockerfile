FROM ubuntu:latest

MAINTAINER franciscojalomar@gmail.com

ADD [ "analisis_texto.sh", "." ] 
ADD [ "blankLinesCounter.sh", "." ]  
ADD [ "el_tiempo_de_borges.txt", "." ]  
ADD [ "findNames.sh", "." ]
ADD [ "menu.sh", "." ] 
ADD [ "rayuela.txt", "." ] 
ADD [ "statsSentence.sh", "." ]
ADD [ "statsUsageWords.sh", "." ]
ADD [ "statsWords.sh", "."  ] 

WORKDIR  . 
ENTRYPOINT [ "./analisis_texto.sh" ]

