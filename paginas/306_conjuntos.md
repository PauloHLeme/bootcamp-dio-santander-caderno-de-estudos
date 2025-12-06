# Conjuntos

Um conjunto, ou um `set()` é uma coleção de objetos que não recebe valores duplicados.

Caso passemos uma lista com valores duplicados, ele vai excluir de forma automática os valores que estavam duplicados.

## Como Criar

Podemos criar um set utilizando a palavra reservada `set()` e passando dentro dele o objeto desejado, ou então declarando os valores entre chaves`{}`.

[Exercícios.](/exercícios/listas/criando_sets.py "Exercício de criação")

## Acessando dados

O `set`não permite acesso aos dados isolados. Para realizarmos o acesso, precisamos converter ele a uma lista para fazermos o acesso.

Embora não permita acesso aos dados isolados, ele permite sim iterações, pois estas percorrem todo o conjunto de dados.

[Exercícios.](/exercícios/listas/acessando_sets.py "Exercício de acesso")

## Métodos da Classe `set`

A classe set tem uma lista de métodos bem legais ligados aos conjuntos matemáticos, como união, intersseção e outras operações matemáticas.

* `.union()`: Une dois conjuntos em um só, adicionando todos os itens não duplicados de ambos.

* `.intersection()`: Retorna apenas os itens que fazem parte dos dois conjuntos.

* `.difference()`: Retorna os itens que estão apenas no conjunto da esquerda.

* `.symmetric_difference()`: Retorna os itens que não estão em ambos os conjuntos.

* `.issubset()`: Retorna `True` se todos os elementos de um conjunto estão presentes em outro.

* `.issuperset()`: Retorna `True` se todos os elementos de um conjunto estão presentes em outro, mas de forma inversa ao `issubset`.

* `.isdisjoint()`: Retorna `True` se os dois conjuntos não tiverem nenhum elemento em comum.

* `.add()`: Adiciona um elemento ao conjunto, desde que este elemento ainda não exista.

* `.clear()`: Limpa o conjunto.

* `.copy()`: Retorna uma cópia do conjunto.

* `.discard()`: Descarta um elemento do conjunto, passando para ele o valor a ser descartado.

* `.pop()`: Retira o primeiro elemento do conjunto.

* `.remove()`: Remove um elemento do conjunto, passando para ele o valor a ser removido. Diferente do pop, ele retorna um erro se o elemento não estiver no conjunto.

* `len()`: Retorna o tamanho do conjunto.

### Vale dizer

O `set()` não garante a ordem que vai retornar os valores de uma lista que ele realize a limpeza das duplicatas. Se você precisa que a ordem se mantenha igual a anterior, ele não será o melhor tipo para ser utilizado.

**[Voltar para o índice](README.md)**