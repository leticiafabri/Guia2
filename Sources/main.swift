import Foundation

let celular = Smartphone(
    marca: "Apple",
    modelo: "iPhone 15",
    preco: 5000,
    tamanhoTela: 6.1,
    temCamera: true
)

let notebook = Notebook(
    marca: "Dell",
    modelo: "Inspiron",
    preco: 3500,
    tamanhoTela: 15.6,
    capacidade: 512
)

celular.ligar()
celular.tirarFoto()

notebook.ligar()
notebook.atualizarSoftware()

print("\n--- LISTA DE DISPOSITIVOS ---")

let dispositivos: [DispositivoEletronico] = [celular, notebook]

for d in dispositivos {
    d.exibirDetalhes()
    print("------------------")
}