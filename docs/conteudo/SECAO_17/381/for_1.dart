main() {
  // #01
  for (int a = 0; a <= 10; a++) {
    print('a = $a');
  }
  print('Fim');

  // #02
  for (int a = 0; a <= 10; a = a + 2) {
    print('a = $a');
  }
  print('Fim');

  // #03
  for (int a = 0; a <= 10; a += 2) {
    print('a = $a');
  }
  print('Fim');

  // #04
  for (int a = 100; a >= 0; a -= 1) {
    print('a = $a');
  }
  print('Fim');

  // #05
  int b = 0;
  for (; b <= 10; b++) {
    print('b = $b');
  }
  print('[FORA] b = $b');
  print('Fim');

  // #06
  var notas = [8.9, 9.3, 7.8, 6.9, 9.1];
  for (var i = 0; i < notas.length; i++) {
    print('Nota ${i + 1} = ${notas[i]}.');
  }

  print('Fim');
}
