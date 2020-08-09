main() {
  // Operadores Unários
  int a = 3;
  int b = 4;

  // a = a + 1;
  // a += 1;
  a++; // Postfix
  // a--; // Postfix
  --a; // Prefix
  print(a); // 3

  print(a++ == --b); // true
  print(a == b); //false

  print(!true); //false
  print(!false); //true

  bool x = false;
  print(!x); // true
}
