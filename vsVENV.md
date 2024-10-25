# VS CODE + Ambiente Virtuais

Caso o VS Code local não esteja configurado com extensões para Python, instale [Python Extension Pack by Don Jayamanne](https://marketplace.visualstudio.com/items?itemName=donjayamanne.python-extension-pack). Este pacote contém extensões para indentação, gerenciamento de ambientes virtuais entre outras utilidades.

![Pacote de extensões](https://i.imgur.com/nV3YFOl.png)
Para instalar o pacote via comando, abra a aba de pesquisa do VS Code (*CTRL+P por padrão*) e execute o comando `ext install donjayamanne.python-extension-pack`.







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

Caso esteja usando um ambiente virtual Python(alguma pasta .venv), o Windows pode dar crepe quando você tentar ativar o ambiente.
O terminal do VS Code vai retornar algo do tipo:
![Erro do Python Venv](https://i.imgur.com/HX6zHBX.png)

Para solucionar, você precisa permitir a execução de scripts no seu sistema, alterando a Política de Execução de Scripts.
Primeiro, procure a lista de políticas do seu sistema rodando o comando `Get-ExecutionPolicy -List` no PowerShell(Admin).
O terminal deve retornar algo parecido com isso:

![Lista de Políticas](https://i.imgur.com/OeZPqoi.png)

Para alterar a Política de Execução, use `Set-ExecutionPolicy PoliticaDesejada -Scope NomeDoScope`, substituindo `PoliticaDesejada` por `Undefined` ou `Unrestricted`. Substitua também `NomeDoScope` pelo nome de um dos escopos listados.
Isso permite que a execução seja habilitada apenas para um usuário local, por exemplo, o que pode passar por computadores com restrições ao usuário local.
Depois de realizar as mudanças desejadas, recarregue a janela do VS Code e tente executar o ambiente virtual novamente.






