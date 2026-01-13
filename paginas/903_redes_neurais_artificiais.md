# Redes Neurais Artificiais

As Redes Neurais foram criadas com base Bioinspirada.

Nos animais, incluindo os humanos, os impulsos do cérebro se dão por base de conexões realizadas por neurônios, que geram ativações entre si e geram os processamentos de imagens, sensações, sons, pensamentos e tudo o mais.

A rede neural artificial não chega nem perto do que é a rede neural natural, até porque temos limitações entre impulsos binários e impulsos contínuos, por exemplo. Dessa forma, as redes neurais artificiais ainda precisam ser altamente especialistas em um elemento, para que consiga trabalhar bem dentro deste elemento.

## A estrutura de uma RNA

Uma Rede Neural Artificial (RNA) é composta basicamente de:

* **Valores de entrada**: São os valores que entram como impulso nos primeiros neurônios
* **Neurônios de entrada**: São os pontos que recebem a informação em forma de valores e retornam uma saída em forma de pesos que eles dão para cada informação
* **Função soma**: Realiza um cálculo com base nos pesos que o neurônio enviou
* **Saída**: Retorna o resultado da função utilizada

Essa é a forma básica de uma RNA. Elas podem se complexificar a partir disso, como por exemplo adicionando várias camadas de neurônios que vão retornando outros valores a partir dos neurônios anteriores.

## Treinamento de RNA de Imagens

Uma IA não consegue enxergar uma imagem igual nós humanos enxergamos. Para nós, quando a luz reflete em um objeto e chega até nossos olhos, nós detectamos a imagem e conectamos com a nossa base de conhecimento cerebral, que é a memória, e reconhecemos a imagem.

O processador do computador não é capaz de enxergar imagens através do espectro de luz, da cor e da temperatura das ondas. Ele é binário, sabendo reconhecer somente uns e zeros. Dessa forma, uma imagem precisa ser convertida para essa "linguagem" para ser reconhecida.

Para isso, a imagem é quebrada em muitos pedaços bem pequenos, e cada um destes pedaços é convertido para um valor, em uma matriz de dados. Bem, se a imagem for colorida, não apenas uma matriz, mas três, uma para o vermelho, outra para o verde e outra para o azul.

Após isso, o computador vai lendo esta matriz e com base no seu treinamento, na sua memória, vai juntando os elementos para saber se aquela matriz corresponde a uma orelha de um gato, a uma folha de uma árvore, a uma boca humana, e assim por diante.

A RNA então junta todos os elementos que conseguiu reconhecer como prováveis elementos da imagem e diz o que aquilo é mais provável de ser.

Então por exemplo, se na imagem ela reconhecer as matrizes que correspondem a uma orelha de gato, a olhos de gato e a um rabo de gato, ela vai presumir que ali existe um gato.

[Voltar para o índice](/README.md)