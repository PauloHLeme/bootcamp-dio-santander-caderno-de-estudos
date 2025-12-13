# Conceitos Básicos dos Bancos de Dados NoSQL

## Diferenças entre Bancos de Dados Relacionais e Não Relacionais

Os bancos de dados não relacionais, conhecidos como NoSQL, diminutivo de _Not Only SQL_, trazem o conceito de não serem conduzidos apenas por relacionamento, fugindo do padrão de tabelas e relacionamentos.

Eles foram projetados para lidar com alto volume de dados e flexibilidade. Vieram para resolver o problema de falta de escalabilidade dos bancos relacionais, porém não trás uma consistência imediata nas replicações dos seus dados.

|SQL|NoSQL|
|---|---|
|Modelo de dados fixo | Modelo de dados flexível|
| Escalabilidade Vertical(hardware) | Escalabilidade Horizontal |
| Transações ACID 100% | Transações ACID total ou parcialmente ausentes |
| Linguagem de Consulta SQL | Cada SGBD tem sua Linguagem |

## Tipos de NoSQL

Temos alguns tipos de DBs NoSQL, dentre eles, temos:

###  _Key-Value_

Armazena dados com pares de chave e valor, onde cada chave é um identificador único para acessar o valor correspondente.

**Exemplos de SGBD**: Redis, Riak, Amazon DynamoDB

**Usos**: Por ter rápido acesso a informação, é excelente para bancos de dados para informações de sessão de usuários de um site; Informações altamente consultadas e pouco passíveis de alterações.

### _Documentos_

Armazenam dados em documentos semiestruturados, como documentos JSON ou BSON

**Exemplos de SGBD**: MongoDB, Couchbase, Apache Couchdb

**Usos**: Por ser flexível e fácil de ser manipulado e ter diversos tipos de informações armazenados, são úteis para armazenar dados de produtos de e-commerces; Bancos de dados com informações que variam, onde alguns itens são registrados em peso, outros em ml, outros em unidades, por exemplo.


### _Colunas_

Armazenam dados em formato de colunas, permitindo alta escalabilidade e eficiência em diversas consultas

**Exemplos de SGBD**: Cassandra, HBase, ScyllaDB

**Usos**: Sistemas de registros de aplicativos podem utilizar esse tipo de DB para armazenar seus registros de log

### _Grafos_

Armazenar e consultar dados interconectados, onde os relacionamentos entre os dados são tão importantes quanto os próprios dados

**Exemplos de SGBD**: Neo4j, Amazon Neptune, JanusGraph

**Usos**: Redes sociais são os melhores exemplos, pois armazenam dados de conexões entre os usuários e geram consultas eficientes através deste tipo de NoSQL.

Estes são os mais utilizados, mas existem diversos outros modelos de padrões NoSQL.

**[Voltar para o índice](/README.md)**