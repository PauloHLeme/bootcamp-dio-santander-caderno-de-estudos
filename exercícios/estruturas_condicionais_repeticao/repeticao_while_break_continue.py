while True:
    numero = int(input("Digite um número inteiro: "))

    if numero == 0:
        break

    if numero % 2 != 0:
        print(f"{numero} é um número ímpar.")
    else:
        continue
