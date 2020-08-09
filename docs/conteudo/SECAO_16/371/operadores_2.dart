main() {
  // Operadores Atribuição (binário/infix)
  print("Operadores Atribuição");
  double a = 2;
  a = a + 3;
  a += 3;
  a -= 3;
  a *= 3;
  a /= 3;
  a %= 2;

  print(a); // 1.0

  // Operadores Relacionais (binário/infix) -> resultado é boolean
  print("Operadores Relacionais");
  print(3 > 2); // false
  print(3 >= 3); // true
  print(3 < 4); // true
  print(3 != 3); // false
  print(3 == 3); // true
  print(3 == '3'); // false

  print(2 + 5 > 3 - 1 && 4 + 7 != 7 - 4); // true

  // binary
  // 101 = 5
  // 100 = 4
  //--------
  // 100 = 4
  print(5 & 4);
}
