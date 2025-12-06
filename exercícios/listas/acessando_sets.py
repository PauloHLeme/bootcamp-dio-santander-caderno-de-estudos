livros = {"O Iluminado","It","Misery"}

livros_isolados = list(livros)

print(livros_isolados[1])

for indice, livro in enumerate(livros):
    indice+=1
    print(f'Livro {indice:02} {livro} - King, Stephen.')
