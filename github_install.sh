#!/bin/bash

clear && echo Atualizando pacotes
sudo apt update &> /dev/null && sudo apt upgrade &> /dev/null
sleep 0.5 && echo " "

echo Instalando dependências
sudo apt install git gconf2 gconf-service libgtk-3-0 libnotify4 libxtst6 libnss3 xdg-utils libxss1 gnome-keyring desktop-file-utils libindicator7 -y &> /dev/null
sleep 0.5 && echo " "

echo Baixando o pacote na versão indicada
#Procure versões mais atualizadas em https://github.com/shiftkey/desktop/releases
wget -qO github-desktop.deb https://github.com/shiftkey/desktop/releases/download/release-3.3.1-linux1/GitHubDesktop-linux-amd64-3.3.1-linux1.deb &> /dev/null
sleep 0.5 && echo " "

echo Instalando GitHub Desktop 3.3.1 for Linux
sudo dpkg -i github-desktop.deb &> /dev/null
sleep 0.5 && echo " "

echo Procurando por dependências em falta
sudo apt-get install -f &> /dev/null 
sleep 0.5 && echo " "

echo Limpando
rm github-desktop.deb &> /dev/null
sleep 0.5 && echo " "

echo "GitHub Desktop instalado com sucesso!"
read -p "Deseja abrir o GitHub Desktop agora? [s/n] " choice

if [ "$choice" = "s" ]; then
    github-desktop &
else
    exit
fi