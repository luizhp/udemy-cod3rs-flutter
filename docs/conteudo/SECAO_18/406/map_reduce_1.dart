main() {
  // List<Map<String, Object>> alunos
  var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Mariana', 'nota': 8.7},
    {'nome': 'Guilherme', 'nota': 8.1},
    {'nome': 'Ana', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.8}
  ];

  String Function(Map elemento) pegarApenasONome = (aluno) => aluno['nome'];
  int Function(String) qtdeDeLetras = (texto) => texto.length;
  int Function(int) dobro = (numero) => numero * 2;

  var nomes = alunos.map(pegarApenasONome);
  var quantidadeDeLetras = nomes.map(qtdeDeLetras);
  print(nomes); // (Alfredo, Wilson, Mariana, Guilherme, Ana, Ricardo)
  print(quantidadeDeLetras); // (7, 6, 7, 9, 3, 7)

  var quantidadeDeLetras2 = alunos.map(pegarApenasONome).map(qtdeDeLetras);
  print(quantidadeDeLetras2); // (7, 6, 7, 9, 3, 7)

  var resultado = alunos.map(pegarApenasONome).map(qtdeDeLetras).map(dobro);
  print(resultado); // (14, 12, 14, 18, 6, 14)
}
