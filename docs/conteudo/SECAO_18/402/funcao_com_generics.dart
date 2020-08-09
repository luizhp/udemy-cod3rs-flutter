Object segundoElementoV1(List lista) {
  return lista.length >= 2 ? lista[1] : null;
}

Object segundoElementoV2(List<String> lista) {
  return lista.length >= 2 ? lista[1] : null;
}

E segundoElementoV3<E>(List<E> lista) {
  return lista.length >= 2 ? lista[1] : null;
}

main() {
  var lista = [3, 6, 7, 12, 45, 78, 1];
  var lista2 = ['a', 'b'];

  print(segundoElementoV1(lista)); //6
  print(segundoElementoV2(lista2)); //b

  print(segundoElementoV3(lista));
  int segundoElemento = segundoElementoV3<int>(lista);
  print(segundoElemento);

  print(segundoElementoV3(lista2));
  String segundoElemento2 = segundoElementoV3<String>(lista2);
  print(segundoElemento2);
}
