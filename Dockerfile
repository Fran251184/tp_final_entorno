FROM ubuntu:latest

MAINTAINER franciscojalomar@gmail.com

ADD [ "inicio.sh", "./" ]
ADD [ "analisis_texto.sh", "./" ] 
ADD [ "blankLinesCounter.sh", "./" ]  
ADD [ "findNames.sh", "./" ]
ADD [ "menu.sh", "./" ] 
ADD [ "rayuela.txt", "./" ] 
ADD [ "statsSentence.sh", "./" ]
ADD [ "statsUsageWords.sh", "./" ]
ADD [ "statsWords.sh", "./"  ] 

ENTRYPOINT [ "./inicio.sh" ]

