# Métodos de Machine Learning Bioinspirados

Não é só na vivência humana que podemos buscar inspirações para desenvolvermos o aprendizado em máquina. Podemos buscar em outros seres vivos comportamentos que poderiam ser altamente vantajosos para máquinas inteligentes.

Sistemas de comunidade complexos como abelhas e formigas inspiram muitas formas de desenvolvermos sistemas de Inteligência Artificial capazes de trabalhar de forma conjunta em busca de um objetivo final, por exemplo.

## Métodos Heurísticos

Sabemos que 2+2=4, 4+4=8 e 8+7=15, por exemplo. Essas expressões numéricas possuem valores imutáveis, ou seja, são métodos com resultados **Determinísticos**.

Em métodos determinísticos, nós conseguimos encontrar a melhor solução possível para um problema, mas muitos são os casos onde a solução não precisa ser a melhor possível, mas sim uma solução excelente para o problema dentro de um universo restrito de outras soluções tão válidas quanto.

Esse método é conhecido como Método **Heurístico**. As IAs buscam muitas vezes as respostas Heurísticas, por isso ao fazermos pergunta raramente temos respostas iguais, pois existem um universo de respostas satisfatórias, e esse universo é chamado de **Ótimo Global** de respostas.

## Colônia de Formigas

Um grupo de formigas, quando sai de sua colônia e encontra um alimento que pode ser picado e carregado de volta a colônia começa a seguir os diversos caminhos possíveis para a ida e volta.

Se observarmos por um tempo, começamos a perceber que conforme o tempo passa, o caminho que despende menos energia para que a comida seja carregada começa a ser mais utilizado, enquanto os outros vão sendo seguidos por algumas poucas apenas, até chegar o momento que o esforço de todas as operárias está no caminho ótimo.

Isso ocorre pois as formigas depositam feromônios no caminho, indicando que ele é uma opção altamente viável, já que a busca pela comida precisa ser otimizada. Com o tempo, as demais formigas vão seguindo estes feromônios, que estão mais presentes no caminho que a maioria começa a fazer, e que vai deixando um reforço sobre os feromônios anteriores.

Isso pode muito bem ser utilizado em um ambiente de aprendizado de robôs de limpeza, por exemplo.

Vamos supor que o robô não tenha um mapa do ambiente ainda e está conhecendo ele pela primeira vez. Neste caso, ele vai fazendo a varredura, andando por todo o ambiente e identificando caminhos bons e caminhos que não dão em nada. Neste exemplo, ele vai deixando "Feromônios Virtuais", que seriam uma pontuação positiva para um ambiente onde pode se locomover, negativo para um ambiente que não deve ir e um valor zero para onde não passou.

Dessa forma, a cada incursão do robô pelo ambiente, a pontuação das melhores rotas aumentam, enquanto a pontuação das rotas a serem evitadas diminuem conforme ele tenta novamente, ou se mantém negativas caso ele não volte lá. É um exemplo inspirado no comportamento das formigas sendo aplicado com utilidade real.

[Voltar para o índice](/README.md)