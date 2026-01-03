# Computação em AWS

A AWS oferece diversos serviços. Um dos mais conhecidos é a parte de Computação em Nuvem e, dentro da computação em nuvem, temos diversos tipos de serviços oferecidos. Nesse módulo vamos ver os principais, e suas funcionalidades, diferenças e vantagens.

## EC2

EC2 é a sigla para _Elastic Compute Cloud_, ou Computação Elástica em Nuvem, é o serviço mais básico fornecido para a computação em nuvem pela AWS.

Neste serviço, você tem a disposição uma máquina disponibilizada de acordo com as suas necessidades iniciais, personalizando Sistema Operacional, Memória, Rede, Armazenamento e outros elementos, e pode contar com a Elasticidade, ou seja, a capacidade de aumentar ou até mesmo reduzir os recursos necessários, gerenciando de forma eficiente e simples os custos do seu sistema.

### Instância

Instância é o nome dado a um servidor virtual no modelo EC2, e cada instância possui a sua configuração de Memória, CPU, Disco, Rede e Sistema Operacional.

Temos uma infinidade de instâncias que podem ser utilizadas, mas elas costumam cair em 5 grandes grupos:

1. **Uso Geral**: Equilíbrio de recursos de computação, memória e rede. Indicado para servidores de aplicativo, jogos, backend e banco de dados pequenos.

2. **Otimizadas para Computação**: Ideal para cargas que exigem processadores de alto desempenho, como processamentos em lote de informações.

3. **Otimizadas para Memória**: Projeto para alto desempenho no processamento de grandes quantidades de informações na memória. Temos como exemplo banco de dados de alto desempenho ou de dados em tempo real.

4. **Computação Acelerada**: Utiliza aceleração de hardware e coprocessadores. Utilizado para cálculo de ponto flutuante, processamento gráfico ou padrões de dados.

5. **Otimizadas para Armazenamento**: Com sistemas de armazenamento de dados aprimorados, é ideal para lidar com grande volume de dados que devam ficar armazenados. São utilizados em sistemas de Data Warehouses, sistemas de processamento de transações online.

### EC2 AutoScaling

É um serviço da AWS que faz o provimento de Instâncias EC2 de acordo com as necessidades, dividindo as requisições dos usuários no seu sistema entre diversas máquinas.

A vantagem principal do AutoScaling é o gerenciamento do poder computacional de acordo com a nossa necessidade naquele momento, gerando economia ao não deixar recursos sempre rodando enquanto não são necessários e também evitando congestionamento quando o fluxo for maior que a média.

#### Configurando o Auto Scalling

Para utilizarmos este recurso, nós devemos ativar um Auto Scaling Group, que vai gerenciar as informações de recursos necessários para o nosso sistema:

* Minimum Size: Quantidade mínima de instâncias que devem rodar
* Desired Capacity: Capacidade que do que desejamos que seja o nosso padrão, conforme as necessidades
* Scale Out as Needed: Se necessário aumentar a escala, em quanto pode ser aumentado
* Maximum size: A quantidade máxima de instâncias que podem rodar no nosso sistema, sendo a soma da Desired Capacity com a Scale Out as Needed

#### Abordagem

* Preditiva: Através de conhecimento do negócio e de dados passados, antevemos as necessidades de forma antecipada, realizando o aumento ou a redução de instâncias

* Dinâmica: Scaling feito com base na necessidade instantânea. Podemos colocar sinais de alerta, como subir ao atingir 80% da capacidade.

É legal dizer que podemos combinar as duas abordagens, realizando a escala preditiva, mas realizando o ajuste fino de forma dinâmica.

### ELB

ELB, ou _Elastic Load Balancer_, é um algoritmo que vai realizar a distribuição das cargas de requisições de forma eficiente para as instâncias dentro do nosso sistema.

Dessa forma, ao termos mais de uma instância rodando, seja por padrão ou por Auto Scaling, o Elastic Load Balancer nos garante que não vão chegar todas as requisições congestionando uma instância enquanto a outra está livre.

