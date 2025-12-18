# O Desafio

## Contexto

Você é um cientista de dados no Santander e recebeu a tarefa de envolver seus clientes de maneira mais personalizada. Seu objetivo é usar o poder da IA Generativa para criar mensagens de marketing personalizadas que serão entregues a cada cliente.

### Condições do Problema:
1. Você recebeu uma planilha simples, em formato CSV (`SDW2023.csv`), com uma lista de IDs de usuário do banco:

```
UserID
1
2
3
4
5
```

2. Seu trabalho é consumir o endpoint GET `https://sdw-2023-prd.up.railway.app/users/{id}` (API da Santander Dev Week 2023) para obter os dados de cada cliente.

3. Depois de obter os dados dos clientes, você vai usar a API do ChatGPT (OpenAI) para gerar uma mensagem de marketing personalizada para cada cliente. Essa mensagem deve enfatizar a importância dos investimentos.

4. Uma vez que a mensagem para cada cliente esteja pronta, você vai enviar essas informações de volta para a API, atualizando a lista de "news" de cada usuário usando o endpoint PUT https://sdw-2023-prd.up.railway.app/users/{id}

## Extract
Extraia a lista de IDs de usuário a partir do arquivo CSV. Para cada ID, faça uma requisição GET para obter os dados do usuário correspondente.

## Transform
Utilize a API do OpenAI GPT-4 para gerar uma mensagem de marketing personalizada para cada usuário.

## Load
Atualize a lista de "news" de cada usuário na API com a nova mensagem gerada.