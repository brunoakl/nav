#!/bin/bash

echo "Instalando Google Chrome..."

#Atualizando repositórios do sistema
sudo apt update && sudo apt upgrade
 
# Baixando o pacote .deb do Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Instalando o pacote
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Caso haja dependências faltando
sudo apt-get install -f

echo "Google Chrome instalado com sucesso!"

# Limpando o pacote baixado
rm google-chrome-stable_current_amd64.deb

