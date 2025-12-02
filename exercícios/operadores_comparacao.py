saldo_inicial = 200
saque = int(input("Digite o valor do saque: "))

if saque <= saldo_inicial:
    saldo_atualizado = saldo_inicial - saque
    print(f'Saque realizado com sucesso!\nSeu saldo atual é de R$ {saldo_atualizado:.2f}')
else:
    # Mostra o saldo original, já que a transação não foi efetuada.
    print(f'Saldo insuficiente!\nSeu saldo atual é de R$ {saldo_inicial:.2f}')