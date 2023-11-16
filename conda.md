# Lembretes ao usar o *mini*Conda

Quando estiver programando em um ambiente virtual do Conda,
é conveniente pré-instalar a versão do Python desejada ao criar o ambiente
`conda create -n ENV_NAME python==PYTHON_VERSION`
Por exemplo, o arguemento `python==3.10` vai pré-instalar o Python 3.10 e seus componentes no ambiente virtual. 

No canto inferior direito do VS Code, verifique se o interpretador é o mesmo do ambiente virtual.

![interpreter](https://i.imgur.com/TriwnbM.png)

Ao clicar, uma lista de interpretadores disponíveis aparecerá na tela. Escolha o mais adequado para seu projeto.
Atenção aos diretórios de cada um. Se estão em pastas `usr` ou `bin` costumam ser nativos do sistema e separados de ambientes virtuais.

![list](https://i.imgur.com/BcibwCB.png)
