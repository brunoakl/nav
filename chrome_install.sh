#!/bin/bash

echo "Instalando Google Chrome..."

#Atualizando repositórios do sistema
sudo apt update && sudo apt upgrade

#Verificando erros
update_status=$?
if [ $update_status -ne 0 ]; then
  echo Ocorreu um erro ao atualizar os pacotes.
  echo Os processos foram mortos. Reinicie o instalador.
  sudo pkill -9 -f "$(basename "$0")" &> /dev/null
  sudo pkill -9 -f "apt" &> /dev/null
  exit 1
fi
 
# Baixando o pacote .deb do Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Instalando o pacote
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Caso haja dependências faltando
sudo apt-get install -f

echo "Google Chrome instalado com sucesso!"

# Limpando o pacote baixado
rm google-chrome-stable_current_amd64.deb
rm wget-log*
