# Infraestrutura Global AWS

## O que é

É a estrutura interna de Data Centers ao redor do mundo que atendem aos fornecimentos de todos os serviços da AWS, que é o serviço de computação em nuvem da Amazon.

Essa infra é dividida em Regiões e Zonas de disponibilidade.

Essa cobertura abrangente em todo o globo faz com que a sua estrutura seja bem sólida, garantindo uma disponibilidade grande, com baixas chances de falhas por falta de conectividade.

## Regiões

As regiões são os locais onde estão localizados um núcleo de data centers, que possuem alguns ambientes isolados, que são chamados de zonas de disponibilidade, que servem para criar redundância e mais segurança.

Todas as regiões são conectadas com redes de alta disponibilidade, indepentende do local, e possuem isolamento dos dados que estão localizados em cada região, a menos que você deseje o contrário.

Cada região de dados vai seguir as regras de legislação do cuidado de dados ao qual esta região está localizada. Sendo assim, se utilizarmos os dados localizados na região do Brasil, vamos ter que cuidar dos dados de acordo com a legislação local, ou seja, a LGPD.

### Zonas

Também podem ser encontradas como _AZ_, ou _Avaliability Zones_, são os agrupamentos de datacenters que estão isoladas dentro de uma região. Cada zona roda de forma independente uma da outra, para trazer redundância e segurança de tal forma de que um problema em uma zona não afete a outra da mesma região.

### Vale Dizer

Execute serviços que precisam estar sempre disponíveis em pelo menos em duas AZ, para que seu sistema tenha mais segurança e redundância.

## Pontos de Presença

Também conhecidos como _Edge Locations_, Locais de Borda ou Redes de Borda são pontos específicos pelo globo para distribuir conteúdo de forma rápida, ou seja, eles são pontos específicos, que tem por função reforçar e melhorar a conectividade dos serviços, ligando o usuário a região do servidor com a melhor disponibilidade possível.

### Amazon CloudFront

Dessa forma, supondo que um usuário no Brasil vá acessar um serviço hospedado lá na China, a Infraestrutura de serviços da AWS vai alocar um servidor de um dos Pontos de Presença no meio do caminho, que vai armazenar em Cache os dados de acesso dos serviços que estão sendo utilizados, reduzindo assim a latência na entrega dos serviços.

### Amazon Route 53 DNS

Neste mesmo exemplo, pode ser que ao invés de disponibilizar uma imagem do servidor em um ponto mais próximo, o Route 53 vai atuar fazendo o endereçamento de forma não apenas correta, mas eficiente, direcionando a captação da informação no local correto e de forma acertiva.

## Acessando os serviços AWS

### Console de Gerenciamento

O Console é uma plataforma gráfica que nos trás todos os serviços disponíveis da AWS através de um painel de controle, ele pode ser acessado através do site [aws.amazon.com/pt/console/](https://aws.amazon.com/pt/console/).

### CLI

A AWS possui um CLI, que é uma interface que pode ser instalada e então permite o acesso aos serviços da AWS através de comandos digitados em um terminal, seja ele Windows, Linux ou MacOS.

Exige um pouco mais de conhecimento, mas permite trabalhar com a automatização de algumas tarefas

### SDKs

São caminhos de desenvolvimento que acessam o serviço da AWS via API conectada a SDK do desenvolvimento da sua aplicação. Possui acesso em diversas linguagem, como Java, C#, Go, Python, JavaScript e todas as mais populares e utilizadas com certeza terão esse tipo de apoio de desenvolvimento.

## Provisionamento da Infraestrutura

### Elastic Beanstalk

O Elastic Beanstalk é um serviço de deploy que facilita e automatiza a instauração de uma instância de um serviço na nuvem.

De forma resumida, passamos para ele o arquivo do software que queremos jogar na nuvem e um arquivo com as configurações que desejamos para nossa máquina virtual. O Beanstalk vai cuidar então de carregar os documentos e realizar de forma automatizada o que deixamos no arquivo de configuração, nos entregando no final do processo a máquina em funcionamento.

### Cloud Formation

Outro serviço de deploy, o Cloud Formation funciona de modo um pouco diferente. Passamos para ele um arquivo JSON ou YAML com as configurações que desejamos para o nosso ambiente virtual, como se fosse um código programado, e o Cloud Formation vai cuidar de interpretar este código e montar a máquina para nós.

Diferente do Elastic Beanstalk, ele apenas monta a estrutura da cloud, não joga o programa que desejamos executar lá dentro.

**[Voltar para o índice](/README.md)**