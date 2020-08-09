class Data {
  int dia;
  int mes;
  int ano;

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
  var dataAniversario = new Data();
  dataAniversario.dia = 3;
  dataAniversario.mes = 10;
  dataAniversario.ano = 2020;
  dataAniversario.printFormatada(); //3/10/2020

  Data dataCompra = Data();
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;
  dataCompra.printFormatada();

  String d1 = dataAniversario.obterFormatada(); //23/12/2021

  print("A data do aniversário é $d1");
  //A data do aniversário é 3/10/2020

  print("A data da compra é ${dataCompra.obterFormatada()}");
  //A data da compra é 23/12/2021

  print(dataCompra); // Instance of 'Data'
  print(dataCompra.toString()); // Instance of 'Data' ... 23/12/2021
}
