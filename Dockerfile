FROM ubuntu:latest

MAINTAINER franciscojalomar@gmail.com

ADD [ "analisis_texto.sh", "/home/pancho/tuia/" ] 
ADD [ "blankLinesCounter.sh", "/home/pancho/tuia/" ]  
ADD [ "el_tiempo_de_borges.txt", "/home/pancho/tuia/" ]  
ADD [ "findNames.sh", "/home/pancho/tuia/" ]
ADD [ "menu.sh", "/home/pancho/tuia/" ] 
ADD [ "rayuela.txt", "/home/pancho/tuia/" ] 
ADD [ "statsSentence.sh", "/home/pancho/tuia/" ]
ADD [ "statsUsageWords.sh", "/home/pancho/tuia/" ]
ADD [ "statsWords.sh", "/home/pancho/tuia/"  ] 

ENTRYPOINT [ "analisis_texto.sh" ]

