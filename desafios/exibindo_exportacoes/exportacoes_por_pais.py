# Leitura do numero de exportações
n = int(input())

# Inicializa o dicionario para armazenar toneladas por pais
exportacoes = {}

# Loop para ler os dados de cada exportacao
for _ in range(n):
    linha = input().strip()
    pais, toneladas = linha.split(",")
    pais = pais.strip()
    toneladas = float(toneladas.strip())
    
    # Acumule as toneladas de exportação de cada país no dicionário
    exportacoes[pais] = exportacoes.get(pais, 0) + toneladas

# Imprima o total de toneladas por pais
listas_paises = exportacoes.keys()
for pais in listas_paises:
    print(f'{pais}: {int(exportacoes[pais])} toneladas')