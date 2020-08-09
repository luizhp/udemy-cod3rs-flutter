main() {
  var n1 = 2;
  var n2 = 4.56;
  var texto = "O valor da soma é: ";

  print(texto + (n1 + n2).toString());

  var t1 = "Olá";
  var t2 = "Dart";
  print(t1 + t2);
  print(t1 + ' ' + t2);
  print(t1 + " " + t2);

  var isReal = true;

  print(n1.runtimeType);
  print(n2.runtimeType);
  print(t1.runtimeType);
  print(t2.runtimeType);
  print(isReal.runtimeType);

  print(n1 is int);
  print(n1 is String);
}
