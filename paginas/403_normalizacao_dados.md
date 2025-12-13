# Normalização de Dados

Padronização é um elemento crucial nos nossos bancos de dados. Imagine o usuário ter a liberdade para digitar o nome da cidade como quiser, e quando você vai tentar relacionar todos os usuários da cidade de São Paulo tem entradas como:

> São Paulo, São paulo, SAO PAULO, SP, Sampa, sao Paluo...

Dessa forma fica impossível unificar os dados e realizar qualquer tipo de estudo, trabalho ou avaliação com eles.

Para isso, a normalização dos dados é essencial ainda no momento da estruturação do banco de dados. É ela que permite que o banco de dados seja consistente, íntegro e organizado, sem redundâncias ou anomalias nas informações.

## Formas Normais

Formas normais são regras criadas para que os dados sejam incluídos nos bancos de dados. Algumas das principais são:

* **Primeira Forma Normal (1FN)**

    Trata da atomicidade de dados. Os campos devem ser indivisíveis. Dividir as informações em País, Estado, Cidade, Bairro, Rua e Número ao invés de um campo Endereço é um ótimo exemplo de 1FN.

* **Segunda Forma Normal (2FN)**

    Além da FN1, todos os atributos não chave devem depender totalmente da chave primária. Tabelas com chaves primárias simples, já está padronizada na 2FN.

* **Terceira Forma Normal (3FN)**

    Além da FN2, nenhuma coluna não chave deve depender de outra coluna não chave.

**[Voltar para o índice](/README.md)**