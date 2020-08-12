class Pessoa {
  String nome;
  String _cpf;
}

main() {
  var p1 = Pessoa();
  p1.nome = 'João';

  //atributo _cpf é visível pois está no mesmo arquivo
  p1._cpf = '123.123.123-12';

  print('O ${p1.nome} tem CPF ${p1._cpf}');
}
