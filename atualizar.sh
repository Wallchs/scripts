#!/bin/bash
#Criado por Wallace Chagas
#Bugs deverão ser enviados para wallace.s.chagas@gmail.com
#***************************************************************************
#******************************Versão-1.0***********************************
#***************************************************************************
#Este programa faz a atualizaço para sistemas baseados no Debian e derivados
#Como Ubuntu, Mint... etc.

#Limpa a tela para instalação
clear
echo "O Sistema irá atualizar"

sleep 2
#Realiza a atualização e depois verifica se não houve erros
sudo apt update && sudo apt upgrade
sudo apt autoremove
if [ $? -eq 0 ];then
    echo "O sistema foi atualizado com sucesso"
else
    echo "O sistema não foi atualizado"
fi
#Verifica se pode ou não desligar o pc

echo "Deseja desligar o pc? S/N :(S-sim, N-não) "
read Desligar

if [ "$Desligar" = "S" ] || [ "$Desligar" = "s" ]; then
    sleep 1
    echo "O pc será desligado"
    sudo shutdown now
else
    echo "Ok, fique a vontade"
    exit 1
fi
