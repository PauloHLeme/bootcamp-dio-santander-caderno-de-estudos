carros = ["Palio", "Vectra", "Gol", "HR-V", "Civic"]

# Enumerate serve parar podermos passar a numeração dos itens, que indicamos aqui através da variável indice
for indice, carro in enumerate(carros):
    
    indice+=1
    print(f'Modelo {indice:02} : {carro}')