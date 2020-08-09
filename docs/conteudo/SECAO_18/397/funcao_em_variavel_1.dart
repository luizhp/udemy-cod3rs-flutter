main() {
  int a = 2;
  // tipo nome = valor;

  // #02
  int Function(int, int) soma1 = somaFn;
  print(soma1(2, 3));

  // #02
  int Function(int, int) soma2 = (x, y) {
    return x + y;
  };
  print(soma2(1, 2));

  // #03
  var soma3 = (int x, int y) {
    return x + y;
  };
  print(soma3(5, 5));

  // #04
  var soma4 = ([int x = 1, int y = 6]) {
    return x + y;
  };
  print(soma4(5));
  print(soma4());
}

int somaFn(int a, int b) {
  return a + b;
}
