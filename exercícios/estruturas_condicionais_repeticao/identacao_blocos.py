# Método que executa a ação de saque
def sacar(valor):
    # Primeira Identação, para todos os itens dentro do método
    saldo = 1000

    if saldo >= valor:
        # Segunda Identação, para o código dentro do if
        saldo -= valor
        print(f'Você sacou R${valor:.2f}.\nSeu saldo agora é de R${saldo:.2f}')
    else:
        # Terceira identação, no mesmo nível da segunda, pois o else não está dentro do if, mas ainda assim está dentro do método 
        print(f'Você não tem saldo suficiente para sacar esse valor.\nSeu saldo é de R${saldo:.2f}')

# Sem identação, pois está fora do método, se tratando de novas orientações para a execução do código
valor_saque = float(input(f'Quanto você deseja sacar?\nR$: '))

sacar(valor_saque)