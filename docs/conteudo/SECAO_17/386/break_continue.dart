import 'dart:math';

main() {
  // #01
  for (int a = 0; a < 10; a++) {
    if (a == 6) {
      break; //sai do for
    }
    print(a);
  }
  print('Depois do laço for #01');

  // #02
  for (int a = 0; a < 10; a++) {
    if (a % 2 == 0) {
      continue; //interrompe e vai para a próxima
    }
    print(a);
  }
  print('Depois do laço for #02');

  print('Fim');
}
