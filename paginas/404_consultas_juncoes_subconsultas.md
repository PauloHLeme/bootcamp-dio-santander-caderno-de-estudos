# Consultas com Junções e Subconsultas

## JOINs

O Comando `JOIN` serve para combinar dados de duas ou mais tabelas relacionadas em uma única consulta

### `INNER JOIN`

Retorna apenas as linhas que tem correspondência em ambas as tabelas. A Junção é feita com base em uma condição de igualdade:

```SQL
SELECT *
FROM tabela1
INNER JOIN tabela2 ON tabela1.coluna = tabela2.coluna
```

Em outras palavras, se considerarmos a tabela1 um conjunto e a tabela2 outro conjunto, o `INNER JOIN` só retornaria o que está na intersecção desses dois conjuntos.

### `LEFT JOIN`

Retorna todas as linhas da tabela da esquerda e as linhas correspondentes da tabela da direita. Se não houver corrêspodência na tabela da direita, os valores serão retornados como nulos.

```SQL
SELECT *
FROM tabela1
LEFT JOIN tabela2 ON tabela1.coluna = tabela2.coluna
```

### `RIGHT JOIN`

Retorna todas as linhas da tabela da direita e as linhas correspondentes da tabela da esquerda. Se não houver corrêspodência na tabela da esquerda, os valores serão retornados como nulos.

```SQL
SELECT *
FROM tabela1
RIGHT JOIN tabela2 ON tabela1.coluna = tabela2.coluna
```

### `FULL JOIN`

Retorna todas as linhas de ambas as tabelas, mesmo que não haja correspondência.
```SQL
SELECT *
FROM tabela1
FULL JOIN tabela2 ON tabela1.coluna = tabela2.coluna
```

## Sub Consultas

Permitem que realizemos consultas mais complexas, onde utilizamos o resultado de uma consulta para alimentar a próxima consulta. São consultas que ficam aninhadas

Podem ser utilizadas nos comando `SELECT`, `FROM`, `HAVING`, `JOIN` e `WHERE`.

```SQL
SELECT * FROM tabela1
WHERE id NOT IN (
	SELECT id_tabela1 FROM tabela2 
)
```

## Funções Agregadas

São funções internas do SQL, que fazem um processamento ou cálculo pré programado e nos retorna o valor desejado. As mais utilizadas são:

* `COUNT`: Conta o número de registros
* `SUM`: Soma os valores de uma coluna numérica
* `AVG`: Retorna a média dos valores de uma coluna numérica
* `MAX`: Retorna o valor máximo de uma coluna
* `MIN`: Retorna o valor mínimo de uma coluna

## Agrupamento de Resultados

Serve para agrupar os resultados de uma consulta de acordo com o critério que for passado. É dado pelo comando `GROUP BY`.

## Ordenação de Resultados

Trás os resuldados em uma ordem específica, seja por ordem alfabética, numérica, data, etc. Utiliza o comando `ORDER BY`.

## Comando `EXPLAIN`

O comando `EXPLAIN` serve para analisar e otimizar o desempenho de consultas SQL. Ele mostra o plano de execução de uma consulta, detalhando como o banco de dados acessa as tabelas, usa índices e realiza as operações.

Com esse comando, conseguimos extrair informações como:

* select_type:`SIMPLE`, `SUBQUERY`, `JOIN`
* table
* type:`ALL`, `INDEX`, ...
* possible_keys: Índices possíveis de serem utilizados na operação
* key: Índice que foi utilizado
* key_len: Comprimento do índice utilizado
* ref: Colunas ou constantes utilizadas para acessar o índice
* rows: Número de linhas

## Índice de Consultas

Quando temos que realizar consultas em bancos de dados com milhares de dados, podemos nos deparar com problemas de tempos de execução gigantes, que consomem não só o tempo, mas o processamento, a banda de rede e acabam reduzindo o desempenho do banco de dados.

Para agilizar essas consultas, podemos criar os Índices de consultas nos campos que costumam receber a origem das buscas, fazendo com que ao acessar o índice, o SQL não tenha que rodar a tabela toda, mas sim apenas o índice e já cair direto no resultado, agilizando e trazendo a performance que é tão bem vinda.

Para criarmos esses índices, utilizamos comandos como:

```SQL
CREATE INDEX nome_do_indice
ON tabela1(coluna1, coluna2))
```

**[Voltar para o índice](/README.md)**