# --- Constantes para descontos ---
DESCONTO_FIDELIZADO = 0.95  # 5% de desconto
DESCONTO_ESPECIAL = 0.90   # 10% de desconto

# --- Entradas do usuário ---
tipo_cliente = input("Qual o tipo de cliente?: ").capitalize()
preco_por_tonelada = float(input("Qual o preço por tonelada?: "))
peso = float(input("Qual o peso da carga? "))

def calcula_valor(tipo_cliente, carga, preco):
    """Calcula o valor total da carga com base no tipo de cliente."""
    if tipo_cliente == "Novo Cliente":
        valor_total = carga * preco
    elif tipo_cliente == "Cliente Fidelizado":
        valor_total = carga * preco * DESCONTO_FIDELIZADO
    else:
        # Assumindo que outros tipos de cliente têm o desconto especial
        valor_total = carga * preco * DESCONTO_ESPECIAL
    return valor_total

valor_final = calcula_valor(tipo_cliente, peso, preco_por_tonelada)
print(f"O valor total da carga é: R$ {valor_final:.2f}")