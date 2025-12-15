# Ferramentas para ETL

As ferramentas são softwares feitos parra facilitar o processo de integração de dados.

Elas começaram para serem utilizadas em projetos de _Data Warehouses_ e _Business Inteligence_, mas hoje já se extendem para processos de integração de softwares, bancos de dados, Big Data e diversos projetos que necessitem de informações de fontes diversas.

## Ferramentas

A maioria das ferramentas para ETL envolvem um custo para acesso aos seus serviços, dadas principalmente as necessidades de conexão, armazenamento em nuvem e todo um aparato de segurança robusto. De qualquer forma, temos alternativas também Open Source de algumas ferramentas.

### Ferramentas Fechadas


* [IBM Data Stage](https://www.ibm.com/products/datastage)
* [Oracle Data Integrator (ODI)](https://www.oracle.com/middleware/data-integration/data-integrator/)
* [Informatica PowerCenter](https://www.informatica.com/products/data-integration/powercenter.html)
* [Microsoft SQL Server Integration Services (SSIS)](https://learn.microsoft.com/pt-br/sql/integration-services/sql-server-integration-services?view=sql-server-ver16)

###  Ferramentas Open Source

* [Talend Open Studio](https://www.talend.com/products/talend-open-studio/)
* [Apache NiFi](https://nifi.apache.org/)
* [Luigi](https://luigi.readthedocs.io/en/stable/)

## ETL para Big Data

Em Big Data, o processo de Carga, que é a primeira parte do Extract, também é conhecido como Ingestão de Dados.

Com o crescimento dos projetos de Big Data, mais aumenta-se a necessidade de ETL para plataformas bem diversas e heterogêneas.

* Sqoop: Ferramenta para movimentar dados entre bancos de dados e o Hadoop
* Hive: Ambiente SQL sobre um cluster Hadoop
* Pig: Ferramenta de Script para transformação e professamento de dados
* Spark: Framework de processamento em memória

### O que é Hadoop?

Hadoop é uma plataforma em Java para computação distribuída voltada para clusters com  processamento de grandes volumes de dados e atenção a tolerância a falhas.



**[Voltar para o índice](/README.md)**