# Etapas para ETL

## Extract (Extração)

O processo de extração de dados consiste na comunicação com diversos sistemas de dados para a captura destes dados e inserção posterior no destino, seja ele um ambiente de preparação, ou _staging area_, seja ele outro local onde vamos trabalhar com tais dados.

Neste ponto é importante que seu sistema seja capaz de conversar com diversos tipos diferentes de dados, pois pode ser que cada sistema que capturemos informação venha com um tipo de arquivo ou estrutura diferente.

## Transform (Transformação)

A transformação é composta por várias etapas, passando pela padronização dos dados, pela limpeza deles e pelo trabalho de análise de qualidade destes dados.

Sistemas diferentes de dados tem estruturas e padrões diferentes de dados, e são questões como estas que são tratadas no processo de transformação. Um mesmo tipo de dado de um DB pode ser do tipo VARCHAR2, enquanto de outro ser apenas VARCHAR. Um mesmo tipo de dado pode estar com a _label_ nomeUsuario em um sistema e nome_usuario em outro. As datas podem estar com o padrão americano em um DB e o padrão internacional em outro! É para isso que o processo de transformação serve, tratar cada um desses casos e uniformizar a informação.

## Load (Carregamento)

É a etapa final do ETL, onde os dados extraídos e transformados serão lidos e carregados para o destino final, como um Data Warehouse ou um Data Mart.

## Vantagens do ETL

* Garantia significativa da qualidade dos dados
* Funcionalidade de execução 
* Desenvolvimento das cargas facilitado
* Manutenção simples das cargas
* Metainformação automática pelas ferramentas
* Performance de acordo com as ferramentas
* Transferência entre servidores
* Conectividade entre o serviço final e as fontes dos dados
* Reinicialização sem codificação
* Segurança e Estabilidade se bem articulados

**[Voltar para o índice](/README.md)**