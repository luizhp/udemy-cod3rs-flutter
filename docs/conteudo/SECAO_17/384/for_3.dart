import 'dart:io';

main() {
  // #01
  int a = 0;
  while (a < 10) {
    print(a);
    a++;
  }

  // #02
  var digitado = '';
  while (digitado != 'sair') {
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync();
  }

  // #03
  for (; digitado != 'sair';) {
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync();
  }

  // #04
  do {
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync();
  } while (digitado != 'sair');

  print('Fim');
}
