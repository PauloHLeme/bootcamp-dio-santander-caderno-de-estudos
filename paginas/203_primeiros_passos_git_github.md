# Primeiros Passos com Git e GitHub

## Criando e Clonando Repositórios

Podemos criar um novo repositório na nossa máquina de duas formas. A primeira é quando escolhemos uma pasta do nosso computador para criar um repositório do zero, enquanto na outra nós clonamos um repositório iniciado no GitHub e trazemos ele para a nossa máquina.

### Criando um Repositório

Para criarmos um repositório a partir de uma pasta local, basta navegarmos até a pasta através do explorador de arquivos, entrarmos na pasta, clicar com o botão direito e abrirmos o _git bash_ dentro daquele local.

Uma vez com o terminal aberto, basta utilizarmos o comando `git init`. Pronto, simples assim!

Dentro da pasta do projeto, o Git vai criar uma pasta oculta de nome `.git`, onde vai armazenar todas as informações necessárias para o gerenciamento do repositório.

### Clonando um Repositório

Clonar um repositório existente também não é difícil.

Para isso, vamos acessar o GitHub e abrir o repositório que queremos utilizar. 

Na tela do repositório deve haver um botão verde com o nome _code_. Ao clicar nele, uma opção aparecerá para um link https. Vamos copiar esse link para utilizar no local onde clonaremos os arquivos.

Agora vamos até o local onde vamos colocar o arquivo, e como de costume, abrimos o _git bash_.

Uma vez no terminal, digitamos `git clone` e o link que copiamos do GitHub, por exemplo:

```
git clone https://github.com/PauloHLeme/aulas-git-e-github.git
```

Pronto! Com isso feito, já temos o repositório do GitHub salvo localmente.

Podemos ainda mudar o nome da pasta na hora de realizar o clone, bastando para isso colocarmos o nome desejado na frente do comando:

```
git clone https://github.com/PauloHLeme/aulas-git-e-github.git novo-nome-da-pasta
```

## Subindo o Repositório

Uma vez criado o repositorio localmente via `git init`, nós precisamos agora subir ele para o GitHub. Para isso, vamos voltar primeiro ao GitHub para criarmos o caminho que será utilizado para seu armazenamento.

Uma vez no GitHub, vamos criar um novo repositório no ícone de + no canto superior direito, e criar um novo repositório.

Depois disso, vamos no botão de _code_ e pegar o link HTTPS.

Com isso feito, voltamos no terminal Git Bash e digitamos

```
git remote add origin https://github.com/PauloHLeme/novo-repositorio.git
```

Agora já temos vinculados o arquivo local com a hospedagem no GitHub.

## Criando seu Readme

O arquivo `Readme.md` é um arquivo do tipo _markdown_, que é uma linguagem de marcação. Linguagens de marcação são utilizadas para a exibição de textos formatados de acordo com os estilos configurados para serem compreensíveis por humanos e máquinas.

