import 'dart:math';

main() {
  int n1 = numeroAleatorio(100);
  print(n1);

  int n2 = numeroAleatorio2();
  print(n2);

  imprimirData(10, 12, 2020);
  imprimirData(10, 12);
  imprimirData(10);
  imprimirData();

  imprimirData2(10, 12, 2020);
  imprimirData2(10, 12);
  imprimirData2(10);
}

int numeroAleatorio(int maximo) {
  return Random().nextInt(maximo);
}

int numeroAleatorio2([int maximo = 10]) {
  return Random().nextInt(maximo);
}

void imprimirData([int dia = 1, int mes = 1, int ano = 1970]) {
  print('imprimirData');
  print('$dia/$mes/$ano');
}

void imprimirData2(int dia, [int mes = 1, int ano = 1970]) {
  print('imprimirData2');
  print('$dia/$mes/$ano');
}
