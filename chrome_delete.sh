#!/bin/bash

echo "Desinstalando Google Chrome..."

# Removendo o pacote do Google Chrome e sua configuração
sudo apt-get purge google-chrome-stable -y

# Removendo dependências não utilizadas após a desinstalação
sudo apt-get autoremove -y

echo "Google Chrome desinstalado com sucesso!"

