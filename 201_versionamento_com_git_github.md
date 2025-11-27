# Versionamento de Código

## O que é versionamento

Versionamento é o registro e controle detalhado de alterações no código, permitindo um maior controle, segurança e organização do desenvolvimento.

### VCS Centralizado (CVCS)

Se trata de um servidor que armazena todo o versionamento, onde os computadores estão vinculados. Ele tem todos os benefícios do versionamento, mas ficamos limitados a apenas uma máquina que, em caso de falha, pode causar atrasos ou até a perda de todo o trabalho

### VCS Distribuído (DVCS)

Além do arquivo ficar salvo no servidor, uma cópia do arquivo fica em cada computador. Dessa forma, mais espaço vai ser consumido, mas você tem uma redundância para segurança e flexibilidade, permitindo trabalhar de forma offline

## Git

O Git é um sistema de controle de versão distribuído, e atualmente é o sistema mais utilizado, sendo gratuito, *Open Source*, leve e com funções avançadas como ramificações e fusões de código.

### Fluxo do Git

* `git clone` serve para clonar um repositório, ou seja, o sistema de "arquivos" de um código, e entregar para o seu computador localmente

* `git commit` serve para gravar as alterações localmente no seu repositório

* `git pull` serve para "puxar as alterações efetuadas no código durante o período entre o pull que foi feito anteriormente e agora. Com o pull, nós podemos buscar essas alterações e mesclá-las no nosso arquivo local.

* `git push` serve para enviar o seu repositório local para o repositório remoto, o tornando disponível para os demais usuários ou para você mesmo no futuro.

> Podem existir conflitos durante os pulls e os pushs, mas isso aprenderemos a trabalhar logo mais.

## GitHub

É uma ferramenta que oferece uma hospedagem de repositórios utilizando o versionamento com o Git, e que permite compartilhamento e colaboração de códigos de forma online.

Se destaca por ser o mais utilizado no mundo e contar com uma comunidade ativa e dinâmica, servindo como uma "rede social" para desenvolvedores.

Enquanto o Git faz todo o serviço de versionamento, o GitHub serve como um servidor web para seu repositório.

### Utilizando

O GitHub é uma plataforma majoritariamente gratuita, onde você precisa [acessar](https://github.com/ "página inicial do GitHub"), se cadastrar e fazer um login para poder utilizar o serviço.

Uma vez cadastrado e acessado, você pode personalizar seu perfil com nome, descrição, foto e outras opções e também utilizar as principais funções do site, como criar seus repositórios ou clonar repositórios de projetos que ache interessantes.

### Vale dizer

Segurança nunca é demais. Lembre-se de utilizar a Autenticação de Dois Fatores para aumentar a segurança do seu código.

**[Voltar para o índice](README.md)**