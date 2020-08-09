main() {
  Map<String, double> notas = {
    'João Pedro': 9.1,
    'Maria Augusta': 7.2,
    'Ana Silva': 6.4,
    'Roberto Andrade': 8.8,
    'Pedro Firmino': 9.9,
  };

  // #01
  for (String nome in notas.keys) {
    print('Nome do aluno é $nome');
  }

  // #02
  for (var nota in notas.values) {
    print('A nota é $nota');
  }

  // #03
  for (String nome in notas.keys) {
    print('Nome do aluno é $nome e a nota é ${notas[nome]}.');
  }

  // #04
  for (var registro in notas.entries) {
    print('O ${registro.key} tem nota ${registro.value}');
  }

  print('Fim');
}