### Serviços de Mensageria

São serviços que vão organizar mensagens não para o usuário do sistema, mas sim para a comunicação entre os microsserviços que nós temos rodando de forma interna na nossa aplicação.

Existem dois que valem a pena mencionar:

#### SQS

O SQS, ou _Simple Queue Service_, é um serviço de fila de mensagens, que vai receber as informações de um microsserviço, como por exemplo ordens de compra, e gerar uma fila com essas ordens, para serem analisadas de forma sequencial por um segundo microsserviço, como por exemplo uma checagem de fraudes.

Nesse modelo, as ordens de compra são tratadas como mensagens que vão ficar armazenadas nessa fila SQS e vão ser checadas uma a uma, em um sistema onde a primeira mensagem que entrou vai ser a primeira mensagem a ser lida, e que vai criar esse serviço assíncrono, que pode receber várias mensagens sem ter que esperar que o segundo serviço processe uma para só daí liberar a próxima ação para o próximo usuário.

#### SNS

Já o SNS, ou _Simple Notification Service_, é um serviço de notificação de mensagens. Neste sistema, temos um microsserviço realizando a publicação de um tópico, que é uma informação, e um ou mais microsserviços subscritos nesse SNS, realizando a escuta dessas notificações que chegam e agindo de acordo com elas.

Podemos exemplificar isso levando em consideração o nosso exemplo anterior. Vamos dizer que o ms de fraudes aprovou a compra, e agora ele é o pub que envia a informação para o SNS, que envia para três serviços diferentes, um ms que dá baixa dos itens comprados no estoque, um que envia uma mensagem de whatsapp para o cliente acompanhar o pedido e um terceiro que envia um email com a NF-E e outras informações do pedido.

## Computação sem Servidor (Servless)

O nome pode enganar, mas a computação sem servidor não é realmente sem um serviço de servidor distribuindo a sua aplicação, mas sim que o servidor é um elemento com o qual você não está diretamente preocupado.

Neste tipo de serviço, você não precisa se preocupar por exemplo em escolher um servidor baseado em suas capacidades, memória, sistema operacional e outras características, pois elas são automaticamente ajustadas pelo serviço. Dessa forma, o servidor se torna um elemento invisível para você, transformando-se assim em um serviço conhecido como _Servless_.

### AWS Lambda

É o principal serviço de execução servless. Você escolhe a linguagem de programação de sua preferência, executa a partir de eventos pré-definidos ou chamadas diretas a API do Lambda e então a AWS realiza a execução da sua aplicação, cobrando apenas os recursos utilizados e o tempo utilizado.

## Containers em AWS

Containers são formas padrão de empacotar o seu aplicativo em um único objeto, que será executado dentro de um processo isolado. Quem já utilizou o Docker, que cria "Pacotes" que rodam um serviço, está acostumado a utilizar containers.

Na AWS, temos 4 principais serviços com a estrutura de Containers.

### ECR - Elastic Container Registry

Enviamos para o ECR uma imagem Docker, que cria uma espécie de repositório das imagens que você insere. Nele conseguimos criar um histórico de todos os containers enviados e todas as suas versões.

Ao enviarmos os Containers para o ECR, temos os registros de todos eles, que podem posteriormente serem rodados no ECS.

### ECS - Elastic Container Service

Serviço que roda efetivamente o Container armazenado no ECR, ou seja, o ECS é o serviço de execução de imagens.

### EKS - Elastic Kubernetes Service

Kubernetes é um outro provedor de Containers, e o EKS é o responsável pela execução dos Containers criados dentro deste serviço.

### AWS Fargate

É uma ferramenta Servless que te permite utilizar tanto o ECS quanto o EKS para que você realize a execução das suas aplicações, simplificando o processo de deploy ao pular o trabalho de criação do server.

**[Voltar para o índice](/README.md)**