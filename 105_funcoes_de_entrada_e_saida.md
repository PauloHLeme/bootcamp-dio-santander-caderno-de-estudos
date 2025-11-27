# Funções de Entrada e Saída

Funções de Entrada e Saída são as formas de interação entre o código e o usuário através de entradas na função `input`ou saída na função `print`.

## Input

É a forma mais comum de receber dados do usuário. Quando pedimos um input do usuário, esperamos ele digitar uma resposta e então podemos armazenar essa informação em uma variável.

Toda entrada fornecida pelo `input` será do tipo _string_.

```
nome = input("Informe seu nome: ")
```

Ao utilizarmos a função `input`, nós abrimos parênteses e colocamos dentro dele o que queremos exibir para informar ao usuário que ele deve digitar uma informação.

## Print

É a forma mais comum de exibirmos uma mensagem na tela. Ela pode receber alguns argumentos, como o `sep`, que seria o separador de cada elemento do print e o `end`, que finaliza cada `print`.

Ao final, tudo é convertido para uma `string` e exibida ao usuário.

```
nome =  "Paulo"
sobrenome = "Leme"

print(nome, sobrenome)
print(nome, sobrenome, end="...\n")
print(nome, sobrenome, sep="#")
```

Ao rodarmos o código acima, teremos como saída:

```
>>> Paulo Leme
>>> Paulo Leme...
>>> Paulo#Leme
```

**[Voltar para o índice](README.md)**