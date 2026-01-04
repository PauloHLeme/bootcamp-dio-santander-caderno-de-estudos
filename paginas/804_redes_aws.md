# Redes em AWS

## Amazon VPC

VPC significa _Virtual Private Cloud_, e é um ambiente virtual de rede que simula em essência o que seria uma rede de um ambiente de trabalho.

Dentro da VPC, nós conseguimos por exemplo criar as conexões entre as instâncias e os serviços que utilizamos, criar sub-redes públicas ou privadas de acesso controlado e tudo o que um ambiente de rede físico possui.

Podemos por exemplo conectar uma instância EC2 a um banco de dados dentro da AWS, requere os dados e devolve para uma outra instância. Essa instância que vai conversar com o servidor pode ficar, por questões de segurança, fora da rede pública da internet, e portanto criamos uma sub-rede privada para ela.

> Tudo começa dentro de um VPC

Essa frase é dita porque é importante estruturarmos nossos elementos de forma que elas se conectem em redes de forma muito bem planejada, para que o nosso sistema rode de forma eficiente e se comunique de forma segura.

## Conectividade com AWS

Podemos conectar nossa aplicação que está na AWS com a internet. Normalmente teremos uma subrede VPC que será pública, e terá os elementos que podem ser conectados de forma remota.

### Gateway de internet

Essa conexão entre a subrede pública e a internet é realizada através de um Gateway de Internet, também conhecido por IGW (_Internet Gateway_).

## Conectando VPC a sub-redes Privadas

Agora, temos casos onde precisamos conectar um serviço externo a uma subrede privada do nosso AWS. Nesses casos, também temos uma solução.

### Gateway Privado Virtual

Para isso, devemos realizar a conexão por meio de uma conexão VPN, que é uma rede privada virtual, e conectar à nossa subrede privada através de um Gateway Privado Virtual, que é um serviço fornecido pela AWS para esse tipo de conexão.

## AWS Direct Connect

É uma conexão dedicada realizada entre o Data Center e o seu ponto de origem de conexão.

A Amazon tem parceiros comerciais entre as principais distribuidoras de internet, e de acordo com a disponibilidade delas na nossa região, conseguimos contratar este serviço.

Neste padrão, é instalada uma rede de fibra ótica de alta velocidade com conexão ponta a ponta, ou seja, diretamente do seu endereço para o endpoint da AWS, desta forma passando fora da rede global da Internet e garantindo o máximo de segurança, além de alta velocidade.

## Sub-redes e Listas de Controle de Acesso

### Network ACLs

Toda rede AWS, seja ela pública ou privada, tem um Network ACL na frente dela.

A função da NACL é realizar o controle do tráfego de dados na sub-rede que ele controla.

Para isso, o Network ACL vai verificar em todas as requisições de informações qual o IP e a Porta pela qual a solicitação chega, verificar se existe uma regra que permita o tráfego dessa informação e só então permitir que ela passe.

Da mesma forma, funciona na hora da saída de uma informação requisitada. Não é porque ela entrou de forma autorizada que ela vai sair sem uma nova consulta de porta e IP.

Por padrão, a NACL vai permitir todo o tráfego de informações, tanto de entrada quanto de saída, cabendo a nós realizarmos as configurações de ajustes de segurança.

### Grupos de Segurança

Uma vez autorizado o tráfego de dados, temos uma nova camada, que atua diretamente dentro das instâncias EC2, que são os Grupos de Segurança.

Diferentemente do NACL e seu comportamento Stateless, temos aqui um comportamento do tipo Stateful, que diz que se um dado pode entrar, ele também pode sair.

Desta forma, por padrão, todo tráfego de entrada é proibido e todo tráfego de saída é permitido. Assim, quando realizarmos as configurações que liberem o tráfego de entrada dos dados autorizados, eles terão a permissão de saída garantida.

**[Voltar para o índice](/README.md)**