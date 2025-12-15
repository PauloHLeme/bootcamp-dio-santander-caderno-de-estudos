# Introdução ao ETL

## O que é

ETL é a sigla para os três processos trabalhados na manipulação dos dados, _Extract_, _Transform_ e _Load_, ou em português, Extrair, Transformar e Carregar.

Esse processo faz o meio de campo, a _data integration_ entre a coleta dos dados de diversos ambientes e a entregemos de forma coesa para um _data warehouse_ que vai manter todos esses dados de forma consistente.

### Extract

É onde importamos os dados de diferentes fontes, tipos e formatos, como pastas, arquivos CSV, TXT, JSON, planilhas, banco de dados, APIs, etc.

### Transform

É onde transformamos os dados das fontes diversas para colunas e linhas, definimos os tipos corretos de dados, mesclamos, acrescentamos, eliminamos, listamos, tabulamos...

### Load

Com os dados unificados em um modelo padronizado, podemos fazer o carregamento deste para o DW, BI, nuvem ou para o sistema que for solicitado.

## Ferramentas de ETL

Existem diveras ferramentas disponíveis no mercado para o tratamento de dados no processo de ETL. Algumas delas são:

* IBM Information Server (Data Storage)
* Oracle Data Integrator (ODI)
* Informatica Power Center
* Microsoft Integratino Services (SSIS)

Além destas, temos também um conjunto Open Source como:

* PDI - Pentaho Data integrator
* Talend ETL

Neste curso, vamos utilizar o **_Luigi_**, que é uma ferramenta para manipulação de dados via Python.

**[Voltar para o índice](/README.md)**