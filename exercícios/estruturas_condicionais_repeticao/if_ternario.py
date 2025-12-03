saldo = 2000
saque = 2400

# Em uma única linha declaramos a condição if e também as respostas em caso if e else
status = "Sucesso" if saldo >= saque else "Falha"

print(f'{status} ao executar o saque.')