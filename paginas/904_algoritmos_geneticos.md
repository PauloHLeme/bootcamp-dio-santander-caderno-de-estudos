# Algoritmos Genéticos

Os algoritmos genéticos são uma abordagem de RNA que se utiliza da observação do comportamento genético em espécies biológicas para realizar a criação e treinamento das redes neurais.

Geneticamente os seres vivos passaram por milhares de populações e gerações diferentes e durante todo esse período foram evoluindo através dos mecanismos de mutação genética e seleção natural.

## Seleção e Mutação em RNA

Em RNA, nós podemos gerar milhares de gerações de populações em um tempo muito mais rápido do que na natureza. Nós tiramos proveito disso para gerar algoritmos cada vez mais especializados por meio do Fitness, ou seja, do quanto eles se adequam na resolução do problema em questão.

Para isso, nós criamos uma população inicial de agentes IA, passamos valores aleatórios para seus neurônios de entrada e verificamos quais são os melhores resultados.

Com os melhores resultados, nós geramos novos valores de entrada, gerando idivíduos com valores próximos deste ótimo padrão, fazendo junções dos indivíduos anteriores para gerar novos valores filhos, ou realizando uma leve alteração em um número ou outro, como se fossem mutações.

Com essa nova população, rodamos novamente e extraímos os melhores fitness desta nova geração. Repetindo o processo diversas vezes, tendemos a ter indivíduos cada vez mais especializados, pois estão sendo selecionados artificialmente dentre os melhores indivíduos da população anterior.

## Aplicações de AG

* Navegação Robótica
* Inteligência Artificial
* Geração de Novos Dados
* Jogos Digitais

## Implementando um AG

### Passo 0

Antes de tudo, temos que ter uma população inicial de dados e valores. Isso pode vir tanto de um valor já recebido quanto termos que gerar os nossos próprios.

### Passo 1

Agora que temos a nossa população inicial, nós precisamos selecionar aqueles que foram os melhores indivíduos.

Normalmente utilizamos uma seleção por roleta. Nesse método, nós temos um sorteio dentre todos os indivíduos, mas os indivíduos que foram melhor na primeira filtragem tem uma porcentagem maior de chance de ser sorteado na roleta

_Mas por que nós sorteamos os piores junto, e não escolhemos somente os melhores?_

Porque nós vamos fazer a recombinação dos indivíduos ainda, e nesse caso, pode ser que sorteando um dos melhores e recombinando com um dos piores, tenhamos algum resultado que possa ser melhor do que o imaginado, devido a uma alteração benéfica que mesmo um indivíduo que teve uma classificação mais baixa pode trazer sozinho.

### Passo 2

Realizamos a recombinação dos indivíduos, misturando os valores de dois pais e gerarmos dois filhos.

Vamos supor que cada elemento tenha 6 valores referentes aos neurônios de entrada. Nesse caso, podemos pegar apenas os dois últimos valores e trocarmos. Assim, os valores finais do pai 1 e do pai 2 sejam trocados e a gente tenha 2 filhos com os finais trocados.

### Passo 3

Realizamos a mutação dos indivíduos. Normalmente, para um controle melhor, realizamos a mutação de apenas um valor, mantendo ainda boa parte da estrutura que deu o fitting do indivíduo.

Para a mutação deste valor, vamos simplesmente invertê-lo. Se escolhermos o campo 3, vamos inverter o valor 1 para 0 ou o valor 0 para 1.