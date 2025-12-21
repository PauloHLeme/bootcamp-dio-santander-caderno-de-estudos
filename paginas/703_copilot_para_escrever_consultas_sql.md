# Utilizando Copilot para Escrever Consultas SQL

## IA como Ferramenta de Produtividade

É legal saber que a IA vai ser muito útil como uma Ferramenta que nos auxilia a termos mais produtividade, isto é, fazermos aquilo que Já Sabemos com mais eficiência, e não para fazer tudo por nós, e nós só copiarmos.

## O que Vamos Contruir?

Nós vamos criar um DB que simula um banco de dados com informações de cards do jogo Pokemon TCG Pocket.

Cada carta do jogo contém uma série de informações diferentes, como Nome, Vida, Tipo, Estágio, Informações, Forças, Fraquezas e várias outras informações. Isso é um **prato cheio** para criarmos um banco de dados riquíssimo e com muitas informações para manipularmos.

Além destes dados de cada carta, temos dados que são externos aos elementos das mecânicas do jogo, como por exemplo as coleções que cada carta pertence, as condições de preservação da carta.

## Como Vamos Construir?

Vamos utiliza o Copilot para realizar a leitura das imagens e, junto com o prompt que passaremos, inferir quais são os campos necessários para a criação do banco de dados, além de nos auxiliar na construção deste banco.

## Setup do Projeto

O projeto com seus arquivos pode ser encontrado na pasta [e-cards](/exercícios/e-cards/), que se encontra na pasta de [exercícios](/exercícios/).

Nela, teremos nossos comandos para a criação da DB, das tables e dos dados, bem como os assets que vamos utilizar para a geração dos campos via Copilot. Outros elementos que porventura precisem ser criados durante a construção do projeto também estarão dentro desta mesma pasta, organizados de forma estruturada.

## Migrations

As Migrations são a junção de vários documentos SQL em um único arquivo, visando a facilitação de execução de um único bloco de comando. Durante a execução do nosso projeto, pegamos códigos presentes em diversos arquivos e fomos copiando e colando no SGBD para a criação das tabelas e inserção dos dados. Isso já foi um processo repetitivo para coisa de 2 a 4 arquivos, agora imagine você fazendo isso em 20, 40, 100 arquivos diferentes? Além de massante, nos trás perda de produtividade.

Para resolver isso, utilizamos as Migrations, que podem ser feitas através de um código do tipo `PS1` no Windows, ou em `ShellScript` no Linux.

Utilizando o Windows, podemos criar um arquivo que vai capturar todos os arquivos do tipo SQL dentro de uma pasta e realizar a junção de todos esses arquivos em um único, que podemos copiar e executar de uma só vez, salvando tempo e trazendo automação ao nosso serviço. Um exemplo deste tipo de arquivo pode ser visto [aqui](/exercícios/e-cards/db_scripts/seeds/to_migration.ps1 "Arquivo de Migration do tipo PS1").
