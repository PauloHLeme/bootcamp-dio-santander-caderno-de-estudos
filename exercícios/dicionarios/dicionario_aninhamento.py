# O dicionário contatos contém outros 
# dicionários dentro dele. Desta forma, cada 
# chave tem um valor único e que não se repete,
# mas com outro dicionário com o restante das
# informações.
contatos = {
    "tec.pauloleme@gmail.com":{
        "nome": "Paulo", 
        "whatsapp": 16988452638,
        "CPF": 54318524582,
        "Hobbies": [
            "livros",
            "video-games",
            "seriados"
            ],
        "Pets":{
            "Cães": 2,
            "Gatos": 0,
            "Outros": 0
        }
    },

    "tec.joaoleme@gmail.com":{
        "nome": "João",
        "whatsapp": 16988452635,
        "CPF": 54318524584
    },

    "tec.victorleme@gmail.com":{
        "nome": "Victor",
        "whatsapp": 16948452638,
        "CPF": 54318524482
    }
}

# Acessamos as informações com dois colchetes,
# um para cada nível de dicionário
cliente = contatos["tec.pauloleme@gmail.com"]["nome"]
contato = str(contatos["tec.pauloleme@gmail.com"]["whatsapp"])

# Formatando o telefone com slicing strings
print(f'''
    Cliente: {cliente}
    Contato: ({contato[:2]}) {contato[2:7]}-{contato[7:11]}
'''

)
