###################################################################

# saldo_inicial = 200
# saque = int(input("Digite o valor do saque: "))

# if saque <= saldo_inicial:
#     saldo_atualizado = saldo_inicial - saque
#     print(f'Saque realizado com sucesso!\nSeu saldo atual é de R$ {saldo_atualizado:.2f}')
# else:
#     # Mostra o saldo original, já que a transação não foi efetuada.
#     print(f'Saldo insuficiente!\nSeu saldo atual é de R$ {saldo_inicial:.2f}')

###################################################################

# saldo = 200
# deposito = int(input("Digite o valor do deposito: "))

# saldo += deposito

# valor_formatado = f'{saldo:.2f}'.replace('.',',')

# print(f'Deposito realizado com sucesso!\nSeu saldo atual é de R${valor_formatado}.')

###################################################################

# saldo = 1000
# saque = 250
# limite_saque = 200
# conta_especial = True
# expressao = (saldo>=saque and saque <=limite_saque) or (conta_especial and saldo >= saque)

# print(expressao)

###################################################################

# curso = "curso de python"
# nome_curso = curso

# saldo, limite = 200, 200

# print(curso is nome_curso)
# print(curso is not nome_curso)
# print(saldo is limite)

###################################################################

curso = "Curso de Python"
frutas = ["laranja", "maca", "uva"]
saques = [1500, 100]

print("python" in (curso.lower()))
print("maca" not in frutas)
print(100 in saques)