# Operações no MongoDB

## Compass

O Compass é o ambiente criado pelo MongoDB para que possamos desenvolver nossos bancos de dados, e pode ser acessado [neste link]"(https://www.mongodb.com/try/download/compass/).

## Operações Básicas

### Criando o DB

Para criarmos um DB, podemos simplesmente digitar

```javascript
use banco_de_dados
```

### Criando uma Collection

Tão simples quanto, é criar uma collection. Para tal, digitamos

```javascript
db.createCollection("nome_da_collection")
```

### Criando documentos

Os documentos podem ser criados um por vez ou então vários de uma vez só, passando um array de objetos. Os comandos são

```javascript
db.nome_da_collection.insertOne({})

db.nome_da_collection.insertMany([{}])
```

### Consultando Dados

* `db.nome_da_collection.find({})`

    Retorna todos os dados da collection

* `db.nome_da_collection.findOne({})`

    Retorna apenas um documento da collection. Se passarmos um argumento vazio, retorna o primeiro documento, se passarmos um argumento, retorna o primeiro que corresponda a pesquisa

* `db.nome_da_collection.findOneAndUpdate({},{})`

    Retorna o documento desejado e atualiza a informação dentro dele

* `db.nome_da_collection.findOneAndDelete({})`

    Retorna o documento e exclui o documento desejado

### Atualizando dados

Para atualizarmos dados, utilizamos o comando `update`, que pode ser tanto

```JS
db.nome_da_collection.updateOne({"chave_pesquisada":"valor_pesquisado"}, {$set: {"chave_a_alterar":"novo_valor"}})
```

quanto

```JS
db.nome_da_collection.updateMany({"chave_pesquisada":"valor_pesquisado"}, {$set: {"chave_a_alterar":"novo_valor"}})
```

No primeiro caso, alteramos o dado apenas do primeiro documento com o valor pesquisado. No segundo, alteramos o valor de todos os documentos encontrados com o valor pesquisado.

Podemos utilizar também o comando `update` para criarmos novos campos nos nossos documentos, bastando para isso colocarmos uma chave inexistente no lugar da chave que gostaríamos de alterar, e um valor inicial para ela.

### Operadores

Para realizarmos as alterações com o update, podemos utilizar operadores que vão passar a forma de tratar o dado. Alguns deles são:

* `$set`: Apaga o valor anterior e define um novo valor
* `$inc`: Incrementa o valor original, somando o valor passado. Funciona com números
* `$push`: Adiciona um valor a uma lista de valores
* `$unset`: Remove um campo de um documento
* `$rename`: Renomeia um campo de um documento

### Excluindo Documentos

* `db.nome_da_collection.deleteOne({})`
* `db.nome_da_collection.deleteMany({})`

## Consultas Simples

A mais simples das consultas é feita apenas utilizando a igualdade, onde passamos o nome do campo, colocamos `:` e  em seguida o valor desejado, que deve ser exatamente igual o que está no documento.

### Operadores

Além disso, temos os operadores de consultas

#### Operadores Lógicos

* `and`: e
* `or`: ou
* `not`: não

##### Exemplo

```JS
{
  $and: [ //operador E
    {
      nome: 'Pamela'
    },
    {
      email: 'outra'
    }
  ]
}
```

#### Operadores de Comparação

* `$eq`: Igual a
* `$gt`: Maior que
* `$gte`: Maior ou igual a
* `$lt`: Menor que
* `$lte`: Menor ou igual a
* `$ne`: Diferente de
* `$in`: Dentro de
* `$nin`: Fora de

##### Exemplo

```JS
{
    $and: [
      {
        idade: {
          $lt: 31 //Menor que 31
        }
      },
      {
        nome: 'Pamela'
      }
    ]
}
```

### Projeções

As projeções servem para definir quais dados serão retornados para nós do nosso documento, passando para isso as chaves desejadas.

Para realizar a projeção, antes de fechar a querry vamos colocar uma vírgula e passar os dados desejados como um novo parâmetro, como `{"chave_desejada1": 1, "chave_desejada2": 2}`

### Ordenação

Serve para ordenar o retorno dos dados para nós.

Para ordenarmos, vamos utilizar no final da querry o comando `.sort({chave: 1 ou -1})`, onde 1 será em ordem crescente e -1 em ordem decrescente.

### Limitação

Limita o número de resultados que a consulta vai retornar

```JS
db.nome_collection.find().limit(5)
```

### Paginação

Limita o número de resultados que a consulta vai retornar por página, gerando várias páginas de consulta se necessário.

```JS
db.nome_collection.find().skip(10).limit(5)
```

Para uma lista mais completa de querryes, temos exemplos [neste documento](/exercícios/mongodb/operators.js "Operadores").

### Vale dizer

O MongoDB é baseado em JavaScript, desta forma, os comandos são muito parecidos com programar no próprio JavaScript. Saber a trabalhar com um fatalmente nos ajudará a trabalhar com o outro.

**[Voltar para o índice](/README.md)**