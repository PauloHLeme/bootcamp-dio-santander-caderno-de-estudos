# Framework Luigi para ETL

O Framework Luigi é uma ferramenta de código aberto voltada para visualização e manipulação de dados para diversas utilizações, entre elas, ETL.

O Framework Luigi cria pipelines de dados em Python. Ele trata  resolução de dependências, gerenciamento de fluxo de trabalho, visualização, tratamento de falhas, integração de linha de comando e outras funções, tudo isso em uma interface gráfica.

## Estrutura do Luigi

### Target

O target é o alvo da saída de uma tarefa. Seja esse target pode ser um arquivo que será gerado após o ETL, opde ser um Banco de Dados que receberá as informações, uma ferramenta que fará a exibição dos dados...

### Task

É a parte onde o trabalho real ocorre. Ela pode assumir a forma de tarefas dependentes ou independentes. Uma tarefa dependente vai, por exemplo, depender da anterior, que seria a captação dos dados, para que depois ela faça o tratamento, mas que só será possível se os dados vierem corretamente.

As funções de tarefas podem ter os seguintes métodos:

* `require()`: São tarefas que devem ser executadas antes da tarefa atual
* `output()`: Contém o destino da saída dos dados do nosso processo
* `run()`: Contém a lógica real da execução da tarefa.

## Instalando e Abrindo

Para instalar o luigi, utilizamos o terminal com o comando padrão `pip`, que é o instalador de ferramentas python

```
pip install luigi
```

Assim que o instalador concluir o processo, podemos simplesmente digitar `luigi` no terminal que o programa será iniciado.

Após esse processo, vamos acessar no navegador a porta [8082](http://localhost:8082/), que nos dará acesso a interface gráfica do Luigi.