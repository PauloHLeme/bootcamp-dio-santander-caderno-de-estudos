## Desafio

Uma produtora e exportadora de papéis para embalagens precisa calcular o valor final de suas exportações. Cada remessa possui um peso em toneladas e um preço por tonelada em dólares. Além disso, dependendo do tipo de cliente, a empresa oferece descontos:

* **Novo cliente**: sem desconto

* **Cliente fidelizado**: 5% de desconto

* **Cliente premium**: 10% de desconto

O programa deve calcular o valor total da remessa considerando o peso, o preço por tonelada e o desconto aplicável, retornando o valor final a ser pago pelo cliente.

## Entrada

A entrada deve receber:

1. Um número decimal representando o peso da carga em toneladas.

2. Um número decimal representando o preço por tonelada em dólares.

3. Uma string representando o tipo de cliente ("Novo cliente", "Cliente fidelizado", "Cliente premium").

## Saída

O programa deverá retornar o valor final da exportação (em dólares), já com o desconto aplicado, formatado com duas casas decimais.

### Exemplos

A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

```
_________________________________________
        ENTRADA         |   SAÍDA       
_________________________________________
    10                  |
    500                 |   5000.00
    Novo Cliente        |
_________________________________________
    8                   |
    600                 |   5000.00
    Cliente Fidelizado  |
_________________________________________
    12                  |
    400                 |   5000.00
    Cliente Premium     |
_________________________________________
```
