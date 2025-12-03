opcao = -1

while opcao != 0:
    opcao = int(input('Digite a opção desejada\n[1] Sacar\n[2] Depositar\n[0] Sair\n'))

    if opcao == 1:
        print('Saque efetuado')
    elif opcao == 2:
        print('Depósito efetuado')
    elif opcao == 0:
        print('Saindo...')
    else:
        print('Opção Inválida')

print('Obrigado por utilizar nossos serviços.')