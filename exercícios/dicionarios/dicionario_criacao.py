# Cria um dicionário a partir da declaração de chave e conteúdo dentro de chaves
pessoa = {"nome": "Paulo", "sobrenome":"Leme", "idade":33, "altura":1.63}

# cria um dicionário a partir da função dict
carro = dict(marca = "GM",modelo = "Vectra")

# adiciona um novo par de chave e valor no dicionario existente
pessoa["e-mail"] = "tec.pauloleme@gmail.com"

# como acessar as informações
print(f'Olá! Me chamo {pessoa["nome"]} {pessoa["sobrenome"]}, tenho {pessoa["idade"]} anos e dirigo um {carro["modelo"]}.')
