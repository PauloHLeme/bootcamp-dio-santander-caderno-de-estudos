# Introdução à Biblioteca Pandas

## O que são Bibliotecas

Bibliotecas são conjuntos de códigos prontos, geralmente compostas por várias funções e conjuntos de operações unidas em uma "caixa de ferramentas", trazendo funcionalidades prontas para implementadas no nosso código sem termos que criar todas as funções, economizando tempo e esforço em tarefas que seriam repetitivamente feitas em todos os nossos códigos.

## Pandas

Em resumo, a biblioteca Pandas é um conjunto de ferramentas para trabalhar com dados de forma estruturada com funcionamento semelhante a planilhas, como Excel ou LibreOfice Calc.

### Por que não Excel?

Excel é uma excelente forma de organizarmos os dados de forma visual para poucos dados serem visualizados por olhos humanos.

Mas, para uma imensa quantidade de dados ser processada por máquinas, como nossos processos tem cada vez mais sendo feitos, o excel começa a se tornar cada vez menos eficiente.

Nessas horas, o Pandas trás a versatilidade de lidar com uma grande quantidade de dados de forma eficaz e facilitada tanto para a máquina quanto para uso humano.

Outra grande vantagem é não precisarmos mais ficar alimentando planilhas com os dados, pois podemos puxar todos os dados de forma automática diretamente de uma base de dados.

## Utilizando a Pandas

O Pandas nos permite trabalhar com:

* Dados tabulares, como Excel ou SQL
* Dados ordenados de modo temporal ou não
* Matrizes
* Outros conjuntos de dados, sem necessidade de estarem rotulados

## Estruturas de dados

O Pandas trabalha com dois objetos principais. As _Series_ e os _DataFrames_.

### Series 

As _series_ são conjuntos de dados em forma de matriz unidimensional. Sendo assim, as _series_ contém uma lista de valores indexados por números inteiros ou rótulos.

Fazendo o paralelo com o Excel, seria como uma coluna de dados, onde cada linha tem sua posição e seu valor.

### DataFrame

O _DataFrame_ já é mais parecido com uma planilha no Excel, com linhas e colunas rotuladas, gerando uma matriz bidimensional.

## Comandos em Pandas

Quando comparamos o Excel com o Pandas, diversos comandos que podemos estar acostumados no primeiro tem sua equivalência no segundo. Aqui estão alguns exemplos:

| Excel 	| Pandas 	| Descrição 	|
|-------	|--------	|-----------	|
|`=SOMA()`	| `.sum()` 	| Soma os valores de uma coluna 	|
`=MÉDIA()`	| `.mean()` 	| Calcula a média dos valores de uma coluna 	|
`=CONT.VALORES()`	| `.count()` 	| Conta o número de valores não nulos em uma coluna 	|
`=MÁXIMO()`	| `.max()` 	| Retorna o valor máximo de uma coluna 	|
`=MÍNIMO()`	| `.min()` 	| Retorna o valor mínimo de uma coluna 	|
`=PROCV()`	| `.merge()` 	| Combina DataFrames com base em uma ou mais colunas 	|
`=FILTRAR()`	| `df[df['coluna'] == valor]` 	| Filtra linhas com base em uma condição 	|
`=CLASSIFICAR()`	| `.sort_values()` 	| Ordena o DataFrame por uma ou mais colunas 	|
`=REMOVER.DUPLICATAS()`	| `.drop_duplicates()` 	| Remove linhas duplicadas 	|
`=CONCATENAR()`	| `pd.concat()` 	| Concatena DataFrames 	|

**[Voltar para o índice](/README.md)**