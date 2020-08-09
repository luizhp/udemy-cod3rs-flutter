main() {
  // #01
  print('Teste');
  executarPor(10, print, 'Muito legal');

  print('###################');

  // #02
  var meuPrint = (String valor) {
    print(valor);
    return valor;
  };
  int tamanho = executarPor2(10, meuPrint, 'Muito legal');
  print('O tamanho da string é $tamanho');
}

void executarPor(int qtde, Function(String) fn, String valor) {
  for (int i = 0; i < qtde; i++) {
    fn(valor);
  }
}

int executarPor2(int qtde, String Function(String) fn, String valor) {
  String textoCompleto = '';
  for (int i = 0; i < qtde; i++) {
    textoCompleto += fn(valor);
  }
  return textoCompleto.length;
}
