import Foundation

class DispositivoEletronico {
    
    let marca: String
    var modelo: String
    
    var preco: Double {
        willSet {
            print("Preço vai mudar de \(preco) para \(newValue)")
        }
        didSet {
            print("Preço mudou de \(oldValue) para \(preco)")
        }
    }
    
    private let numeroSerie: String
    var ligado: Bool
    
    var precoComDesconto: Double {
        return preco * 0.9
    }
    
    init(marca: String, modelo: String, preco: Double) {
        self.marca = marca
        self.modelo = modelo
        self.preco = preco
        self.numeroSerie = String(UUID().uuidString.prefix(8))
        self.ligado = false
    }
    
    convenience init(marca: String, modelo: String) {
        self.init(marca: marca, modelo: modelo, preco: 99.99)
    }
    
    func ligar() {
        if !ligado {
            ligado = true
            print("\(modelo) ligado")
        }
    }
    
    func desligar() {
        if ligado {
            ligado = false
            print("\(modelo) desligado")
        }
    }
    
    func exibirDetalhes() {
        print("""
        Marca: \(marca)
        Modelo: \(modelo)
        Série: \(numeroSerie)
        Preço: \(preco)
        Ligado: \(ligado)
        """)
    }
    
    func aplicarDesconto(percentual: Double) {
        preco -= preco * (percentual / 100)
    }
    
    deinit {
        print("\(modelo) removido da memória")
    }
}