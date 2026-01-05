# Armazenamento e Banco de Dados em AWS

## Armazenamento de Dados na Nuvem

Com um mundo cada vez mais voltado para dados e coleta e processamento de informações, temos desenvolvido cada vez mais maneiras de armazenarmos os dados com os quais trabalhamos nos sistemas do dia a dia.

Para armazenarmos dados na AWS, temos algumas opções de serviços e de estruturas de dados, com três delas tendo a maior gama de usos, que são:

### Armazenamento de Objetos

Nesta estrutura, os dados vão ser tratados como objetos divididos entre arquivos e metadados, que são as informações que descrevem o arquivo.

É uma estrutura muito válida para Dados não estruturados, como Data Lakes, mídias, backups e recuperação.


### Armazenamento de Arquivos

Sistema que armazena arquivos para compartilhá-los em rede com outros computadores e usuários.

Utilizado para Ferramentas de Desenvolvimento, diretórios compartilhados e sistema de arquivos de um escritório

### Armazenamento de Blocos

Estrutura de armazenamento de HDD e SSD, guardando vários dados de diferentes arquivos e formatos em um bloco único de dados que são coesos entre si.

São utilizados para guardar informações de máquinas virtuais, contêiners e bancos de dados.

## Volume Instance Store

As Instâncias EC2 que utilizamos não ficam armazenadas em um computador físico específico. Elas são imagens armazenadas que, no momento que pedimos a execução, são iniciadas em uma máquina disponível. Se a colocarmos para hibernar ou desligar e depois reiniciar, nós vamos muito provavelmente ter ela montada em outra máquina servidor física.

A EC2 utiliza o armazenamento de informações do tipo VIS, ou _Volume Instance Store_, que é um armazenamento físico ligado diretamente no servidor que a instância está rodando, e que se a instância for para outra máquina, tudo o que estava nela será perdido. Dessa forma, ela pode ser boa para armazenar buffers, caches ou dados de rascunho, mas não para dados.

## EBS - Elastic Block Store

Para solucionarmos os dados que vamos utilizar em uma EC2, temos o EBS, que faz o armazenamento de dados em blocos por meio de HDs físicos. Cada EBS será conhecido como um volume que está armazenando os dados para a sua EC2.

Para criarmos um EBS, nós definimos o tipo de volume, o tamanho e as configurações e a Instância EC2 a qual ele será ligado.

### Tipos de Volumes

#### HDD

Armazenamento via Disco Rígido. Ele é mais lento, porém mais barato. Separado ainda por Disco Rígido Frio e otimizado para Throughput.

#### SSD

Armazenamento Flash de Estado Sólido. É mais caro, porém bem mais rápido. Se divide em SSD de uso geral ou de IOPS provisionados.

### Backups

Os backups funcionam de forma de Snapshots, que são como fotografias dos volumes, representando o estado que ele se encontrava em determinado momento, e são incrementais, salvando apenas as alterações de snapshot para snapshot, ao invés de ficar armazenando um backup completo por vez, o que custaria muito espaço.

## Amazon S3

S3, ou _Simple Storage Service_, é um serviço de armazenamento de objetos, que são dados armazenados em conjuntos de dados, metadados e chaves.

Dados são os arquivos em si, Metadados são informações descritivas do objeto armazenadas em conjunto chave-valor, como tipo, formato, encoding, ou outras informações relevantes e a Chave é o nome do arquivo.

Estes objetos devem ser armazenados dentro do que a AWS chama de _Bucket_. Esses buckets são como pastas especializadas para o sistema S3.

Podemos armazenar qualquer número de objetos dentro de um bucket, desde que cada objeto tenha no máximo 5TB de tamanho.

Podemos ter no máximo 100 Buckets por conta, e se precisarmos de mais, temos de entrar em contato com a Amazon para isso.

Podemos ainda criar um versionamento de objetos por meio de ativação do recurso, bem como controlar acesso por objeto.

Os Sistemas S3 são muito utilizados em:

* Data Lakes
* Arquivamento de Dados
* Hospedagem de Sites Estáticos

### Classes de Armazenamento S3

O S3 é um serviço versátil, e desta forma foram criadas algumas categorias específicas para que o armazenamento se adeque melhor no seu negócio e se encaixe melhor no quesito custo. Para isso, os fatores principais a se determinar na hora de escolher uma categoria são **Frequencia de acesso aos Dados** e ****Disponibilidade dos Dados**.

* #### S3 Standard

É a classe padrão, para dados de uso geral, com alta durabilidade e disponibilidade. É a categoria de custo mais alto, pois garante acesso rápido e de alta frequência

Ele armazena no mínimo em três zonas de disponibilidade.

* #### S3 Standard-Infrequent Access (S3 Standard-IA)

Para dados acessados com pouca frequência, mas que exigem acesso rápido quando necessário.

Também armazena os dados em no mínimo três zonas de disponibilidade, mas oferece uma taxa de GB e de recuperação mais baixa.

* #### S3 One Zone-Infrequent Access (S3 One Zone-IA)

