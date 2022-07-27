FROM ubuntu:latest

MAINTAINER franciscojalomar@gmail.com

ADD [ "analisis_texto.sh", "/home/pancho/TUIA/" ] 
ADD [ "blankLinesCounter.sh", "/home/pancho/TUIA/" ]  
ADD [ "el_tiempo_de_borges.txt", "/home/pancho/TUIA/" ]  
ADD [ "findNames.sh", "/home/pancho/TUIA/" ]
ADD [ "menu.sh", "/home/pancho/TUIA/" ] 
ADD [ "rayuela.txt", "/home/pancho/TUIA/" ] 
ADD [ "statsSentence.sh", "/home/pancho/TUIA/" ]
ADD [ "statsUsageWords.sh", "/home/pancho/TUIA/" ]
ADD [ "statsWords.sh", "/home/pancho/TUIA/"  ] 

ENTRYPOINT [ "analisis_texto.sh" ]

