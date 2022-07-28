FROM ubuntu:latest

MAINTAINER franciscojalomar@gmail.com

ADD [ "analisis_texto.sh", "/home/pancho/tuia/" ] 
ADD [ "blankLinesCounter.sh", "/home/pancho/tuia/" ]  
ADD [ "el_tiempo_de_borges.txt", "/home/pancho/tuia/data/" ]  
ADD [ "findNames.sh", "/home/pancho/tuia/" ]
ADD [ "menu.sh", "/home/pancho/tuia/" ] 
ADD [ "rayuela.txt", "/home/pancho/tuia/data/" ] 
ADD [ "statsSentence.sh", "/home/pancho/tuia/" ]
ADD [ "statsUsageWords.sh", "/home/pancho/tuia/" ]
ADD [ "statsWords.sh", "/home/pancho/tuia/"  ] 

WORKDIR  /home/pancho/tuia 
ENTRYPOINT [ "/home/pancho/tuia/analisis_texto.sh" ]

