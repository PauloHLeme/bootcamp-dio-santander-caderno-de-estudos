# Biblioteca Pandas e suas Funções

## Funções úteis da Biblioteca

| Função 	| Descrição 	|
|-------	|-----------	|
|`df.info()`| Retorna informações sobre o DataFrame, como o número de linhas, colunas e tipos de dados|
|`df.head()`| Retorna as primeiras linhas do DataFrame|
|`df.tail()`| Retorna as últimas linhas do DataFrame|
|`df.describe()`| Retorna estatísticas descritivas do DataFrame|
|`df.isnull()`| Retorna um DataFrame booleano indicando valores nulos|
|`df.dropna()`| Remove linhas com valores nulos
|`df.fillna()`| Preenche valores nulos com um valor específico|
|`df.sort_values()`| Ordena o DataFrame por uma ou mais colunas|
|`df.groupby()`| Agrupa o DataFrame por uma ou mais colunas|
|`df.unique()`| Retorna os valores únicos de uma coluna|
|`df.nunique()`| Retorna o número de valores únicos de uma coluna|
|`df.value_counts()`| Retorna a contagem de valores únicos de uma coluna|
|`.plot()`| Retorna os dados de forma gráfica|
|`.describe`| Retorna estatísticas descritivas do DataFrame|

## Atributos úteis da Biblioteca

* `df.index`: Retorna o índice do DataFrame
* `df.shape`: Retorna o número de linhas e colunas do DataFrame
* `df.columns`: Retorna o nome das colunas do DataFrame
* `df.dtypes`: Retorna os tipos de dados das colunas do DataFrame

Um resumo de operações possíveis aplicadas de forma prática pode ser visto [neste exercício](/exercícios/pandas/funcoes_pandas.ipynb "Funções Pandas").

**[Voltar para o índice](/README.md)**