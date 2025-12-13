# Modelagem de Dados Relacionais

## Tabelas, Colunas e Registros

As tabelas são criadas utilizando-se o comando `CREATE TABLE`.

```SQL
CREATE TABLE nome(
    coluna tipo  opções  COMMENT `comentario`
)
```

### _Boas Práticas_

> Apesar do comentário ser um campo opcional, ele ajuda muito na manutenibilizade do código, tanto por você quanto por futuros desenvolvedores. Busque sempre comentar, e deixar de forma clara o que cada comando representa.

### Tipos de Dados

Os dados podem variar de acordo com o SGBD, sendo os mais comuns:

* Inteiro (Integer)
* Decimal/Numerico (Decimal/Numeric)
* Caractere/Varchar (Character/Varchar)
* Data/Hora (Date/Time)
* Booleano (Boolean)
* Texto longo (Text)

### Opções do `CREATE TABLE`

* Restrições de Valor:
    * `NOT NULL`: Obriga o valor a ser declarado, não podendo ficar em branco
    * `UNIQUE`: Define que o valor não pode ser repetido
    * `DEFAULT`: Define um valor padrão de criação automático
* Chaves Primárias e Estrangeiras
* Auto Incremento

[Aqui](/exercícios/SQL/criacao_tabelas.sql "Criando tabelas") você encontra todoso os comandos utilizados para a criação das nossas tabelas do DB Viagens.

## Inserindo e Selecionando registros

### INSERT

Para inserirmos dados nas nossas tabelas, utilizamos o comando `INSERT`.

```SQL
INSERT INTO nome-tabela (
    coluna1, coluna2, coluna3
    )
VALUES(
    valor1, valor2, valor3
    )
```

#### _Vale Dizer_

Podemos ocultar os nomes das colunas na hora de passarmos os valores, mas daí temos que cuidar para respeitar a ordem dos dados. Por isso, é legal passar sempre as colunas, deixando claro onde cada informação vai ser inserida.

#### _Boas Práticas_

> O SQL entende os comandos se digitarmos em maíusculas ou minúsculas, porém, é uma boa prática digitarmos todos os comandos em maíusculas, assim temos uma divisão clara do que são comandos e o que são dados e customizações.

### SELECT

Para visualizarmos os dados, precisamos selecioná-los. Para isso, utilizamos o comando `SELECT`.

```SQL
SELECT lista_colunas

FROM tabela
```

Se quisermos selecionar todas as colunas de uma tabela, podemos passar o sinal de asterísco `*` ao invés da lista de colunas.

Além disso, podemos passar uma condição, que diz que a consulta só retornará o resultado se essa condição for atendida. Para isso, utilizamos a palavra reservada `WHERE`.

```SQL
SELECT lista_colunas

FROM tabela
WHERE condição
```

#### Operadores do Comando SELECT

* `=` (igualdade)
* `<>` ou `!=` (diferença)
* `>` (maior que)
* `<` (menor que)
* `>=` (maior ou igual que)
* `<=` (menor ou igual que)
* `LIKE` (comparação de valores)
* `IN` (verifica se um valor está em uma lista de valores)
* `BETWEEN` (verifica se um valor está entre dois valores)
* `AND` (operador lógico E)
* `OR` (operador lógico OU)
* `NOT` (operador lógico NÃO)

## Atualizando e Deletando registros

#### Vale Dizer

De início, vale dizer que os comandos que veremos a seguir devem ser utilizados sempre com muito cuidado, pois se passarmos eles sem dizermos especificamente o que queremos apagar, utilizando o `WHERE`, corremos o risco de apagar toda a tabela, algo que sem as devidas seguranças, pode ser incontornável!

### UPDATE

As vezes temos que corrigir registros já inclusos na nossa tabela, seja por algum erro, seja por uma atualização no cadastro. Independentemente do caso, utilizamos o comando `UPDATE`.

```SQL
UPDATE tabela

SET
coluna_1 = novo_valor_1,
coluna_2 = novo_valor_2,
coluna_3 = novo_valor_3

WHERE
condição
```

### DELETE

Se o comando que faz o update da tabela é o `UPDATE`, o que faz a exclusão definitiva de um dado é o `DELETE`.

```SQL
DELETE FROM tabela

WHERE
condição
```

## Alterando e Excluindo Tabelas

Não são só os registros das tabelas que podemos manipular, também podemos alterar e excluir as tabelas. Podemos fazer isso com os comandos `ALTER TABLE` e `DROP TABLE`.

### DROP TABLE

O `DROP TABLE` serve para realizar a exclusão da tabela. Desta forma, devemos estar plenamente com a certeza de que esta operação deve ser feita, pois, se não tivermos um backup dos dados contidos nela, ela será desfeita e não poderá mais ser recuperada.

```SQL
DROP TABLE nome_tabela
```

### ALTER TABLE

É utilizada para modificarmos a estrutura de uma tabela, permintindo:

* Adicionar, alterar ou excluir colunas
* Modificar as restrições, índices
* Renomear a tabela
* Outras funções menos utilizadas, mas igualmente úteis

## Chaves Primárias e Estrangeiras

### Chave Primária

Chaves primárias são atributos que são responsáveis por identificar a nossa tabela. Elas são valores que não podem ser nulos, não podem se repetir e cada tabela pode conter apenas uma. É como se fosse o índice da tabela, o identificador de cada registro incluso nela, para que consiga-mos acessá-lo.

Para criarmos uma chave primária, utilizamos o comando `PRIMARY KEY`. Como o valor não pode ser repitido, podemos ainda utilizar o comando de `AUTOINCREMENT` para que ela seja gerada de forma automática.

```SQL
CREATE TABLE tabela

(id PRIMARY KEY AUTOINCREMENT, ...)
```

Se formos criar uma chave primária em uma tabela já criada, ainda utilizamos o `PRIMARY KEY`, porém dentro do `MODIFY` dentro do `ALTER TABLE`.

```SQL
ALTER TABLE tabela

MODIFY COLUMN ID INT PRIMARY KEY;
```

### Chave Estrangeira

A chave estrangeira serve para estabelecer relações com outras tabelas. Ela faz a ligação entre os dados da tabela de origem com a tabela onde a chave estrangeira for inserida. Diferente da chave primária, a estrangeira pode ser nula, quando não tem ligação com a outra tabela, e também podem existir 0, 1 ou várias chaves estrangeiras dentro de uma tabela, a depender da quantidade de tabelas com as quais ela se relaciona.

```SQL
CREATE KEY tabela (
    id INT PRIMARY KEY,
    chave_estrangeira INT,
    
    FOREIGN KEY (chave_estrangeira) REFERENCES outra_tabela(id)
)
```

```SQL
ALTER TABLE tabela
ADD CONSTRAINT nome_constraint
FOREIGN KEY(chave_estrangeira) REFERENCES outra_tabela(id)
```

#### Restrições da Chave Estrangeira

Podemos inserir algumas restrições nas chaves estrangeiras que nos permitem definir o comportamento que ela terá quando o registro pai for alterado ou excluído.

* `ON DELETE`: Define o que acontece com os registros dependentres quando o registro pai for excluído.
* `ON UPDATE`: Define o que acontece com os registros dependentes quando o registro pai for atualizado.
    * `CASCADE`: A alteração do registro pai passa para o filho
    * `SET NULL`: O registro filho fica nulo
    * `SET DEFAULT`: O registro filho recebe um valor padrão
    * `RESTRICT`: Não permite que o registro pai seja alterado ou excluído se houver registros filhos
    

**[Voltar para o índice](/README.md)**