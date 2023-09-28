#!/bin/bash

# Função para mostrar a animação de pontos
mostrar_animacao() {
    mensagem=$1
    tempo_maximo=$2

    # Mostra a mensagem
    clear
    echo -n -e "$mensagem"

    # Inicializa o temporizador
    temporizador=0

    while [[ $temporizador -lt $tempo_maximo ]]; do
        echo -n -e "."
        sleep 0.5
        temporizador=$((temporizador + 1))
    done
}

#Verificando erros
update_status=$?
if [ $update_status -ne 0 ]; then
  echo Ocorreu um erro ao atualizar os pacotes.
  echo Os processos foram mortos. Reinicie o instalador.
  sudo pkill -9 -f "$(basename "$0")" &> /dev/null
  sudo pkill -9 -f "apt" &> /dev/null
  exit 1
fi

# Atualiza os pacotes do sistema
sudo apt-get update &> /dev/null && sudo apt-get upgrade &> /dev/null
mostrar_animacao "Atualizando pacotes do sistema" 5

# Instalação dos pacotes
sudo apt install software-properties-common apt-transport-https wget -y &> /dev/null
mostrar_animacao "Instalando software-properties-common, apt-transport-https, e wget" 5

# Adiciona a chave Microsoft GPG
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- &> /dev/null | sudo apt-key add - &> /dev/null
mostrar_animacao "Adicionando a chave GPG da Microsoft" 5

# Adiciona o repositório VSCode
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y &> /dev/null
sudo apt update &> /dev/null  # Atualiza as informações do repositório
mostrar_animacao "Adicionando o repositório do Visual Studio Code" 5

# Instalação do Visual Studio Code
sudo apt install code -y &> /dev/null
mostrar_animacao "Instalando o Visual Studio Code" 5

echo ""
echo "Instalação concluída com sucesso!"