Podemos criar um arquivo do tipo `.md` através de um editor de texto simples, como o bloco de notas, o Visual Studio Code ou serviços online como o [redme.so](https://readme.so/pt "criador de arquivos Readme.md").

### Exemplo de Readme com explicações

As Hashtags (#) representam Títulos em Markdown. Temos do título 1, o principal, simbolizado com uma hashtag, até o título 6, o menor, simbolizado com seis hashtags. Ao colocarmos a hashtag, o markdown colocará um grau de evidência diferente no texto.

```
# DIO | Resumos Git e GitHub

Repositório para armazenar resumos sobre Git e GitHub do Bootcamp Santander em parceria com a [DIO](https://www.dio.me/"Site da DIO").
```

Os links são colocados entre dois sinais, primeiro os colchetes[] e depois as aspas(). Dentro dos colchetes colocamos o texto que será exibido no arquivo, e dentro das aspas, o link desejado. Não é obrigatório, mas podemos ainda colocar entre aspas"" um texto que será exibido ao deixar o mouse sobre o link.

```
## 📝 Documentação

-[Documentação Git](https://git-scm.com/doc)
-[Documentação GitHub](https://docs.github.com/)
```

Temos também as tabelas, que são representadas entre os pipes`|`. Após a linha de título da tabela, adicionamos os Pipes seguidos de 3 traços para indicar que vamos começar o conteúdo. Cada bloco de traços indica uma coluna da tabela.

```
## 🖥️ Resumo das Aulas

| Aulas | Resumos   |
|---|---|
|Gravando Alterações no Repositório Local|[Resumos](resumo.md)|

```

Para criarmos campos de código, colocamos 3 crases para iniciar o campo e mais 3 crases abaixo para finalizar.

````
```
git init
```
```` 

Existem muitas outras possiblidades em markdown, e podemos encontrar maiores informações [aqui](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet "Guia Markdown").


## Salvando Alterações

Agora que criamos o nosso repositório e já criamos um arquivo readme, temos que carregar essa alteração para que ela esteja armazenada no nosso repositório local e também no GitHub.

Primeiramente, vamos adicionar o nosso arquivo readme.md a lista de arquivos conhecidos pelo Git. Para isso, no Git Bash, digitamos

```
git add readme.md
```
Agora o Git sabe que vamos subir esse arquivo no repositório. Com isso, temos que enviar essa alteração para ele, e isso é feito com o comando `commit`:

```
git commit -m "primeiro commit"
```

Além do comando `commit`, passamos o indicador `-m`para dizermos que vamos inserir uma mensagem, que serve para controle do que fazemos a cada commit, e entre aspas escrevemos essa mensagem.

Agora, com o commit feito, o Git já tem o repositório salvo localmente.

## Desfazendo Alterações

* `rm -rf .git`:
    
    Comando `rm`serve para remover um arquivo, já o `-rf`serve para forçar a remoção dele e do conteúdo que estiver lá. Remover o `.git` retira o status de repositório local.

* `git restore nomedoarquivo.extensão`:

    Serve para restaurar o arquivo ao estado que ele estava quando foi commitado. É perfeito para quando apagamos ou alteramos algo indesejado.

    **Mas cuidado!** Isso remove tudo o que você tiver feito após o commit!

* `git commit --amend -m "mensagem"`:

    Serve para alterar a mensagem do último commit.

* `git reset --soft chavedocommitdesejado`:

    Apaga os commits anteriores, deixando o repositório no estágio do commit selecionado, mas não apaga os dados dos arquivos, deixando eles na área de preparação, como se tivéssemos dado um `git add .` nestes arquivos, mas ainda não commitados

* `git reset --mixed chavedocommitdesesjado`:

    Como o reset soft, mas deixa os arquivos fora até mesmo do git add, o estágio de preparação.

* `git reset --hard chavedocommitdesejado`:

    Apaga de vez os arquivos do seu computador, deixando apenas o que estava feito no commit selecionado. **Use com cautela!**
    
É sempre bom fazer todas as alterações necessárias ainda no repositório local, uma vez que, trabalhando em projetos com colaboração de mais pessoas, conflitos podem surgir mais facilmente na hora de desfazer commits.

## Enviando e Baixando Alterações do Repositório Remoto

Para adicionar o repositório remoto, utilizamos o comando `git remote add origin link.do.repositório.github`.

Dessa forma, já falamos para o git que quando formos enviar o arquivo remotamente, será para este local.

Agora, sempre que formos enviar para o repositório remoto, vamos utilizar o comando `push`, ou de forma mais completa:

```
git push -u origin main
```

Para baixarmos os arquivos do repositório remoto para o nosso local, utilizamos o comando `git pull`.

## Trabalhando com Branches

Branchs são ramificações do projeto. Por padrão, um projeto sempre tem uma branch padrão, que pode ser a `main` ou `master`, em repositórios antigos.

Podemos criar ramificações para testarmos funções novas para a aplicação que ainda não queremos presentes no código central dela, por exemplo.

Para trocarmos para uma branch nova, utilizamos o comando `git checkout`.

```
git checkout -b nomedabranch
```

Como tivemos que criar uma nova branch, nós colocamos também a opção `-b`. Se estivéssemos acessando uma branch já existente, não precisaríamos dessa opção.

Temos o comando `Git branch -v` serve para mostrar em qual commit cada branch está, para visualizarmos qual projeto está mais a frente ou atrás.

### Mesclando branches

Digamos que o projeto na branch teste foi um sucesso e nós vamos implementá-lo na nossa aplicação, agora temos que passar ele pra main. Para isso, vamos utilizar o comando

```
git merge nomedabranch
```

Pronto, agora os arquivos e alterações realizados na branch de teste já estão ativos no código principal, na main.

### Deletando branches

Uma vez que já utilizamos a branch teste e não precisamos mais dela, não só podemos como também é uma boa prática excluí-las.

Para isso, vamos utilizar o comando `git branch` e passar a opção `-d` e o nome da branch que queremos deletar.

```
git branch -d nomedabranch
```

### Conflitos de Merge

Ao fazermos um push de um arquivo que foi alterado remotamente e que nós também alteramos localmente, podemos ter conflitos.

Neste caso, o git vai deixar marcado os dois casos no arquivo, e caberá a nós escolhermos o que queremos manter e excluirmos o que vai ser retirado. Após isso, podemos dar o push e enviar o commit com o conflito resolvido sem maiores problemas.

## Comandos Úteis

* `git fetch`:

    Serve para buscar e baixar o último commit do repositório remoto, mas sem que ele aplique as alterações no repositório local. Após isso, podemos utilizar o `git diff`

* `git diff`:

    Serve para visualizarmos a diferença entre branches. Utilizamos ele passando o nome das duas branches que queremos comparar, como `git diff main origin/main`, comparando assim a principal do repositório local com a principal do repositório remoto após termos feito um git fetch. Após aceitarmos a mudança, só unir tudo com `git merge origin/main`.

* `git clone url --branch nomedabranch --single-branch`:
    
    Lista de opções para clonarmos apenas a branch desejada de um projeto

* `git stash`:
    Arquiva uma modificação para uso posterior. Útil para quando você precisa pausar uma modificação que estava fazendo e criar uma branch nova que necessita dos arquivos como estavam no estado anterior, por exemplo. Podemos depois utilizar as opções

    * `git stash list`: lista as modificações arquivadas

    * `git stash pop`: deleta a última modificação arquivada

    * `git stash apply`: aplica a última modificação arquivada

**[Voltar para o índice](README.md)**