extension String {
    func formatarParaNumeroSerie(tamanho: Int) -> String {
        return self.padding(
            toLength: tamanho,
            withPad: "0",
            startingAt: 0
        )
    }
}