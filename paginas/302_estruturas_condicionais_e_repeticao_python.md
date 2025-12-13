# Estruturas Condicionais e Repetição em Python

## Identação

A identação é o recuo que parte do código tem em relação a seção anterior.

Algumas linguagens utilizam a identação apenas para melhorar a legibilidade do código, tornando mais visível qual estrutura está dentro de qual.

Já o Python trás a identação para dentro da estrutura de código. Identar não ajuda só na legibilidade humana, mas também para o interpretador de código.

### _Boas Práticas_

Em Python, temos uma boa prática para a identação, uma vez que ela é tão importante na sua estrutura.

> É indicado que se utilize **4 espaços em branco** por nível de identação.

Para um exeplo prático, veja o exercício de [identação e blocos de código](/exercícios/estruturas_condicionais_repeticao/identacao_blocos.py "Identação em Python").

## Estruturas Condicionais

Estruturas condicionais são como bifurcações. Elas nos dão dois ou mais caminhos possíveis para que o código seja executado, dependendo de certas condições que forem definidas no código.

### `if`

É a estrutura condicional mais simples. Ela dá a possibilidade de executar um código _se_ uma condição for atendida. Do contrário, o código não é executado e o interpretador passa para o próximo bloco de código.

[Exercício de exemplo](/exercícios/estruturas_condicionais_repeticao/estrutura_if.py "Estrutura if")

### `if`/`else`

É a estrutura condicional que permite dois desvios. Neste caso, _se_ a condição for atendida, o código um é executado, _senão_, o código dois, que será o de dentro da estrutura `else`, será executado.

[Exercício de exemplo](/exercícios/estruturas_condicionais_repeticao/estrutura_if_else.py "Estrutura if/else")

### `if`/`elif`/`else`

É a estrutura condicional que permite mais de dois desvios. Aqui, teremos várias condições. Se a condição um for atendida, a que está no `if`, tudo dentro do seu bloco será executado. Do contrário, será testada a condição dois, que estará definida diante da palavra `elif`.

Podemos ter tantos `elif`s quantos necessários. No final, para cobrir os casos que não estão em nenhuma condição, utilizamos o `else`.

[Exercício de exemplo](/exercícios/estruturas_condicionais_repeticao/estrutura_elif.py "Estrutura elif")

### `If` aninhado

Podemos tambem ter opções de `if` dentro de outros `if`, criando condições internas para cada situação.

[Neste exemplo](/exercícios/estruturas_condicionais_repeticao/if_aninhado.py "if aninhado") temos uma situação onde a conta tem comportamentos diferentes se for premium ou basic, e ainda outro comportamento que pode variar se tiver ou não saldo.

### `if` ternário

É uma forma resumida de escrevermos uma condição em uma única linha. Útil para casos pouco complexos e excelente para rápida execução!

Neste caso, o código se resume a

```python
"execute isso" if esta condição == verdadeira else "execute este outro"
```

Temos [este exemplo](/exercícios/estruturas_condicionais_repeticao/if_ternario.py "if ternário") para facilitar o entendimento.

## Estruturas de Repetição

São estruturas utilizadas para repetir um bloco de código várias vezes, até que uma determinada condição seja atendida.

### `for`

Ele é utilizado para casos onde sabemos quantas vezes precisamos executar, ou se temos uma estrutura de dados com quantidade determinada de elementos.

Temos um exemplo [aqui](/exercícios/estruturas_condicionais_repeticao/repeticao_for.py "Estrutura for"), onde passamos por todas as letras de um texto e identificamos as vogais. Lembre-se de que o texto é uma estrutura que funciona como uma lista de caracteres, então temos uma quantidade finita de itens, que são a quantidade de caracteres da frase.

### `for`/`else`

Como o for, mas com o `else`, que vai ser executado após o fim do loop, da repetição do `for`.

### `range`

É uma função que vai produzir uma sequência de números no Python. Ela é um loop de geração de números e pode receber três parâmetros:

* `start`: O valor inicial da sequência

* `stop`: O valor logo depois do finalda sequência

* `step`: O incremento da sequência

Apenas o stop é obrigatório, e então podemos definir apenas 

```
list(range(5))
```

E isso nos retornará uma lista com os valores [0, 1, 2, 3, 4]

Ou então podemos fazer algo do tipo

```
list(range(1, 10, 2))
```

E isso nos retornará uma lista com os valores [1, 3, 5, 7, 9], pois pedimos para começar do 1, terminar no 9 (um número antes do 10) e pular de 2 em 2.

Dá para montarmos um exercício de [tabuada](/exercícios/estruturas_condicionais_repeticao/repeticao_range.py "Estrutura range") a partir da estrutura `range` que fica bem legal!

## Comando `While`

É uma estrutura criada para casos em que não sabemos a quantidade de repetições que necessitamos, repetindo o código até que uma condição seja atendida.

### `Break`

O comando `break` pode ser utilizado dentro do loop `while` com o objetivo de interromper a execução do código.

Dessa forma, podemos criar um loop infinito, que só vai parar de ser executado se uma condição for atendida.

### `Continue`

É um comando de implementação similar ao `break`, mas que serve para que o código ignore, pule uma certa condição e passe para a próxima. Dessa forma, ao invés de parar se atingirmos a condição, ele vai deixar de executar o código nela, mas vai continuar funcionando para o restante da lista.

[Este exercício](/exercícios/estruturas_condicionais_repeticao/repeticao_while_break_continue.py "Exemplo de break") exemplifica o uso dos comandos `break` e `continue`.

**[Voltar para o índice](/README.md)**