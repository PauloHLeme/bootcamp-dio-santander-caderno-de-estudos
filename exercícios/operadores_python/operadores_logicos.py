saldo = 1000
saque = 250
limite_saque = 200
conta_especial = True
expressao = (saldo>=saque and saque <=limite_saque) or (conta_especial and saldo >= saque)

print(expressao)