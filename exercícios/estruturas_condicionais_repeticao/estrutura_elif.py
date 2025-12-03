print("=====BANCO DIO====")
opcao_financeira = int(input(
    f'Para Saques, digite [1]\n'
    'Para Depósitos, digite [2]\n'
    'Para Transferências, digite [3]\n'
    'Digite agora a opção desejada: '
    ))

if opcao_financeira == 1:
    print('Saque')
elif opcao_financeira == 2:
    print('Depósito')
elif opcao_financeira == 3:
    print('Transferência')
else:
    print('Opção Inválida')