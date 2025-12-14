# Introdução ao Redis

O Redis é um banco de dados não relacional que realiza o armazenamento de dados na memória. Essa disponibilização dele em memória RAM trás um desempenho extremamente rápido.

Ele conta com uma estrutura de dados bem versátil, com operações atômicas e trabalha com cache de alto desempenho.

Os dados são gravados no tipo de chave/valor, que não são relacionadas umas com as outras em documentos ou nada parecido.

## Principais Utilizações

* Cache de Dados
* Fila de Mensagens
* Contagem de Acessos
* Estatísticas em Tempo Real
* Gerenciamento de Sessões
* Cache de Resultados de Consultas

## Principais Comandos

* `SET`: Adiciona um valor ao redis
* `GET`: Retorna o valor de uma chave
* `DEL`: Remove uma chave
* `INCR`: Incrementa o valor de uma chave em 1
* `DECR`: Decrementa o valor de uma chave em 1
* `EXISTS`: Verifica se uma chave existe
* `EXPIRE`: Define o tempo de vida de uma chave
* `KEYS`: Retorna todas as chaves que correspondem a um padrão

**[Voltar para o índice](/README.md)**