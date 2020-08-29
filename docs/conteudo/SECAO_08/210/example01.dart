class Carro {
  int _velocidade = 0;

  int acelerar() {
    _velocidade += 5;
    return _velocidade;
  }

  int frear() {
    _velocidade -= 5;
    return _velocidade;
  }
}

mixin Esportivo {
  bool _turboLigado = false;

  ligarTurbo() {
    _turboLigado = true;
  }

  desligarTurbo() {
    _turboLigado = false;
  }
}

class Ferrari extends Carro with Esportivo {}

class Gol extends Carro {}

void main() {
  Carro c1 = Carro();
  print(c1.acelerar());
  print(c1.acelerar());

  c1 = Gol();
  print(c1.acelerar());
  print(c1.frear());
  print(c1.frear());

  Carro f1 = Ferrari();
  print(f1.acelerar());
  print(f1.acelerar());
  print(f1.acelerar());
  print(f1.frear());
  print(f1.frear());
}
