# Introdução a Bancos de Dados Relacionais

## Conceitos básicos de Bancos de Dados

Bancos de dados são coleções de informações ou dados de forma organizada e estruturada, atualmente armazeznada de forma eletrônica em um computador.

### Tipos de Bancos de Dados

* Relacionais / SQL
* Não Relacionais / NoSQL
* Orientado a Objetos
* Hierárquico

### SGBD

SGBD, ou Sistema de Gerenciamento de Banco de Dados são sistemas que utilizamos para acessar, gravar, armazenar, assegurar e tratar os dados do nosso banco. São os sistemas que fazem a ponte entre o programador e a máquina.

### CRUD

É a forma de trabalharmos com nossos bancos de dados, sendo um acrônimo para _Create_, _Read_, _Update_ e _Delete_, as 4 formas de interagirmos com o Banco de Dados, ou DB.

### Estrutura de um DB Relacional

O DB é composto por várias tabelas que podem ser relacionadas entre si por algumas chaves relacionais.

A tabela por sua vez é composta por colunas de dados, como nome, idade, nascimento, país...

As informações são armazenadas nas linhas da tabela, que também podem ser conhecidas como tuplas.

Chaves primárias são os valores únicos que servem como identificador de cada linha da tabela, que também podem receber chaves estrangeiras que servem para ligar com as tabelas as quais elas se relacionam.

### Características do DB Relacional

* Relacionamento entre tabelas
* Linguagem de consulta Estruturada(SQL)
* Integridade referencial
* Normalização dos dados
* Segurança
* Flexibilidade e extensibilidade
* Suporte a transações ACID

### Transações ACID

São um conjunto de propriedades de um DB relacional que garante operações executadas de maneira segura e confiável. São elas:

* Atomicidade
* Consistência
* Isolamento
* Durabilidade

Neste padrão, ou todas as operações são executadas, ou nenhuma delas é, garantindo que o processo ocorra de forma segura ou então não ocorra de forma alguma.

## Conceitos Básicos do SQL

SQL é a sigla para _Structured Query Language_, ou Linguagem de Consulta Estruturada.

Ele serve justamente para conversarmos com a máquina e realizar as operações de CRUD.

### Organização da SQL

* DQL - Data Query Language
    
    Serve para realizarmos a consulta dos dados da nossa DB, principalmente através do comando `SELECT`.

* DML - Data Manipulation Language

    Serve para manipularmos os dados, inserindo, atualizando ou apagando dados com os comandos `INSERT`, `UPDATE` e `DELETE`.

* DDL - Data Definition Language

    Faz a definição dos dados, criando as estruturas da nossa tabela com comandos como `CREATE`, `ALTER` e `DROP`.

* DCL - Data Control Language

    Faz o controle de acesso e permissões dos usuários, com os comandos `GRANT` e `REVOKE`.

* DTL - Data Transaction Language

    Gerencia as transações para evitar que elas sejam executadas pela metade, com os comandos `COMMIT`, `BEGIN` e `ROLLBACK`.

### Sintaxe Básica - Nomenclatura

* Os nomes devem começar com uma letra ou com um sublinhado`_`.
* Os nomes podem conter letras, números e caracteres sublinhados
* É _Case Sensitive_

## MER e DER

### Modelo Entidade-Relacionamento (MER)

É um modelo conceitual que utilizamos para realizar a representação dos nossos bancos de dados. Ele é feito utilizando-se de Diagramas Entidade-Relacionamento (DER), que é a versão gráfica deste modelo.

Para realizar a modelagem virtual deste relacionamento, podemos utilizar o site [Creately](https://app.creately.com/ "Criação online de diagramas") ou então o [Quick Database Diagrams](https://app.quickdatabasediagrams.com/#/ "Assistente de Criação de Diagramas").

### Entidades

Entidades são as representações das tabelas. Elas devem ser nomeadas com substantivos concretos ou abstratos que representem de forma clara a sua função.

Se estivermos fazendo um DB de reservas de hotel, por exemplo, podemos ter as entidades `usuarios` e `reservas`.

### Atributos

São as características ou propriedades das entidades, contendo informações específicas da entidade.

No nosso exemplo de hotel, podemos ter os atributos `nome`, `email` e `senha` dentro da entidade usuarios, enquanto na entidade reservas podemos ter atributos como `data_inicial`, `data_final` e `numero_do_quarto`.

### Relacionamentos

Relacionamentos são as associações entre as entidades, as tabelas do nosso DB. 

Quando realizamos o MER e o DER, costumamos representá-los por **losangos**, e marcamos dentro deles o nome da relação.

No nosso exemplo, a entidade `usuarios` se relaciona com a entidade `reservas` a cada vez que o cliente realiza uma nova reserva, então um bom nome para a relação pode ser `realiza`.

#### Cardinalidade

A relação de relacionamentos pode ser:

* 1..1 (um para um)
* 1..n (um para muitos)
* n..n (muitos para muitos)

## Configuração de Ambiente

Para montarmos nosso banco de dados, vamos utilizar a ferramenta online [CloudClusters](https://clients.cloudclusters.io//ordering).

**[Voltar para o índice](/README.md)**