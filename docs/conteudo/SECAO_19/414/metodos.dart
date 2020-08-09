class Data {
  int dia;
  int mes;
  int ano;

  // Data(int diaInicial, int mesInicial, int anoInicial) {
  //   this.dia = diaInicial;
  //   this.mes = mesInicial;
  //   this.ano = anoInicial;
  // }
  Data([this.dia = 1, this.mes = 1, this.ano = 1970]) {}

  Data.com({this.dia = 1, this.mes = 1, this.ano = 1970}) {}
  Data.ultimoDiaDoAno(this.ano) {
    this.dia = 31;
    this.mes = 12;
  }

  void printFormatada() {
    print(this.obterFormatada());
  }

  String obterFormatada() {
    return "${dia}/${mes}/${ano}";
  }

  String toString() {
    return this.obterFormatada();
  }
}

main() {
  var dataAniversario = new Data(3, 10, 2020);
  dataAniversario.printFormatada(); //3/10/2020

  Data dataCompra = Data(23, 12, 2021);
  dataCompra.printFormatada(); //23/12/2021

  String d1 = dataAniversario.obterFormatada(); //23/12/2021

  print("A data do aniversário é $d1");
  //A data do aniversário é 3/10/2020

  print("A data da compra é ${dataCompra.obterFormatada()}");
  //A data da compra é 23/12/2021

  print(dataCompra); // Instance of 'Data'
  print(dataCompra.toString()); // Instance of 'Data' ... 23/12/2021

  print(new Data()); // 1/1/1970
  print(new Data(31)); // 31/1/1970
  print(new Data(31, 12)); // 31/12/1970
  print(new Data(31, 12, 2021)); // 31/12/2021

  //Named Constructors
  print(Data.com(ano: 2020)); //1/1/2020
  var dataFinal = Data.com(dia: 12, mes: 7, ano: 2024);
  print(dataFinal); // 12/7/2024

  print(Data.ultimoDiaDoAno(2023)); // 31/12/2023
}
