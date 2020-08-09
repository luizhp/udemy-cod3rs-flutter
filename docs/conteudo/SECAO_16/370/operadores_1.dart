main() {
  // Operadores Aritméticos (operadores binários/infix)
  print('Operadores Aritméticos');

  int a = 7;
  int b = 3;
  int resultado = a + b;
  print(resultado); //10
  print(a - b); // 4
  print(a * b); // 21
  print(a / b); // 2.3333333333333335
  print(a % b); // 1
  print(33 % 2); // 1
  print(34 % 2); // 0
  print(a + b * a - b / a); // 27.571428571428573
  print(a + (b * a) - (b / a)); // 27.571428571428573

  // Operadores Lógicos
  print('Operadores Lógicos');

  bool ehFragil = true;
  bool ehCaro = false;
  print(ehFragil && ehCaro); // false //AND -> E
  print(ehFragil || ehCaro); // true  //OR -> OU
  print(ehFragil ^ ehCaro);
  // true  //XOR -> OU EXCLUSIVO - Apenas um pode ser true
  print(!ehFragil); // false // NOT // Operador unário/prefix
  print(!!ehFragil); // true // NOT NOT // Operador unário/prefix
}
