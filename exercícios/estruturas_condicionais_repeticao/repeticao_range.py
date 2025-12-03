print("=====GERADOR DE TABUADA=====")
tabuada = int(input("Digite um número para\ngerar a tabuada: "))

print('============================\n\n'
    f'TABUADA DO NÚMERO {tabuada}\n')

# O range(1, 11) vai gerar os números de 1 a 10 para o multiplicador
for multiplicador in range(1, 11):
    resultado = tabuada * multiplicador
    print(f'{multiplicador:02} X {tabuada:2} = {resultado:3}')

print('============================')
