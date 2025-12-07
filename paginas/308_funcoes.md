# Funções

Funções são blocos de códigos criados para realizarem determinadas atividades, podendo ser acessadas para usos posteriores.

Elas recebem um nome, para poderem ser chamadas novamente e podem receber parâmetros de entrada e podem retornar valores de saída.

> Programar baseado em funções é o mesmo que dizer que estamos programando de maneira estruturada

## Criando Funções

Para criarmos as funções, nós vamos utilizar a palavra reservada `def`, que define para o interpretador que isso será uma função. Em seguida passamos o nome da função, abrimos parênteses para colocar os argumentos de entrada, caso existam, e fechamos com dois pontos.

Após isso, vamos utilizar a identação para colocar os comandos daquele bloco dentro dele.

```python
def exibir_mensagem(nome="anônimo")
    print(f"Olá {nome}")
```

No exemplo acima, além do argumento nome, podemos definir um valor padrão para ele caso não seja passado nenhum valor. Se eu não fizer essa declaração de um valor padrão, vou receber um erro, [pois o argumento passa a ser obrigatório.](/exercícios/funcoes/funcoes_argumentos.py "Funções com argumentos").

## Executando funções

Com a função criada, agora é hora de chamarmos ela, pois ela só é executada quando é chamada.

```python
exibir_mensagem("Paulo")
```

Pronto, chamamos a função simplesmente por chamar ela e enviamos o nome para ela.

## Retornando Valores

Temos a palavra reservada `return`, que é utilizada para dizer à função qual será o valor que ela deve retornar. Utilizamos ela no final da função. Caso não passemos este `return`, ele devolve o valor _none_ por padrão

```python
def sucessor_e_antecessor(numeros):
    antecessor = numeros - 1
    sucessor = numeros + 1

    return antecessor, sucessor
```

Desta forma a função vai fazer o cálculo do programa como solicitado e nos dar estes 2 valores para trabalharmos.

### Vale dizer

Se pedirmos dois ou mais retornos, a função nos envia eles dentro de uma tupla.

## Passando argumentos

Temos algumas formas de passar os argumentos para as nossas funções.

### Argumentos posicionais

```python
def gravar_livro(titulo, nome_autor, sobrenome_autor, ano):
    print(f'Livro inserido com sucesso! {titulo} - {sobrenome_autor}, {nome_autor}. {ano}')

gravar_livro("O Iluminado", "Stephen", "King", 1977)
```

Quando passamos argumentos posicionais, nós colocamos os valores na posição exata que o parâmetro espera.

Se alguém alterar um nome de um argumento, o funcionamento não é afetado, pois ele se baseia nas posições.

Entretanto, se alguém alterar as posições do argumento ou do envio, o código vai executar, mas exibindo os valores no ponto errado.

### Argumentos nomeados

```python
def gravar_livro(titulo, nome_autor, sobrenome_autor, ano):
    print(f'Livro inserido com sucesso! {titulo} - {sobrenome_autor}, {nome_autor}. {ano}')

gravar_livro(livro="O Iluminado", nome_autor="Stephen", sobrenome_autor="King", ano=1977)
```

Quando passamos argumentos nomeados, podemos variar a posição, bastando nomear os valores.

Isso garante que os argumentos estarão na posição correta sempre, mesmo que alguém inverta as ordens na função.

O problema desta técnica é que ela é sensível a alteração do nome dos argumentos, retornando um erro no código.

### Argumentos em dicionário

```python
def gravar_livro(titulo, autor, ano):
    print(f'Livro inserido com sucesso! {titulo} - {sobrenome_autor}, {nome_autor}. {ano}')

gravar_livro(**{"livro":"O Iluminado", "nome_autor":"Stephen", "sobrenome_autor":"King", "ano":1977})
```

Funcionamento muito parecido com o nomeado, mas consegue receber uma entrada de dicionário.

## Args e Kwargs

Podemos combinar parâmetros que serão obrigatórios e pedirmos para que sejam enviados em tupas ou dicionários. Esses parâmetros são definidos na função como `*args` e `**kwargs`, respectivamente.

Dessa forma, quando os valores forem passados sem uma chave, eles serão recebidos para serem utilizados nos args. Igualmente, os valores que forem passados com chaves identificadores serão utilizados no lugar dos kwargs.

[Aqui está](/exercícios/funcoes/funcoes_args_kwargs.py "Args e Kwargs") um exercício para ajudar a fixar a ideia, que pode ser um pouco confusa, em um primeiro momento.

## Parâmetros Especiais

Podemos forçar uma função a receber apenas parâmetros posicionais, nominais ou até mesmo um misto de ambas, mas de acordo com o que desejarmos para cada argumento.

Quando desejarmos que os argumentos sejam enviados apenas por posição, vamos passá-los e colocarmos uma barra`/` **após** eles.

```python
def criar_carro(modelo, ano, placa, /, marca, motor, combustivel):
    
    print(modelo, ano, placa, marca, motor, combustivel)
```

Neste caso, estamos forçando que o modelo, o ano e a placa sejam passados **apenas** por posição, e os demais estejam livres.

Quando desejamos que o envio seja feita **apenas** por argumentos nomeados, nós colocamos o asterísco `*` **antes** dos argumentos.

```python
def criar_carro(modelo, ano, placa, *, marca, motor, combustivel):
    
    print(modelo, ano, placa, marca, motor, combustivel)
```

Desta forma, todos os elementos que estão após o asterisco são obrigatoriamente declarados como nomeados, e os três anteriores ficam livres.

Podermos ainda fazer um misto destes dois métodos, forçando parte de forma posicional e parte de forma nomeada.

```python
def criar_carro(modelo, ano, placa, /, marca, *, motor, combustivel):
    
    print(modelo, ano, placa, marca, motor, combustivel)
```

No caso acima, temos os três primeiros sendo obrigatoriamente posicionais, a marca sendo totalmente opcional e os dois últimos sendo obrigatoriamente nomeados.

## Objetos de Primeira Classe

Como em Python tudo é objeto, as funções também são objetos.

Alguns objetos são dados como Objetos de Primeira Classe. Estes objetos são extremamente versáteis, **_pois podem atribuir funções a variáveis_**, **_podem ser parâmetros de funções_**, **_podem ser usadas como valores em estruturas como listas, dicionarios e tuplas_**, e ainda **_podem ser um valor de retorno de uma função_**.

Em Python, as funções podem exercer qualquer uma dessas tarefas, o que as torna extremamente úteis.

[Aqui estão](/exercícios/funcoes/funcoes_como_argumentos.py "Funções como argumentos") alguns exemplos de seus usos.

## Escopo local e global

Escopo é a área de serviço, de atuação de uma variável ou de um bloco de código.

Tudo o que está dentro de uma função é **Local**, e assim que a função acabar, suas variáveis vão morrer e deixar de existir.

Temos uma palavra reservada de nome `global` que serve justamente para deixar a variável disponível depois da execução, elevando-a para o escopo global.

### _Boas Práticas_

> Utilize a variável `global` com cuidado, pois não é uma boa prática ser utilizada, uma vez que prejudica a manutenção do código.

**[Voltar para o índice](README.md)**