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

  //#01
  var total = alunos.map((aluno) => aluno['nota']);
  print(total); //(9.9, 9.3, 8.7, 8.1, 7.6, 6.8)

  //#02
  var total2 = alunos
      .map((aluno) => aluno['nota'])
      .map((nota) => (nota as double).roundToDouble())
      .reduce((t, a) => t + a);
  print('O valor da média é: ${total2 / alunos.length}.'); //8.5.

  //#03
  var notasFinais = alunos
      .map((aluno) => aluno['nota'])
      .map((nota) => (nota as double).roundToDouble())
      .where((nota) => nota >= 8);

  var total3 = notasFinais.reduce((t, a) => t + a);
  print('O valor da média é: ${total3 / notasFinais.length}.'); //8.8.
}
