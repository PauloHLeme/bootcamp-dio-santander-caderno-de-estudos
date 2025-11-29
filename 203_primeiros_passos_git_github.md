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

**[Voltar para o índice](README.md)**