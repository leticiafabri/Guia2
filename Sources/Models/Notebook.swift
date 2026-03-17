class Notebook: DispositivoEletronico {
    
    var tamanhoTela: Double
    var capacidadeArmazenamento: Int
    
    init(marca: String, modelo: String, preco: Double, tamanhoTela: Double, capacidade: Int) {
        self.tamanhoTela = tamanhoTela
        self.capacidadeArmazenamento = capacidade
        super.init(marca: marca, modelo: modelo, preco: preco)
    }
    
    override func exibirDetalhes() {
        super.exibirDetalhes()
        print("Tela: \(tamanhoTela)")
        print("Armazenamento: \(capacidadeArmazenamento)GB")
    }
}