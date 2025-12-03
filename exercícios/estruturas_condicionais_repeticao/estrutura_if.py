import sys

MAIOR_IDADE = 18

idade = int(input('Digite a sua idade: '))

# caso a idade digitada seja menor que 18 anos, esse código será executado, senão o interpretador pula toda a execução do bloco if e vai para a linha seguinte, imprimindo a mensagem de boas vindas
if idade < MAIOR_IDADE:
    tempo_para_maioridade = MAIOR_IDADE - idade
    print(f'Acesso Proibido. Volte daqui {tempo_para_maioridade} anos. 😉')
    sys.exit()

print("Bem Vindo! Jogue com Responsabilidade. 😉")