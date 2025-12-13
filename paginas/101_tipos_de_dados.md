# Tipos de Dados

## O que são

Todas as informações utilizadas no nosso código podem ser colocadas em elementos que são chamados de variáveis. Essas variáveis podem armazenar diversos tipos de informações, como números, textos, valores de verdadeiro ou falso, entre outros.

Os tipos servem para especificar o que cada uma dessas variáveis representa, e quando colocamos o tipo certo em uma variável, conseguimos utilizar suas propriedades da melhor forma possível. Além disso, cada tipo de variável consome um espaço diferente na memória do computador, o que representa economia não só de espaço, mas também de processamento, trazendo qualidade ao nosso código.

## Tipos Padrão

Python trabalha com vários tipos, alguns já inclusos na estrutura padrão do Python, outros mais criados em pacotes e bibliotecas.

Os mais utilizados no dia a dia são:
| Dados    	| Tipo                         	|
|----------	|---------------------	        |
| Texto    	| str                 	        |
| Numérico 	| int, float, complex 	        |
| Sequência	| list, tuple, range  	        |
| Mapa     	| dict                	        |
| Coleção  	| set, frozenset      	        |
| Booleano 	| bool                	        |
| Binário  	| bytes, bytearray, memoryview  |

* **Texto**

    O tipo _String_, que é definido pelo termo `str` é utilizado para informações em texto.

    Strings são sempre escritas dentro de aspas, podendo ser:

    `"Python"`,`'Python'`,`"""Python"""` ou `'''Python'''`

* Numérico
    * `int`

        É utilizado quando vamos trabalhar com cálculos de números inteiros, sejam eles positivos ou negativos.

    * `float`

        São utilizados para representar os números racionais, números com vírgula, dízimas periódicas, valores monetários...

    * `complex`

        Menos utilizados na programação em geral, são utilizados para trabalhar com o número imaginário *i*, que permite cálculos avançados, como a resolução de raízes de números negativos.

* Sequência

    São dados que armazenam listas de informações, como listas numéricas, listas de ingredientes, nomes, endereços, entre outros.

* Mapa

    Lembram as listas, mas neles podemos incluir uma chave para cada valor, como um campo *nome* com valor *Paulo*

* Coleção

    Também similares as listas, mas sem valores repetidos

* Booleano

    Armazenam valores de Verdadeiro ou Falso. Em Python, *0* significa *falso*, enquanto qualquer outro número significa *verdadeiro*.

    Vale dizer que ao determinar com os valores `True` ou `False`, precisamos definir com a primeira letra em **maíuscula**, senão temos um erro.

* Binário

    Guardam dados em forma de código de máquina, ou seja, uns e zeros

### Vale dizer

O Python tem um gerenciamento inteligente dos dados e variáveis. Dessa forma, se escrevermos `"Olá, Mundo"`, o interpretador já vai saber que se trata de uma variável do tipo _string_, pois está entre aspas.

Da mesma forma, se digitarmos `10`,`10.1` ou `True`, o código vai automaticamente atribuir o tipo como `int`, `float` ou `bool`, respectivamente.

**[Voltar para o índice](/README.md)**