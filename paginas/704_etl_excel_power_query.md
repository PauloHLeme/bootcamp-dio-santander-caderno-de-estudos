# Criando um Processo de ETL com Excel e Power Query

## Case de Estudo

Vamos trabalhar na prática com um arquivo de informações da Nintendo enviando lotes de jogos para lojistas. A base de dados apresenta inconsistência em suas informações e falhas nas boas práticas.

Temos para isso um arquivo `.xlsx` que lista estes dados.

Será nosso dever trabalhar neste documento para executar a padronização, limpeza, formatação e preparação dos dados, de forma que outro funcionário possa gerar um dashboard a partir dos dados tratados.

## ETL Automatizado

Para que isso seja feito, aplicamos o processo de ETL, que já vimos em outras aulas do curso. Primeiro, vamos extrair os dados, depois transformá-los e em seguida carregá-los em uma planilha corrigida.

No processo de Transform, vamos utilizar o Power Query, que vai nos trazer a automação deste processo de forma recorrente, ou seja, não vamos apenas transformar esses dados, mas vamos salvar os passos desta transformação para que no futuro, se tivermos mais dados, só passemos eles pelo processo que já criamos e eles sejam extraídos e transformados de forma automática.

**[Voltar para o índice](/README.md)**