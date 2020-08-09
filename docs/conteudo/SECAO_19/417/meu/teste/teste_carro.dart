import 'dart:io';
import '../model/carro.dart';

main() {
  Carro carro = new Carro(100);

  String tecla = '';
  do {
    switch (tecla) {
      case '+':
        carro.acelerar();
        break;
      case '-':
        carro.frear();
        break;
      case 'l':
        print(
            'O carro está no limite ? ${carro.estaNoLimite() ? "sim" : "não"}');
        break;
      case 's':
        print(carro.exibirStatus());
        break;
    }

    if (tecla != 's') {
      print(carro.exibirStatus());
    }

    print('');
    print(
        'Escolha: (+) para acelerar, (-) para frear, (l) verificar se está no limite (s) para status e (!) para sair');
    tecla = stdin.readLineSync();
  } while (tecla != '!');
}
