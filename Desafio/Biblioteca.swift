struct Livro {
    var titulo: String
    var ator: String
    var anoPublicacao: Int
    var disponibilidade: Bool
}

//iniciando lista de livros
var biblioteca: [Livro] = []

//funções fazem oq dizem no proprio nome
func adicionarLivro(titulo: String, autor: String, anoPublicacao: Int, disponibilidade: Bool) {

    let novoLivro = Livro(titulo: titulo, autor: autor, anoPublicacao: anoPublicacao, disponibilidade: disponibilidade)
    biblioteca.append(novoLivro)

}

func listarLivros() {
    print("Lista de Livros:")

    for (index, livro) in biblioteca.enumerated() {
        let status = livro.disponibilidade ? "Sim" : "Não"

        print("\(index + 1). Título: \(livro.titulo) | Autor: \(livro.autor) | Ano: \(livro.anoPublicacao) | Disponível: \(status)")
    }
}

func alterarDisponibilidade(titulo: String) {

    if let index = biblioteca.firstIndex(where: { $0.titulo == titulo }) {

        biblioteca[index].disponibilidade.toggle()

        switch biblioteca[index].disponibilidade {
        case true:
            print("O livro '\(titulo)' está disponível novamente!")
        case false:
            print("O livro '\(titulo)' foi emprestado!")
        }

    } else {
        print("Livro não encontrado.")
    }
}

func buscarLivro(titulo: String) {

    let livroEncontrado = biblioteca.first(where: { $0.titulo == titulo })

    if let livro = livroEncontrado {
        print("Livro encontrado: \(livro.titulo) - \(livro.autor)")
    } else {
        print("Livro não encontrado.")
    }
}

//fluxo de uso
adicionarLivro(titulo: "Jurassic Park", autor: "Michael Crichton", anoPublicacao: 1990, disponibilidade: true)
adicionarLivro(titulo: "O Reino Perdido", autor: "Michael Crichton", anoPublicacao: 1995, disponibilidade: true)
adicionarLivro(titulo: "Sapiens", autor: "Yuval Noah Harari", anoPublicacao: 2011, disponibilidade: true)
adicionarLivro(titulo: "Homo Deus", autor: "Yuval Noah Harari", anoPublicacao: 2015, disponibilidade: false)

listarLivros()

print("\nAtualizando a disponibilidade de alguns livros")
alterarDisponibilidade(titulo: "Sapiens")
alterarDisponibilidade(titulo: "Homo Deus")

listarLivros()

print("\nDigite o nome do livro que deseja buscar:")

if let tituloBusca = readLine() {
    buscarLivro(titulo: tituloBusca)
} else {
    print("Nenhum título foi digitado.")
}