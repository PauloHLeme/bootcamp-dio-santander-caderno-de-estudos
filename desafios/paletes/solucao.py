import math

# Leitura das entradas como strings
total_caixas = input().strip()
capacidade_palete = input().strip()

# Conversão para inteiros
total_caixas = int(total_caixas)
capacidade_palete = int(capacidade_palete)

# TODO: Calcule o número de paletes necessários (arredondando para cima)
paletes_necessarios = math.ceil(total_caixas / capacidade_palete)

# Impressão como string (sem espaços ou caracteres especiais)
print(str(paletes_necessarios))