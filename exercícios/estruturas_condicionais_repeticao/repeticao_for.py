import unicodedata

texto = input("Digite um texto: ")
VOGAIS = "AEIOU"

# Retira os acentos para que seja possível realizar a leitura da vogal como desejada
texto_formatado = unicodedata.normalize('NFD', texto.upper())

for letra in texto_formatado:
    if letra in VOGAIS:
        print(letra, end="")

print()