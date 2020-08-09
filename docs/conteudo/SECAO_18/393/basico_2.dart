import 'dart:math';

main() {
  somar1(2, 3);

  int resultado = somar2(2, 3);
  resultado *= 2;
  print('O dobro do resultado é $resultado');

  print('O resultado é ${somarNumerosAleatorios()}');
}

void somar1(int a, int b) {
  print(a + b);
}

int somar2(int a, int b) {
  return a + b;
}

int somarNumerosAleatorios() {
  int a = Random().nextInt(11);
  int b = Random().nextInt(11);
  return a + b;
}
