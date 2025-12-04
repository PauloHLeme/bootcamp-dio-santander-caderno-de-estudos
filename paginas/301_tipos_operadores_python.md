# Tipos de Operadores com Python

## Operadores Aritméticos

Operadores Aritméticos são aqueles responsáveis por realizarem operações matemáticas, como soma, subtração, multiplicação e divisão.

* **Adição** `+`: Soma de dois valores

* **Subtração** `-`: Subtração de dois valores

* **Multiplicação** `*`: Multiplicação de dois valores

* **Divisão** `/`: Divisão do primeiro valor pelo segundo

* **Divisão Inteira** `//`: Divisão inteira do primeiro valor pelo segundo

* **Módulo** `%`: Resto da divisão do primeiro valor pelo segundo

* **Exponenciação** `**`: Exponenciação do primeiro valor pelo segundo

Para utilizarmos esses operadores, precisamos dos operadores e de dois números.

### Precedência

A precedência das operações em Python seguem as regras de precedências na matemática:

1. Parênteses

2. Exponenciação

3. Multiplicação e Divisão, na ordem em que aparecem

4. Adição e Subtração, na ordem em que aparecem

### _Boas Práticas_

Apesar do Python utilizar a ordem de precedência matemática para realizar os cálculos, visualizar essa ordem nos códigos para olhos humanos pode ser demorado.

> Dessa forma, é uma boa prática **evidenciar entre parênteses as precedências aritméticas**, para fácil **visualização** e **entendimento** do código.

## Operadores de Comparação

São utilizados para compararmos dois valores. Ele nos retorna uma resposta Booleana, com valores `True` ou `False`.

* **Igualdade** `==`: Verifica se um valor é igual a outro.

* **Diferença** `!=`: Verifica se um valor é diferente do outro.

* **Maior que** `>`: Verifica se um valor é maior que outro.

* **Menor que** `<`: Verifica se um valor é menor que outro.

* **Maior ou igual que** `>=`: Verifica se um valor é maior ou igual ao outro.

* **Menor ou igual que** `<=`: Verifica se um valor é menor ou igual ao outro.

## Operadores de Atribuição

São utilizados para atribuirmos um valor inicial a uma variável ou sobrescrever o seu valor.

* **Atribuição** `=`: Atribui um valor a uma variável.

* **Atribuição com Adição** `+=`: Soma um valor a uma variável existente. É uma forma reduzida de sobrescrever um valor com uma soma:

    ```python
    # Ao invés de escrevermos
    saldo = saldo + 200
        
    # Podemos escrever
    saldo += 200
    ```
    Além da atribuição com adição, podemos utilizar os outros operadores numéricos, como atribuição com subtração, multiplicação ou até módulo e exponenciação.

## Operadores Lógicos

São operadores que servem para analisarmos duas ou mais comparações ao mesmo tempo, para verificarmos se duas situações são verdadeiras ou falsas, por exemplo.

* **E** `and`: compara dois valores booleanos e retorna verdadeiro apenas se ambos forem verdadeiros

* **Ou** `or`: compara dois valores booleanos e retorna verdadeiro se pelo menos um for verdadeiro

* **Não** `not`: inverte o valor booleano de `True` para `False` ou de `False` para `True`

### _Boas Práticas_

Assim como nos operadores aritméticos, podemos fazer uma lista com vários operadores lógicos, que serão lidos da esquerda para a direita.

> Desta forma, é uma **Boa Prática** indicarmos a ordem de operações utilizando parênteses, tornando o código **mais legível**.

## Operadores de Identidade

Servem para verificarmos se dois valores ocupam o mesmo espaço de memória.

* **Identidade** `is`: Verifica se dois valores estão ocupando o mesmo espaço de memória

* **Identidade Inversa** `is not`: Verifica se dois valores não estão ocupando o mesmo espaço de memória.

## Operadores de Associação

Servem para verificar se o valor desejado está dentro de uma lista, seja um objeto de listas ou uma string, que também se comporta como uma lista de caracteres.

* **Associação** `in`: Verifica se um valor está dentro de uma lista

* **Associação Inversa** `not in`: Verifica se um valor não está dentro de uma lista

**[Voltar para o índice](README.md)**