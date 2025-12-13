# Trabalhando com Listas

## O que são

Listas em Python são uma sequência de objetos, podendo ser de tipos diferentes, e são separadas por vírgulas dentro de colchetes.

## Criando Listas

Podemos criar listas através do construtor `list`, utilizando a funçao `range` ou o mais comum , colocando os valores dentro de colchetes, todos separados por vírgula.

```python
# Definição mais comum, aceita dados de todos os tipos, e pode inclusive misturar os tipos ou ser declarada vazia, para popularmos depois
carro = ["GM","Vectra",2010,"preto","automático"]

# Aqui, cada letra vai ocupar um espaço na lista, que ficaria com a saída ["v","e","c","t","r","a"]
letras = list("vectra")

# podemos criar uma lista numérica com a função range, neste caso criando os números de 0 a 9
numeros = list(range(10))
```

## Acessando Elementos

Podemos acessar elementos isolados da lista. Para isso, fazemos um acesso direto.

As listas possuem um índice, que se inicia em 0, e aumenta em ordem crescente, da esquerda para a direita para cada elemento.

| **Índice**   	|   0  	|     1    	|   2  	|    3    	|       4      	|
|--------------	|:----:	|:--------:	|:----:	|:-------:	|:------------:	|
| **Conteúdo** 	| "GM" 	| "Vectra" 	| 2010 	| "preto" 	| "automático" 	|

Desta forma, para acessarmos um item de forma direta, podemos passar o nome da lista, e em seguida o número do índice entre colchetes, como `carro[1]` nos trazendo como resposta o valor `"Vectra"`, que está na posição 1 da lista, que se inicia em 0.

Podemos também passar valores negativos, onde a lista vai buscar da direita para a esquerda, iniciando em -1.

| **Índice**   	|  -5  	|    -4    	|   -3  	|   -2    	|      -1      	|
|--------------	|:----:	|:--------:	|:----:	|:-------:	|:------------:	|
| **Conteúdo** 	| "GM" 	| "Vectra" 	| 2010 	| "preto" 	| "automático" 	|

## Listas Aninhadas

Listas podem conter qualquer tipo de objetos, inclusive outras listas. Isso é muito útil na criação de matrizes, por exemplo.

```python
matriz = [
    [1, "a", 2],
    ["b", 3, 4],
    [6, 5, "c"]
]
```

Para acessar um dado de uma lista dentro de outra lista, vamos passar dois colchetes, um para indicar o índice da lista que está aninhada na lista original, e no segundo passamos o índice do valor interno desta lista. Se fôssemos acessar o exemplo acima, seria assim:

```python
matriz[0]       #retorna a lista toda do índice 0 [1,"a", 2]
matriz[0][0]    # 1
matriz[2][-1]   # 4
```

## Fatiamento

Assim como as strings podem ser fatiadas, as listas também podem ser fatiadas, e por um procedimento semelhante, como podemos [ver aqui](/exercícios/listas/fatiamento.py "fatiamento de strings").

## Iteração

Iteração é percorrer por todos os itens de uma lista. Costumamos fazer isso com o [comando `for`](/exercícios/listas/iteracao_lista.py "exercício iteração").

## Compreensão de listas

Muito útil quando queremos gerar uma nova lista a partir de uma lista já existente, modificando alguns elementos desta ou filtrando-os.

A sintaxe simplificada do Python permite que este filtro seja [feito de forma resumida](/exercícios/listas/filtro_listas.py "exercício filtro")., sendo passada a nova lista e já o comando `for` dentro dela e o condicional `if` para a geração da nova lista.

Da mesma forma, [podemos fazer a alterações](/exercícios/listas/modificacao_listas.py "exercício de modificação"), mas sem remoção do item, bastando para isso utilizar o for e passando no retorno desejado a fórmula da alteração.

## Métodos da classe `list`

* `[].append()`: Adiciona elementos ao fim da lista

* `[].clear()`: Remove todos os elementos da lista

* `[].copy()`: Retorna uma cópia da lista, permitindo que se use ela sem que ela seja alterada.

* `[].count()`: Retorna a quantidade de vezes que um objeto aparece na lista

* `[].extend()`: Insere elementos de outra lista no final da lista

* `[].index()`: Nos retorna o valor do índice da primeira ocorrência do objeto procurado

* `[].insert()`: Insere um elemento em uma determinada posição da lista

* `[].pop()`: Retira o último elemento da lista, a menos que determinemos o índice desejado

* `[].remove()`: Remove o elemento passando-se o valor do objeto

* `[].reverse()`: Inverte a ordem dos elementos da lista

* `[].sort()`: Ordena a lista por padrão em ordem crescente ou alfabética. Podemos passar o argumento `reverse=True`, para inverter a ordem e podemos passar o argumento `key=lambda x: len(x)`, para ordenar pelo tamanho da string.

* `len()`: Retorna o tamanho da lista.

* `sorted()`: Retorna uma nova lista ordenada, sem alterar a original. Também pode usar `key` e `reverse`.

**[Voltar para o índice](/README.md)**