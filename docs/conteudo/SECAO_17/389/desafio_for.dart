main() {
  // # 01
  var valor = '';
  for (int i = 0; i <= 6; i++) {
    print(valor);
    valor += '#';
  }

  // # 02
  for (var valor = ''; valor != '#######'; valor += '#') {
    print(valor);
  }
}
