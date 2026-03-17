final class Smartphone: DispositivoEletronico {
    
    var tamanhoTela: Double
    var temCamera: Bool
    
    init(marca: String, modelo: String, preco: Double, tamanhoTela: Double, temCamera: Bool) {
        self.tamanhoTela = tamanhoTela
        self.temCamera = temCamera
        super.init(marca: marca, modelo: modelo, preco: preco)
    }
    
    override func exibirDetalhes() {
        super.exibirDetalhes()
        print("Tela: \(tamanhoTela)")
        print("Tem câmera: \(temCamera)")
    }
    
    func tirarFoto() {
        if ligado && temCamera {
            print("📸 Foto tirada!")
        } else {
            print("Não é possível tirar foto")
        }
    }
}