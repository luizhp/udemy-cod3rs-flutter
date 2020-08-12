import 'pessoa.dart';

main() {
  var p1 = Pessoa();
  p1.nome = 'João';

  //atributo _cpf não é visível pois está em outro arquivo
  // p1._cpf = '123.123.123-12';
  // print('O ${p1.nome} tem CPF ${p1._cpf}');

  print('O ${p1.nome} tem CPF ?????');
}