Semelhante ao S3 Standard-IA, mas armazena dados em uma única Zona de Disponibilidade, o que o torna mais barato, mas com menor durabilidade e disponibilidade.

É útil para dados pouco utilizados e nos quais você consiga recuperar os dados de outra forma, devido a zona única.

* #### S3 Intelligent-Tiering

Para dados com padrões de acesso desconhecidos ou variáveis. Ele move automaticamente os dados para as camadas de acesso mais econômicas, sem impacto no desempenho.

Neste modelo, um dado inicia no S3 Standard, e se passar 30 dias sem acesso, este objeto vai para o Infrequent Access, e se passarem 90 dias, ele vai para o Archive Instant Access.

* #### S3 Glacier Instant Retrieval

Para dados arquivados que precisam de recuperação instantânea.

Neste ponto, os dados são acessados tão rapidamente quanto ao Standard, mas ficam armazenados de forma mais longa. Muito bom para dados de usos trimestrais.

* #### S3 Glacier Flexible Retrieval

Para dados arquivados que são acessados com pouca frequência e que podem ser recuperados em minutos ou horas.

Muito bom para dados que são acessados apenas 1 ou 2 vezes por ano, como backups sem urgência e recuperação de falhas catastróficas.

* #### S3 Glacier Deep Archive

A opção de armazenamento de menor custo para arquivamento de longo prazo, com recuperação que pode levar até 12 horas.

É útil para arquivamento de dados para cobrir exigências legais, como informações que são obrigatórias de serem guardadas por 5, 7 ou 10 anos por questões legais.

## EFS - Elastic File System

O EFS fornece um sistema de armazenamento de arquivos de maneira Servless e com total elasticidade, além de permitir receber Petabytes de informação.

Ele é compatível com o protocolo NFS de transferência de arquivos e pode ser acessado também por serviços EC2, Lambda e ECS, inclusive com acesso simultâneo de dados.

Ele tem as classes de armazenamento Padrão Standard e Standard - IA, além de classes One Zone e One Zone - IA.

Devido ao seu multiacesso, ele é excelente para armazenamento de arquivos e diretórios que precisam ser compartilhados e acessados por múltiplos usuários e serviços.

## RDS - Relational Database Service

É o serviço de armazenamento de banco de dados relacionais dentro da AWS.

O RDS trás configuração de DB facilitado, patches automaticos, Backup, redundância e recuperação de desastres. Desta forma, ele se torna uma opção bem mais segura e prática para armazenamento de dados relacionais do que rodar uma instância EC2 com um SGBD instalado.

O RDS suporta diversos mecanismos de SGBD, como MySQL, PostgreSQL, Oracle, MariaDB e SqlServer.

Além disso, temos também o Amazon Aurora, que é um produto parecido com RDS, mas que funciona de maneira Servless, com suporte a MySQL e PostgreSQL. Ele tem um preço 90% mais barato, além de replicação multi-regional com até 15 réplicas e backup contínuo e automatizado para um S3.

## DynamoDB

É a solução AWS para DBs não relacionais. Ele também é um serviço Servless e com performance abaixo dos 10ms e replicação regional. Ele é muito útil para quantidades grandes de dados e exigência de Baixa Latência.

Ele trabalha com tabelas de itens com pares de chave-valor.

## Outros Serviços de DB

É importante reforcar que 
> A necessidade de negócio escolhe o tipo de banco de dados.

Os DBs apresentados anteriormente são os mais utilizados, porém temos vários outros serviços, e eles podem sim ser utilizados se forem o que mais se encaixam na necessidade do negócio e na tecnologia utilizada.

### Amazon DocumentDB

Orientado a documentos e compatível com MongoDB.

### Amazon Neptune

Voltado para bancos de dados em grafos, ideiais para Redes Sociais, mecanismos de recomendações e detecção de fraude

### Amazon QLDB

_Quantum Ledger Database_, banco de dados ledger, que é um tipo de DB imutável, indicado para históricos, registros digitais e transações financeiras.

### Amazon DynamoDB Accelerator

Também conhecido como DAX, tem uma camada de cache nativa para otimização de tempo de leitura dos dados.

### Amazon Elasticache

Camada de cache sobre bancos de dados relacionais. É compatível com Redis e memcached, para otimização de consultas de altíssima frequência.

## Amazon Redshift e Big Data

Em um mundo regido por dados, com fontes de dados de uma empresa vindo de infinitas origens, nos mais variados formatos, com db relacionais, não relacionais, arquivos de texto, imagem, vídeo, apresentações, etc, os nossos dados podem acabar embaralhados em formatos que não se conversam e gerar confusão para transformarmos eles em informações valiosas.

Nesse contexto, uma empresa que utiliza a AWS e trabalha com esses volumes de Big Data pode se valer do Amazon Redshift.

O Redshift é o serviço de Data Warehouse de análise de Big Data. Ele oferece justamente a coleta dos dados das várias fontes, projetando relações e tendências dessas informações por meio de um tratamento interno e permitindo até mesmo que façamos consultas SQL em toda essa base através do serviço integrado, o Redshift Spectrum.

**[Voltar para o índice](/README.md)**