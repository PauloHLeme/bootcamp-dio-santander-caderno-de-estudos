# Lê o número de pedidos
N = int(input())

# Dicionário para armazenar totais por tipo de embalagem
totais = {}

# Processa cada pedido
for _ in range(N):
    linha = input()
    cliente, embalagem, quantidade = linha.split(", ")
    quantidade = float(quantidade)
    
    # Some a quantidade ao tipo de embalagem correspondente
    totais[embalagem] = totais.get(embalagem, 0) + quantidade
    
# Imprime o resultado no formato solicitado, mantendo a ordem "saco", "papelao ondulado", "papel kraft"
for tipo in ["saco", "papelao ondulado", "papel kraft"]:
    print(f"{tipo}: {int(totais[tipo]) if tipo in totais and totais[tipo].is_integer() else totais.get(tipo, 0)}")