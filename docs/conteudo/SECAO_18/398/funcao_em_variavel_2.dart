main() {
  // #01
  var adicao0 = (int a, int b) {
    return a + b;
  };
  print(adicao0(4, 19));

  // #02
  var adicao = (int a, int b) => a + b;
  var subtracao = (int a, int b) => a - b;
  var multiplicacao = (int a, int b) => a * b;
  var divisao = (int a, int b) => a / b;
  print(adicao(4, 19));
  print(subtracao(1, 1));
  print(multiplicacao(9, 13));
  print(divisao(9, 13));

  // #03
  var retornaSet = (int a, int b) => {a + b};
  print(retornaSet(4, 5));
}
