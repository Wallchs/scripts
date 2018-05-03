#!/bin/bash
#Esse programa faz o donwload de aúdio de vídeos do youtube em formato mp3
#crie um arquivo como lista.txt, e insira as urls das músicas que deseja neste arquivo.
#Dica (com o youtube-dl você também pode baixar vídeos, para maiores informações acesse: https://github.com/rg3/youtube-dl/blob/master/README.md
LISTA=$(cat lista.txt)

if [ $? -eq 0 ]; then
    sleep 1
    echo "Baixando urls ..."
else
    echo "O arquivo foi criado insira as urls no arquivo lista.txt"
    touch lista.txt
fi

DONWLOAD=$(youtube-dl -i -x --audio-format mp3 $LISTA);

mv *.mp3 Música/ #caso queira altere a basta desejada para mover os arquivos

echo "As músicas foram salvas!"

