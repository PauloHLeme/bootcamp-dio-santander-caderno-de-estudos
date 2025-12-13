# Introdução ao MongoDB

O MongoDB é um banco de dados NoSQL orientado a documentos armazenados no formato BSON.

Ele possui uma estrutura semi-estruturada e é excelente para grandes volumes de dados.

## Vantagens

* Flexibilidade
* Escalabilidade
* Consultas ricas e complexas
* Alta disponibilidade e tolerância a falhas
* Comunidade Ativa e Suporte

## Desvantagens

* Menor constistência imediata
* Consultas complexas exigem alto conhecimento
* Maior consumo de espaço

## Utilizações

Pela alta escalabilidade, aplicações web costumam utilizar MongoDB para que o alto volume de clientes acessando consigam consultar os produtos de forma rápida e eficiente.

Análises de Big Data também se beneficiam do MongoDB para acesso ágil a estes dados

Armazenamentos de dados de alta variedade também é muito prático quando utilizado com o MongoDB, pois sendo semi-estrutudado, permite uma flexibilização.

## MongoDB Atlas

O [MongoDB Atlas](https://www.mongodb.com/cloud/atlas/platform) é uma plataforma da própria MongoDB que serve para armazenarmos na nuvem bancos de dados baseados nesta SGDB.

Apesar de existirem planos pagos, podemos acessar o plano gratuito para usos básicos, como o nosso curso.

## Modelagem de Dados Utilizando Documentos

Em um DataBase baseado em documentos, nós temos coleções, e dentro dessas coleções, temos os documentos. Todos os documentos devem estar dentro de coleções, que por sua vez, devem estar dentro de um database.

### Coleções

Coleções são agrupamentos lógicos de documentos. Estes documetos não precisam ter uma estrutura igual de seus elementos, apenas que eles sejam relacionados, fazendo sentido que estejam dentro de uma mesma coleção.

#### São características dos nomes das coleções:

* Sempre começar com uma letra ou com underscore `_`
* Podem conter letras, números ou underscores
* Não podem ser vazios
* Não podem ter mais de 64 bytes de comprimento

### Documentos

Os documentos são os arquivos que armazenam de fato os nossos dados, a representação dos dados

São armazenados em documentos BSON, que são uma representação binária de um arquivo JSON, trazendo estruturas flexíbeis e semiestruturadas.

Cada documento possui um identificador único chamado "_id" e é composto por pares de chaves e valores.

Os documentos podem assumir o valor máximo de 16MB.

Podemos ainda ter aninhamento de documentos, com dados BSON dentro de outros BSONs

### Tipos de dados

* `String`
* `Number`
* `Boolean`
* `Date`
* `Null`
* `ObjectId`

### Tipos de dados complexos

* `Array`
* `Embedded Document`
* `Reference`
* `GeoJSON`

### Estrutura de um documento

O documento que receberá os dados é do tipo BSON, e tem uma estrutura de um arquivo do tipo JSON. A diferença é que o BSON vai armazenar os dados em formato binário, tornando o processamento destes bem mais rápido.

```JSON
{
    _id:ObjectId(""),
    "nome_campo":"valor_campo",
    ...
}
```

#### Vale dizer

O MongoDB pode gerar a _id para nós de forma automatizada, bastando para isso não passarmos este parâmetro na hora da geração do documento.

## Estratégias de modelagem de dados eficientes e escaláveis com MongoDB

Para termos alguns dos melhores beneficios do MongoDB, como escalabilidade e alta performance na busca e retorno de dados, precisamos cuidar muito bem da modelagem dos nossos dados, ou seja, da forma que vamos implementá-los nos nossos documentos.

### Modelagem orientada por consultas

Quando estamos lidando com o mundo dos DB não relacionais, mais do que cuidar da estrutura dos dados, temos que cuidar para sabermos já de antemão quais os tipos de consultas que vamos precisar realizar dentro da nossa DB, para que ela já seja feita de forma a otimizar forma de realizar as consultas e também a performance destas.

Trazendo para o nosso exemplo de banco de dados de reservas, no nosso documento que armazena os usuários, nós podemos imaginar que haverão consultas que vão trazer relatórios com todos os usuários do sistema, consultas que farão a autenticação do usuário no sistema de reservas, consulta de reservas que um determinado usuário possa ter feito...

Enfim, não conseguimos antever todas as consultas que serão necessárias no decorrer da execução do sistema, mas podemos sim ter noção de algumas das principais, e isto já nos ajuda bastante.

### Inner Documents

Na utilização de MongoDB é muito comum desnormalizar nossos dados, ao contrário dos bancos de dados relacionais. Isso serve para evitar operações join custosas. Dessa forma, podemos ter dados duplicados em alguns documentos, ou então de que dados relacionados podem ser armazenados juntos, em um único documento, facilitando e agilizando as consultas necessárias.

Trazendo para o nosso exemplo, as reservas que um usuário fez não são compartilhadas com outros, existem só para o ambiente deste usuário, então faz sentido que ela seja uma informação contida em um documento dentro do documento usuário. Os destinos por sua vez podem ser escolhidos por vários usuários, então é melhor que ele fique em seu próprio documento, uma vez que é um elemento que tem "vida própria", uma informação que existe para além do usuário.

#### Quando usar

* Os dados aninhados são específicos para o documento pai
* Os dados aninhados são sempre acessados juntamente com o documento pai
* A cardinalidade do relacionamento é de um para muitos

#### Quando NÃO usar

* Se os dados aninhados precisarem ser acessados ou atualizados de forma independente do documento pai

### Referências

Referências é a forma de relacionar documentos uns com os outros.

#### Quando usar

* Os dados tem seu próprio significado e podem ser acessados independentemente do documento pai
* Os dados tem uma cardinalidade mais alta, como muitos para muitos

#### Quando NÃO usar

* Quando os dados não precisarem ser consultados sem os valores de outro documento, que poderia ser o pai deste

**[Voltar para o índice](/README.md)**