# Variáveis e Constantes

## Variáveis

Podemos definir alguns valores para utilizarmos durante os nossos códigos e chamá-los quando precisarmos.

As Variáveis são dados que definimos, mas que podem ser alterados durante a execução do código.

Por exemplo, se criarmos uma variável `idade_atual` e atribuirmos o valor de `30` para ela, daqui um ano teremos que alterar esse valor para `31`.

### Variáveis em Python

podemos declarar uma variável em Python da seguinte forma:

```
idade_atual = 30
nome = "Paulo"
sobrenome = "Leme"
```
ou então podemos colocar tudo junto em uma única linha de código
```
idade_atual, nome, sobrenome = (30, "Paulo", "Leme")
```

### Alterando os Valores

Alterar o valor de uma variável é simples. Podemos apenas atribuir um novo valor. Voltando no exemplo, se o Paulo fizer aniversário, temos que mudar a informação. Se antes tínhamos

```
idade_atual = 30
nome = "Paulo"
sobrenome = "Leme"
```

Agora basta eu atualizar colocando

```
idade_atual = 31
```

## Constantes

As Constantes são similares as variáveis no sentido de armazenar dados, mas como o nome diz, ele é um valor que será imutável, uma vez definido, não pode ser alterada.

Se a `idade_atual` precisa ser alterada todo ano, o mesmo não acontece para a `data_de_nascimento`, por exemplo, que nunca vai mudar. Dessa forma podemos criar uma constante ao invés de uma variável.

### Constantes em Python

Em Python, nós não temos o elemento de Constantes, não sendo possível declará-las nativamente na linguagem.

Para isso, nós criamos uma _convenção_, um costume que faz com que outros programadores vejam que a nossa variável deve permanecer constante, que é colocar o nome da variável **todo em maiúsculas**.

```
DATA_DE_NASCIMENTO = "21-10-1989"
```

## Boas Práticas

Colocar o nome das constantes em maiúsculas como convenção é o que chamamos de _boas práticas_.

Durante a escrita de códigos, as boas práticas trazem boa legibilidade no código, o deixa mais organizado e trás um entendimento melhor para casos onde outros desenvolvedores vão ler ou manipular sua aplicação.

São algumas boas práticas de Variáveis e Constantes em Python:

* Nomes em padrão _snake case_

    _snake case_ é o nome dado à prática de colocarmos o sinal de _underline_ ( _ ) entre as palavras.

    **Exemplo:**

    ```
    total_da_compra = 100
    idade_atual = 30
    taxa_de_juros = 0.05
    ```

* Escolher nomes _declarativos_

    O nome das variáveis deve refletir de forma clara qual a sua finalidade, para que seja de fácil entendimento. Uma variável que nos trás um número de clientes pode ser chamado de `numero_de_clientes`, que vai ser muito mais fácil de entender ao lermos o código do que apenas chamar de `a` ou `nc`.

* Nomes de constantes em _maiúsculas_

    Como já explicado na parte de constantes, ao aplicarmos o nome `DATA_DE_NASCIMENTO` ao invés de `data_de_nascimento` nós deixamos claro aos programadores de Python que aquele valor é uma constante, e que devemos manter a mesma imutável.

### Vale dizer

Como o Python trabalha categorizando as variáveis de forma automática, não podemos declarar uma variável com valor vazio, pois receberemos um erro no lugar

Caso seja necessário declarar a variável antes, podemos criar um valor inicial que será alterado depois, mas que deve ser do tipo esperado para receber no futuro, como `name = ""`, ou `soma = 0`.

Nós usamos as boas práticas não só para deixar o código mais legível para os outros, mas para nós mesmos também. Imagine só você voltar em um código que escreveu semana passada, mês passado ou até antes. Você já vai ter esquecido da maior parte dele. Também é comum escrevermos códigos grandes, com várias variáveis para mantermos. Nomes bem feitos e declarativos nos facilitarão demais para utilizações posteriores

**[Voltar para o índice](README.md)**