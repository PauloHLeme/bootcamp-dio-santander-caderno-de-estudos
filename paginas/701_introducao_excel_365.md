# Introdução ao Excel 365

## Possibilidades de Emprego

Ao procurar vagas que foquem em Excel, não adianta procurar como excel em uma ferramenta de emprego. Nesses momentos, precisamos buscar as vagas que utilizan o Excel como uma ferramenta chave no dia a dia. Algumas delas são:

### Analista de MIS

MIS é uma sigla para **M**anagement **I**nformation **S**ystems, ou Gerenciamento de Sistemas de Informação. Esse é o profissional que gerencia as informações do sistema, para que relatórios sejam gerados para as análises da empresa.

### Analista de Planejamento

É o profissional que gerencia e planeja eventos, gestão de gastos ou até mesmo os cuidados de uma área toda.

### Outras áreas

Diversas áreas precisam de um analista capaz de dominar o Excel juntamente com outras habilidades de Dados. Áreas como Saúde e Finanças são bem conhecidas por não apenas precisarem destes profissionais como também os remunerar bem.

## WorkBook e Worksheet

### WorkBook (Pasta de Trabalho)

O Workbook é o arquivo do Excel em si. Não importa quantas planilhas, ou seja, abas, o documento tenha, tudo é um WorkBook.

Se pensarmos no arquivo como uma pasta de trabalho física, daquelas maletas pretas de antigamente, o Workbook seria a pasta propriamente dita.

Na maioria das vezes, os arquivos serão salvos no formato `.xlsx`, enquanto arquivos mais antigos trazem a extensão `.xls` e arquivos criados em ferramentas de planilha _open source_ virão com o formato `.odf`.

### Worksheet (Planilhas)

Na barra inferior do Excel temos várias abas, que podem ser adicionadas, alteradas, duplicadas, removidas, coloridas, etc. Essas são as planilhas.

No nosso comparativo com pastas físicas, as planilhas são as folhas que estão dentro da pasta.

## Cells e Ranges

### Cell (Célula)

O Excel trabalha com tabelas de dado em formato de matriz com cordenadas alfanuméricas. O que isso significa?

Ela é uma matriz porque tem várias colunas distribuídas horizontalmente, com a primeira nomeada como A, a segunda como B e assim por diante, e tem uma série de linhas distribuídas verticalmente, com a primeira nomeada como 1, a segunda como 2, e assim por diante, formando uma área com diversos campos, cada um sendo conhecido como uma Célula, ou Cell.

Se clicarmos em uma Cell que está na reta da coluna `G` e na altura da linha `6`, podemos dizer que estamos na Cell `G6`. Isso nos dá uma forma de relacionar cada célula com uma posição específica, ou seja, uma coordenada, e é muito útil para quando precisarmos referenciar os valores existentes nela ou usarmos ela para uma fórmula, por exemplo.

### Range (Intervalo)

Em diversos momentos precisamos selecionar várias células de uma única vez. Seja para somarmos várias células, para encontrarmos um valor dentro desse grupo ou qualquer outra operação que precise de várias informações.

Esses grupos de células recebem o nome de Range, ou Intervalo, e são conotadas pela marcação:

```
coordenada_inicial:coordenada_final
```

Ou seja, vamos passar o valor da Cell que está posicionada mais acima e mais a esquerda, seguida do sinal de dois pontos `:` e o valor da Cell que se encontra mais abaixo e mais a direita.

#### Exemplos

```python
# Selecionando da cell A6 até G6
A6:G6

# Selecionando da cell B5 e pegando 20 valores na mesma coluna
B5:B24

# Selecionando a primeira célula da planilha e indo até a célula M27
A1:M27
```

Além disso, podemos ainda fazer a seleção de apenas algumas cells, e não apenas de um intervalo. Neste caso, utilizamos o ponto e vírgula `;`, que indica que estamos selecionando uma célula E a outra, não DE uma célula ATÈ a outra.

```python
# Selecionando a cell A6 e a G6
A6;G6

# Selecionando da cell B5 até a cell B25, mas só as células que são múltiplas de 5
B5;B10;B15;B20;B25
```

E por fim podemos unir esses dois sinais para realizarmos a seleção de mais de um intervalo de células.

```python
# Selecionando das células A6 até G6 E das cells B5 até B25
A6:G6;B5:B25
```

## Menus e Context Menus

Os menus do Excel são baseados em contexto, com cada elemento agrupado em um grupo de opções que são relacionados entre si por um tipo de necessidade.

### Página Inicial

Apresenta as ferramentas mais frequentemente utilizadas, tendo blocos de opções de fonte, alinhamento, formatação de número, estilos e células, por exemplo.

### Inserir

Contém ferramentas de inserção de itens na nossa planilha. Dividido em tabelas, ilustrações, controles, gráficos, filtros e outros elementos que serão adicionados a Worksheet.

### Página

Relacionado as formatações de página, como formatação de temas, configurações, organizações, impressão e dimensionamento

### Fórmulas

Serve para guardar menus como bibliotecas de fórmulas, nomes definidos, cálculos...

### Dados

Para fazer ETL, obtenção de dados, consultas, tipos de dados, filtros e classificações...

Essas são só algumas das abas. Conforme formos explorando, conseguimos achar várias funções úteis, e para isso podemos ir de acordo com o contexto do que precisamos fazer.

## Manipulando Cells

Temos várias formas interessantes de manipularmos as células.

### Copiando Fórmulas entre Células

Se adicionarmos uma fórmula em uma célula, digamos na G6, e depois desejarmos que essa fórmula seja extendida para outras células, podemos clicar nela, que vai ficar selecionada por um retângulo da cor verde com um ponto no canto inferior direito.

Se passarmos o mouse neste canto, ele vai mudar o formato do ponteiro, neste momento, podemos clicar e segurar e então arrastar a seleção para as células desejadas, fazendo com que a formula seja replicada nas demais células.

Da mesma forma, podemos antes selecionar a célula com a fórmula e as demais células do intervalo, apertar F2 na primeira e então o comando Ctrl+Enter, e então o excel vai replicar a fórmula para as demais Cells.

### Colar especial

Ao selecionarmos uma celula ou um range delas, podemos clicar em Ctrl+C para copiarmos o seu conteúdo e colarmos com Ctrl+V

Agora, se na hora de colar apertarmos Ctrl+Alt+V, nós abrimos o menu de colar especial, que nos dá opções diversas, como colar apenas os valores, apenas a formatação ou até mesmo para colarmos apenas o valor do resultado de uma fórmula, ao invés da fórmula em si.

### Começar uma Fórmula

Não vamos entrar nos detalhes das fórmulas agora, mas se selecionarmos uma célula e digitarmos o sinal de Igual `=`, nós iniciamos o assistente de fórmula, que vai nos permitir escrevermos as fórmulas e ainda vai passar as opções disponíveis.

## Congelamento de Células

Ao copiarmos uma fórmula para outra célula arrastando a seleção, os valores aos quais a fórmula faz referência também vão ser "arrastados". Para que isso não ocorra, temos que fazer o congelamento das referências.

Para fazermos isso, podemos selecionar o valor da Cell dentro da fórmula e clicarmos no botão F4, ou então adicionamos o sinal de sifrão `$` na frente da letra ou do número da célula que queremos congelar:

```python
# Valores não congelados
=SOMA(G5:G25)

# Coluna da primeira cell Congelada
=SOMA($G5:G25)

# Linha da Primeira cell Congelada
=SOMA(G$5:G25)

# Linha e coluna da primeira cell congelada
=SOMA($G$5:G25)
```

**[Voltar para o índice](/README.md)**