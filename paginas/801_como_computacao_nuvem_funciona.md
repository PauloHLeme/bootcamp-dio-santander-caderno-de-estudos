# Como a Computação em Nuvem Funciona

## O que é

A Cloud, ou Nuvem, é uma rede de servidores remotos que armazenam e gerenciam dados, além de fornecer a execução de aplicativos, conteúdos e serviços de forma remota.

Dessa forma, o serviço de nuvem veio resolver o problema de custo e espaço que as empresas tinham para manter seus próprios servidores.

## Custos de Modelo Local

Quando a empresa se utiliza de um modelo local, com um servidor próprio, ela tem alguns pontos muito importantes para considerar:

* Custo de servidores
* Custo de crescimento de máquinas
* Espaço físico para os servidores
* Refrigeração das máquinas
* Manutenção
* Complexidade com conexão
* Segurança
* Estrutura de acesso
* Profissionais da área de Rede
* Suporte Técnico
* Conexão de internet de alto nível
* Redundância de conexão

Resumindo, com todos estes custos, a sua empresa estará com um data center. Para isso, surgiram os Data Centers especializados, onde a empresa pode alugar espaço por um custo que vai variar de acordo com o uso, mas com toda a estrutura terceirizada para uma empresa que vai lidar com isso de forma especializada. Esses Data Center são as fornecedoras da rede de Nuvem atual.

## On Premisse vs Ambient Cloud

Quando a empresa tem um Data Center local, nós chamamos de On Premisse.

Com a demanda de processamento variando conforme datas, as empresas começaram a ter máquinas paradas por alguns períodos específicos do ano, quando as vendas e acessos aos sites caíam.

Para resolver essa questão de ociosidade, elas começaram a alugar esse espaço de processamento ocioso para outras empresas, gerando um serviço de servidores que seriam conectados via internet. Dessa forma, foram formadas as primeiras nuvens de servidores. A esse ambiente externo de servidor, demos o nome de Ambient Cloud.

## Hybrid Model

É o modelo que mistura as vantagens dos dois mundos, a estrutura local e a estrutura na nuvem. Normalmente este modelo é utilizado por empresas que concentram alto pico de tráfego em épocas especificas.

Neste caso, a empresa tem suas próprias máquinas de servidores, que comportam o movimento rotineiro da empresa. Nas épocas em que o pico ultrapassa suas capacidades, ela faz a locação de máquinas virtuais alocadas na nuvem, para lidar com o aumento de tráfego e não ter um congestionamento no seu sistema.

## Plataform

Uma Plataform é uma prestadora de serviço de servidores em nuvem. Apesar de existirem várias plataformas, algumas delas dominam o mercado atual, como por exemplo:

* Amazon: A Amazon possui seu sistema **AWS**, ou _Amazon Web Services_, que é seu braço de servidores IaaS (_Infrastructure as a Service_).
* Microsoft: A Microsoft também possui seu serviço de IaaS, que é a **Azure**.
* Oracle: A Oracle, gigante da tecnologia que tem o Java como o seu filho famoso tem um gigantesco serviço de rede conhecido como **OCI** (_Oracle Cloud Infrastructure_).
* Google: Chegou depois no mercado, mas chegou forte com a *GCP* (_Google Cloud Platform_).

É legal dizer que essas empresas de nuvem não prestam serviço apenas como servidores, mas tem um leque gigante de serviços prestados tendo como base a nuvem. Serviços de armazenamento específico para dados, aplicativos, sites, mas também jogos ou outros sistemas.

## Regions & Zones

Os Data Centers das grandes Plataforms ficam distribuídos em várias partes do mundo, cada um sendo conhecido como uma _Region_.

Ainda dentro dessas Regions, podemos ter várias _Zones_, que são áreas dentro daquela Region que contém os data centers específicos.

A distância entre máquinas na nuvem e o seu sistema de máquinas é importante porque quanto mais longe estão, mais latência você pode ter, ou seja, mais demora e mais chance de perda de informações no caminho. Dessa forma, é importante selecionar a região correta para a execução do seu serviço, de acordo com a localização da sua empresa e de seus clientes.

**[Voltar para o índice](/README.md)**