import 'dart:math';

void main() {
  int a = 2;
  int b = 3;
  print('a + b: ${a + b}');

  int c = 4;
  int d = 5;
  print('c + d: ${c + d}');

  somaComPrint1();
  somaComPrint2(a, b);
  somaComPrint2(c, d);

  somaDoisNumerosQuaisquer();
}

void somaComPrint1() {
  print('executei!!!! - somaComPrint1');
}

void somaComPrint2(int a, int b) {
  print('somaComPrint2: ${a + b}');
}

void somaDoisNumerosQuaisquer() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  print('Os valores sorteados foram: $n1 e $n2.');
  print('somaDoisNumerosQuaisquer: ${n1 + n2}');
}
