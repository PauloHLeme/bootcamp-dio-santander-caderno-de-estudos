# Conversão de Tipos


## Uso

As vezes precisamos alterar o tipo de uma variável para podermos trabalhar adequadamente com elas.

Um dos casos mais comuns é encontrarmos números que estão declarados como tipos `string`, e não como `int` ou `float`.

Outro caso ocorre quando temos números do tipo `int` que deverão ser trabalhados com vírgulas a partir de um certo ponto, e então precisarão ser do tipo `float`.

Nestes casos, temos que fazer a alteração dos tipos.

## Inteiro para Float

Se declararmos uma variável como feito abaixo:

```
preco = 10
print(preco)
```

Teremos ela com o tipo `int`, e a respota sairá sem a vírgula, ou seja o `print` retornará o valor `10`.


Agora, se pegarmos o preço já definido e colocarmos que ele será igual ao float dele mesmo, vamos alterar o valor. 

Neste caso, pegamos a variável `preco`, que tem o valor `int` `10` e estamos atribuindo um novo valor a ela, por isso o sinal de igual. Então o que dissemos foi: "Pegue a variável `preco` e deixe ela _valendo_ `=` o valor `float(` do valor anterior da variável `preco)`.

```
preco = float(preco)
print(preco)
```

Quando realizamos a divisão de um valor `int`, automaticamente ele é convertido para um valor `float`, pois existe a possibilidade da divisão resultar em um valor com vírgula.

```
preco = 10/2
print(preco)
```

## Float para Inteiro

Ao convertermos um valor `float` para um valor `int`, nós simplesmente estamos jogando fora tudo o que estiver depois da vírgula (lembrando sempre que a vírgula na programação é representada por um ponto, e não por uma vírgula).

```
preco = 10.3

preco = int(preco)
print(preco)
```

Neste caso, teremos como saída o número inteiro `10`.

## Inteiro ou Float para String

Podemos fazer a conversão de forma simples, apenas como fizemos com os anteriores, definindo um novo valor para preço que será igual ao `str` do valor anterior.


```
preco = 10.3
item = "arroz"

preco = str(preco)
print(preco)
```

Também podemos utilizar a concatenação de texto, um elemento um pouco mais avançado de construção de frases com códigos, onde inserimos as variáveis dentro do texto, e para exibir o valor, ele o transforma antes em string.

```
texto = f"O valor do {item} é de R${preco}."
print(texto)
```

## String para Inteiro ou Float

Um dos mais utilizados no dia a dia, basta alterarmos o tipo da `string` para `int` ou `float`.

```
preco = "10.50"
idade = "30"

preco = float(preco)
idade = int(idade)

print(preco)
print(idade)
```

### Vale dizer

Nem sempre conseguiremos alterar todos os tipos de um para o outro. Um texto `"Olá"` nao vai poder ser alterado para um tipo `float` ou `int`, por exemplo, pois não é um número.

**[Voltar para o índice](/README.md)**