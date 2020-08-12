import 'pessoa.dart';

main() {
  var p1 = Pessoa();
  p1.nome = 'João';

  //fazendo getter/setter do cpf buscando _cpf
  p1.cpf = '123.123.123-12';
  print('O ${p1.nome} tem CPF ${p1.cpf}');
}
