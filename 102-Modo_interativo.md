# Modo Interativo


## O que é

É um modo onde podemos escrever o código e gerar o resultado na hora via terminal.

Podemos acessar o modo interativo de duas formas:

1. No terminal
    
    Acessamos o terminal e simplesmente digitamos `python` e damos _Enter_. Dessa forma, já conseguimos executar os comandos.

2. No _script_

    Acessamos o terminal e digitamos `python -i app.py`. Ao executarmos o código, o Python vai entender o comando `-i` como a chamada do interpretador interativo e o arquivo `app.py`, que vai chamar o arquivo em questão e executar o código.

Para sairmos do modo interativo, basta digitarmos o comando `exit()`.

## dir

A função `dir()` serve para nos mostrar atributos e métodos de um objeto em Python. De forma bem básica, isso quer dizer que o `dir` nos mostra o que podemos fazer com aquele objeto.

Se utilizarmos o `dir()` sem nenhum objeto dentro, ele vai nos retornar fas funções e os objetos disponíveis no nosso ambiente de trabalho atual.

Já se nós colocarmos um objeto dentro dele, como uma variável de valor **100**, `dir(100)`por exemplo, ele vai listar as funções e métodos disponíveis a serem utilizadas com os objetos de valores `int`.

## help

Já o método `help()` serve para nos dar uma ajuda integrada do ambiente que estamos utilizando.

Da mesma forma que o `dir`, o `help` pode ser utilizado de forma vazia, nos dando o meu de ajuda ou então passando já o objeto, como `help(100)`.

Para sairmos da documentação fornecida pela função `help()`, basta digitarmos `q`.

**[Voltar para o índice](README.md)**