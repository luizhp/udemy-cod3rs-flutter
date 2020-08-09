main() {
  // #01
  saudarPessoa("Joao", 33);
  saudarPessoa("Maria", 47);

  // #02
  saudarPessoa2(nome: "Joao", idade: 33);
  saudarPessoa2(idade: 47, nome: "Maria");

  // #03
  imprimirData();
  imprimirData(ano: 2020);
  imprimirData(ano: 2021, mes: 12);
  imprimirData(ano: 2021, mes: 12, dia: 3);

  // #04
  imprimirData2(3, ano: 2021, mes: 12);
  imprimirData2(3, mes: 12);
  imprimirData2(3);
}

saudarPessoa(String nome, int idade) {
  print('Olá $nome nem parece que vc tem $idade anos.');
}

saudarPessoa2({String nome, int idade}) {
  print('Olá $nome nem parece que vc tem $idade anos.');
}

imprimirData({int dia = 1, int ano = 1970, int mes = 1}) {
  print('$dia/$mes/$ano');
}

imprimirData2(int dia, {int ano = 1970, int mes = 1}) {
  print('$dia/$mes/$ano');
}
