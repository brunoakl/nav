#!/bin/bash

clear && echo Removendo o Github Desktop
sudo apt-get purge github-desktop -y &> /dev/null
sleep 0.5 && echo " "

echo Removendo dependências
sudo apt-get autoremove -y &> /dev/null
sleep 0.5 && echo " "

echo Limpando cache local
sudo apt-get clean &> /dev/null
sleep 0.5 && echo " "

echo "GitHub Desktop e registros removidos!"