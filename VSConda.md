# VS CODE + CONDA PARA BAGRES

Quando estiver programando em um ambiente virtual do Conda,
é conveniente pré-instalar a versão do Python desejada ao criar o ambiente
`conda create -n ENV_NAME python==PYTHON_VERSION`
Por exemplo, o argumento `python==3.10` vai pré-instalar o Python 3.10 e seus componentes no ambiente virtual. 

No canto inferior direito do VS Code, verifique se o interpretador é o mesmo do ambiente virtual.

![Checar interpretador](https://i.imgur.com/TriwnbM.png)

Ao clicar, uma lista de interpretadores disponíveis aparecerá na tela. Escolha o mais adequado para seu projeto.
Atenção aos diretórios de cada um. Se estão em pastas `usr` ou `bin` costumam ser nativos do sistema e separados de ambientes virtuais.
Sempre que instalar uma nova dependência, um refresh no interpretador pode ser necessário. 
Para isso, selecione outro pela lista de interpretadores e volte pro que estava usando após alguns segundos.

![Lista de interpretadores](https://i.imgur.com/BcibwCB.png)

Caso o VS Code local não esteja configurado com extensões para Python, instale [Python Extension Pack by Don Jayamanne](https://marketplace.visualstudio.com/items?itemName=donjayamanne.python-extension-pack). Este pacote contém extensões para indentação, gerenciamento de ambientes virtuais entre outras utilidades. 

Para instalar o pacote via comando, abra a aba de pesquisa do VS Code (*CTRL+P por padrão*) e execute o comando `ext install donjayamanne.python-extension-pack`.

![Pacote de extensões](https://i.imgur.com/nV3YFOl.png)

