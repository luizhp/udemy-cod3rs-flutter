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
    this._turboLigado = true;
  }

  desligarTurbo() {
    this._turboLigado = false;
  }
}

mixin Luxo {
  bool _arLigado = false;

  ligarAr() {
    this._arLigado = true;
  }

  desligarAr() {
    this._arLigado = false;
  }
}

class Ferrari extends Carro with Esportivo, Luxo {
  @override
  int acelerar() {
    if (this._turboLigado) {
      super.acelerar();
    }

    return super.acelerar();
  }
}

void main() {
  var f1 = Ferrari();
  print(f1.acelerar());

  f1.ligarTurbo();
  print(f1.acelerar());
  print(f1.acelerar());
  print(f1.frear());
  print(f1.frear());
}
