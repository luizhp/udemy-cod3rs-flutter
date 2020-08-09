class Carro {
  final int velocidadeMaxima;
  int velocidadeAtual = 0;

  Carro([this.velocidadeMaxima = 100]) {}

  int acelerar() {
    this.velocidadeAtual += 5;
    if (this.velocidadeAtual > this.velocidadeMaxima) {
      this.velocidadeAtual = this.velocidadeMaxima;
    }
    return this.velocidadeAtual;
  }

  int frear() {
    this.velocidadeAtual -= 5;
    if (this.velocidadeAtual < 0) {
      this.velocidadeAtual = 0;
    }
    return this.velocidadeAtual;
  }

  bool estaNoLimite() {
    return (this.velocidadeAtual == this.velocidadeMaxima);
  }

  String exibirStatus() {
    return "Velocidade Atual: ${this.velocidadeAtual} / Velocidade Máxima: ${this.velocidadeMaxima}";
  }
}
