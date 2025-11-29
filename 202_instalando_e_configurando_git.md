# Instalação e Configuração do Git

## Instalando o Git

Podemos baixar o Git através [deste link](https://git-scm.com/install/ "Download do Git").

Após o download, podemos instalar Git no Windows através do assistente de instalação padrão, de forma simples.

Par linux, temos na página de download o guia dos comandos para a instalação do programa para as distribuições mais populares, como Ubuntu e Debian, por exemplo.

## Configurando o Git

Para configurarmos o Git, podemos ir na pasta dos nossos arquivos, clicar com o botão direito dentro dela e clicar na opção `Open Git Bash Here`. Isso vai abrir um terminal de comandos dentro da pasta para que você utilize os comandos do _Git_.

Uma vez no terminal, podemos começar definindo as configurações de usuário do Git.

### Configurando o Usuário

Note que temos níveis de ambiente de configuração. Cada um desses níveis, vai compreender configurações em um tipo de informação diferente. São eles:

* `--global`: configurações do **usuário**

* `--system`: configurações do **sistema** e todos os usuários

* `--local`: configurações do **repositório** atual

Para armazenar as configurações de usuário, vamos utilizar variáveis globais:

```
git config --global user.name "PauloHLeme"
git config --global user.email "leme.paulo@gmail.com"
```

Se você quiser confirmar os dados que foram configurados, pode digitar no terminal:

```
git config user.name
git config user.email
```

E o Git vai te trazer o nome e o email salvos.

### Configurando o Branch Padrão

O Git trabalha com um sistema de _branchs_, que seriam uma espécie de ramificações que o código pode tomar, gerando versões alternativas com algumas modificações.

Por hora, vale dizer que boa parte do tempo vamos utilizar a branch padrão. A branch padrão, é onde o core, a base do código vai ser desenvolvida.

Em versões antigas do Git, a boa prática sugeria que o nome da versão padrão fosse `master`. Hoje, essa boa prática se alterou, e o nome da branch padrão passou a ser `main`, ou seja, a principal.

Quando instalamos o Git, pode ser que a branch padrão venha definida como `master` e, embora possamos alterar isso quando criamos um repositório novo, podemos também já fazer essa alteração de forma global, para que todo repositório novo seja criado seguindo a boa prática atual.

Se digitarmos o comando 

```
git config init.defaultBranch
```

O Git vai nos retornar uma mensagem dizendo qual a branch padrão atual. Caso ele retorne como resposta o termo `master`, podemos facilmente alterar isso de forma padrão digitando o comando

```
git config --global init.defaultBranch main
```

Note que colocamos agora não só o nome `main`, como também indicamos que é uma mudança de nível `--global`. Dessa forma, sempre que criarmos um novo repositório, ele deve vir com o branch nomeado corretamente.

### Autenticando no GitHub

O Git funciona de forma independente do GitHub, permitindo que você utilize apenas localmente no seu computador ou utilizando outros serviços ou servidores.

Hoje, subir seu repositório para o GitHub não só permite você ter ele armazenado em um servidor externo gratuito e acessível em qualquer outra máquina como também permite a colaboração, algo muito presente no ambiente de programação.

Vamos aprender no futuro como criar repositórios no GitHub, mas para fins de aula agora basta clicar no canto superior direito, no ícone de mais, e selecionar _new repository_.

Para utilizarmos nosso Git juntamente com o GitHub, temos que autenticar o acesso, ou seja, permitir que o Git acesse o GitHub.

Para isso, temos duas opções:

#### Via Token

Para criarmos o Token de acesso, vamos clicar na foto de usuário, no canto superior direito, e ir em _settings_. Depois disso, clicamos na última opção, _developer settings_.

Lá dentro, teremos ainda a opção de _personal access tokens_ e então _tokens (classic)_.

Nesta página, vamos pedir para gerar um novo token, dando um nome a ele, uma data de validade do token, se você quiser, e por último as permissões dele, que podem ser neste caso a de `repo`, ou seja, gerenciamento de repositórios.

Ao gerarmos o token, o Github vai gerar um código aleatório que devemos copiar e colar no terminal do git bash. Após isso, esse código não poderá mais ser acessado!

Agora vamos acessar o repositório que criamos no GitHub com o comando `git clone` e na frente dele o link do repositório, exemplo:

```
git clone https://github.com/PauloHLeme/bootcamp-dio-santander-caderno-de-estudos
```

Se este for o primeiro acesso, o Git vai pedir seu nome de usuário do GitHub e depois a senha.

Neste caso, você não vai utilizar a senha, mas sim o token que foi gerado.

Para deixar essas credenciais salvas, antes de clonarmos um repositório, podemos enviar o comando `git config --global credential.helper store`. Dessa forma, ao enviarmos o usuário e o token, vamos armazenar essas informações para uso futuro. Mas faça isso apenas se você tiver segurança de que essa máquina é pessoal e segura.

#### Via SSH

SSH é a sigla para *S*ecure **Sh**ell, um sistema de rede que permite acesso a servidores ou outros computadores de forma simples e segura.

Para acessarmos via SSH, nós acessamos novamente o menu de configurações através da nossa foto no canto superior direito do GitHub e acessar a opção _Settings_.

Depois acessamos a opção _SSH and GPG keys_ e clicamos na _connecting to GitHub using SSH keys_. Essa opção vai te levar até [esse site](https://docs.github.com/pt/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent "Configurando SSH").

Uma vez na página, podemos ir até a sessão de "Gerar nova chave SSH" e seguirmos o passo a passo.

**[Voltar para o índice](README.md)**