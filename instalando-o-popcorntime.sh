#!/bin/bash
#Este script faz a instalação do popcorntime para processadores em 64bts 
#Criado por Wallace Chagas
#Em casos de bugs por favor enviar email para wallace.s.chagas@gmail.com
#***********************************************************************
#*******************VERSÃO 1.0******************************************
#***********************************************************************

#faz o download do arquivo 
wget https://get.popcorntime.sh/build/Popcorn-Time-0.3.10-Linux-64.tar.xz -O popcorntime.tar.xz

sudo mkdir /opt/popcorntime #cria pasta para fazer a descompactação
sudo tar Jxf popcorntime.tar.xz -C /opt/popcorntime
#descompacta arquivos e faz sua instalação
#Cria link simbólico 
sudo ln -sf /opt/popcorntime/Popcorn-Time /usr/bin/Popcorn-Time

#Se possível cria ícone de inicialização no desktop

echo -e '[Desktop Entry]\n Version=1.0\n Name=popcorntime\n Exec=/opt/popcorntime/Popcorn-Time\n Icon=/opt/popcorntime/src/app/images/icon.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/popcorntime.desktop
