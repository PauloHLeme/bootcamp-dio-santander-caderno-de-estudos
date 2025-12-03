MAIOR_IDADE = 18

idade = int(input('Digite a sua idade: '))

# Se a idade for menor que 18, o código dentro do if será executado, e dentro do else não. Se o valor for igual ou maior, daí o else é executado, e o if fica inativo
if idade < MAIOR_IDADE:
    tempo_para_maioridade = MAIOR_IDADE - idade
    print(f'Ainda faltam {tempo_para_maioridade} anos para você poder tirar sua Carteira de Trânsito.')
else:
    print('Você já pode tirar sua Carteira de Trânsito.')