/*
  - Números (int e double)
  - String (String)
  - Booleano (bool)
  - dynamic
  - var
*/

main() {
  // Números
  int n1 = 3;
  double n2 = (-5.67).abs(); // -5.67.abs()
  n2.abs();
  double n3 = double.parse("12.765");

  num n4 = 6;

  print(n1 + n2 + n3);

  n4 = 6.7;
  print(n4);
  print(n1 + n2 + n3 + n4);

  // String
  String s1 = "Bom";
  String s2 = " dia";
  print(s1 + s2.toUpperCase() + " !!!");

  //Booleano
  bool estaChovendo = true;
  bool muitoFrio = false;
  print(estaChovendo || muitoFrio);
  print(estaChovendo && muitoFrio);

  //dynamic
  dynamic x = "Um texto";
  print(x);
  x = 123;
  print(x);
  x = false;
  print(x);

  var y = "Outro texto"; // infere que é texto
  // y = 123; ** ERRO **
}
