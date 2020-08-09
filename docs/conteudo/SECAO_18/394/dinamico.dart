main() {
  juntar(1, 9);
  juntar1(1, 9);
  juntar('Bom ', 'dia!!!');
  juntar('O valor de PI é ', 3.1415);
  juntar1('O valor de PI é ', 3.1415);
  juntar2('O valor de PI é ', 3.1415);

  var resultado = juntar3('O valor de PI é ', 3.1415);
  print(resultado);
}

juntar(a, b) {
  print('juntar');
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}

dynamic juntar1(dynamic a, dynamic b) {
  print('juntar1');
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}

String juntar2(dynamic a, dynamic b) {
  print('juntar2');
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}

String juntar3(dynamic a, b) {
  print('juntar3');
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}
