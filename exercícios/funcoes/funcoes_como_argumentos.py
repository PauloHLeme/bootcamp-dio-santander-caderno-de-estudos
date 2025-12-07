# Função que soma dois números
def somar(valor_1, valor_2):
    return valor_1 + valor_2

def subtrair(valor_1, valor_2):
    return valor_1 - valor_2

def multiplicar(valor_1, valor_2):
    return valor_1 * valor_2

def dividir(valor_1, valor_2):
    return valor_1 / valor_2

# Função que exibe o resultado. Ela vai utilizar a função soma como um argumento interno, chamando a função para somar os dois outros argumentos.
def exibir_resultado(valor_1, valor_2, funcao_soma):
    resultado = funcao_soma(valor_1, valor_2)
    print(f'{valor_1} + {valor_2} = {resultado}')

exibir_resultado(20, 10, somar)
exibir_resultado(20, 10, subtrair)
exibir_resultado(20, 10, multiplicar)
exibir_resultado(20, 10, dividir)

# definindo a função somar como o valor da variável
op = somar

print(op(20, 10))