# Manipulando Strings com Python

## Métodos Úteis da Classe String

A classe string tem vários métodos incluídos nativamente no Python, que nos permite manipulá-las de forma bem complexa. Vamos abordar alguns dos métodos mais utilizados:

* `upper()`: Converte todas as letras da string para maiúsculas.

* `lower()`: Converte todas as letras da string para minúsculas.

* `capitalize()`: Converte a primeira letra da string para maiúscula e as demais para minúsculas.

* `title()`: Converte a primeira letra de cada palavra da string para maiúscula e as demais para minúsculas.

* `strip()`: Remove os espaços em branco no início e no final da string.

    Temos também as opções especializadas do strip:

    * `lstrip()`: Remove os espaços em branco no início da string.

    * `rstrip()`: Remove os espaços em branco no final da string.

<br>

* `split()`: Divide a string em uma lista de substrings

* `replace(old, new)`: Substitui todas as ocorrências da substring `old` pela substring `new`.

* `center(tamanho, complemento)`: Centraliza a string dentro de uma largura especificada. Opcionalmente, podemos especificar um caractere de preenchimento, senão ele vai preencher com espaços.

*`"#".join()`: Inclui o elemento que inserimos antes do método para após cada elemento da lista, menos o último.

## Interpolação de Variáveis

Interpolar variáveis nada mais é do que inserir variáveis nos textos que serão apresentados no output para o usuário.

Existem 3 formas de se interpolar variáveis em strings:

### Old Style

A forma mais antiga, nascida juntamente com o Python.

Nela, nós colocamos dentro da string o sinal de `%` seguida de s, d ou f, indicando se é uma variável do tipo string, inteiro ou float. Ao final, colocamos o sinal de porcentagem fora da string e na ordem que devem aparecer, colocamos as variáveis que devem ser interpoladas.

```python
print("Olá, me chamo %s, tenho %d anos e %f de altura." % (nome, idade, altura)
```

#### _Boas Práticas_

> Apesar de ainda ser compatível com Python 3, o uso desta forma de interpolação **não é mais recomendado**, uma vez que foi substituído por métodos mais modernos e menos propensos a erros em longas strings.

### Método `Format`

Parecido com o método antigo, mas ao invés de porcentagem, passamos chaves vazias nas posições desejadas. Após isso, utilizamos o método `.format()` e dentro dele colocamos as variáveis que devem ser interpoladas.

```python
print("Olá, me chamo {}, tenho {} anos e {} de altura.".format(nome, idade, altura)
```

Como avanço, ela trás a possibilidade de editarmos as ordens das variáveis dentro da string, para isso bastando inserirmos o número da posição da variável dentro das chaves.

```python
print("Olá, me chamo {2}, tenho {0} anos e {1} de altura.".format(nome, idade, altura)
```

### f-string

O mais moderno dos métodos. Parecido com o método `format`, mas já passamos a variável dentro das chaves, dispensando a declaração delas no final. Para a _f-string_ funcionar, basta adicionarmos um `f` antes da string.

```python
print(f"Olá, me chamo {nome}, tenho {idade} anos e {altura} de altura.")
```

Podemos ainda realizar algumas formatações direto no método _f-string_. Para isso, colocamos dentro da chave, após o nome da variável, o sinal de `:`, seguido da quantidade de casas depois da vírgula e o `f`, caso seja um float.

```python
print(f"Olá, me chamo {nome}, tenho {idade} anos e {altura:.2f} de altura.")
```

## Fatiamento de String

Serve para retornar substrings, que são partes de uma string original. Nela, nós indicamos o índice da posição equivalente a cada ponto que queremos cortar.

Podemos dar as instruções de start, end e step, como podemos ver no [exercício de exemplo](/exercícios/manipulacao_strings/slicing_strings.py "fatiamento de strings").

## String de Múltiplas Linhas

Podemos criar strings de várias linhas colocando a string entre aspas triplas, sejam elas simples ou duplas.

```python
nome = "Paulo"
idade = 33
altura = 1.63

mensagem = f'''
Olá, me chamo {nome}, tenho
{idade} anos e minha altura
é de {altura}m.
'''
```

### Vale dizer

No caso das strings de múltiplas linhas, o output respeita as quebras de linhas e recuos. Tenha isso em mente na hora de escrevê-las.

**[Voltar para o índice](README.md)**