# Dicionários

Dicinários são um conjunto não ordenado que contém pares, onde o primeiro é a chave e o segundo é o valor. As chaves devem ser únicas, não podendo se repetir dentro de um mesmo dicionário. Assim como os `sets`, é delimitado por chaves `{}`, mas com um par de elementos unidos por dois pontos `:`.

## Criando dicionários

Criar dicionarios é simples, podemos criar utilizando a função _built-in_ `dict()` ou então realizando declarando os pares dentro de chaves, como pode ser visto [neste exercício](/exercícios/dicionarios/dicionario_criacao.py "Criando dicionários").

## Acessando os dados

Podemos acessar os dados de um dicionário conforme feito no exercício acima, passando o nome do dicionário juntamente com o nome da chave entre colchetes. Se após chamar o campo desejado, eu adicionar um sinal de igual e um novo valor, eu vou reatribuir o valor anterior para o novo que eu digitar.

## Aninhando dicionários

Podemos criar dicionários dentro de dicionários, criando uma variável que funciona praticamente como um banco de dados, como podemos visualizar [neste exercício](/exercícios/dicionarios/dicionario_aninhamento.py "Aninhando dicionários").

## Iteração de dicionários

Quando iteramos o dicionário com a função `for`, ele nos retorna apenas as chaves do dicionário.

Para resolvermos de uma melhor forma, temos o método `.items()`. Dessa forma, trabalharemos melhor se iterarmos o `dicionariro.items()`, pois ele já vai nos retornar a chave e o valor

```python
for chave, valor in dicionario.items():
    print(chave, valor)
```

Olhe [este exemplo.](/exercícios/dicionarios/dicionario_iteracao.py "Iterando dicionários")


## Métodos da classe `dict`

* `.clear()`: Remove todos os elementos do dicionário

* `.copy()`: Retorna uma cópia do dicionário

* `.fromkeys()`: cria uma ou mais chaves novas vazias, ou com um valor padrão que você pode passar

* `.get()`: Retorna o valor da chave passada. Caso a chave seja inexistente, ele não retorna erro, mas retorna o valor `none` ou então um valor padrão que você pode passar como segundo argumento

* `.items()`: Retorna uma lista de tuplas com os pares chave-valor do dicionário, muito útil para iteração

* `.keys()`: Retorna uma lista com todas as chaves do dicionário

* `.pop()`: Retira um elemento do dicionário, de acordo com a chave passada como argumento. Aceita um segundo argumento com o retorno padrão caso a chave não exista, eliminando o erro

* `.popitem()`: Retira o último elemento do dicionário

* `.setdefault(chave, valor_padrao)`: Se a chave não existir, cria ela com um valor padrão. Caso exista, retorna o valor existente

* `.update()`: Atualiza um dicionário com os valores enviados, excluindo os demais valores daquela chave. [Exemplo aqui](/exercícios/dicionarios/dicionario_update.py "Exemplo de update")

* `.values()`: Retorna uma lista com todos os valores do dicionário

* `.in()`: Pesquisa se o valor existe no dicionário

* `del dicionario[chave]`: remove uma informação do diciionário 

**[Voltar para o índice](/README.md)**