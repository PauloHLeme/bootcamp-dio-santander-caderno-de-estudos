saldo = 200
deposito = int(input("Digite o valor do deposito: "))

saldo += deposito

valor_formatado = f'{saldo:.2f}'.replace('.',',')

print(f'Deposito realizado com sucesso!\nSeu saldo atual é de R${valor_formatado}.')