conta_cliente = "premium"
saldo = 2000
saque = 2400

if conta_cliente == "basic":
    if saldo >= saque:
        print("Saque realizado com sucesso!")
    else:
        print("Saldo insuficiente.")
        
elif conta_cliente == "premium":
    if saldo >= saque:
        print("Saque realizado com sucesso!")
    else:
        print("Saque realizado com utilização do Cheque Especial.")
