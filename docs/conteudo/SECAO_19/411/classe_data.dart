// class Produto {}
// class Cliente {}
// class Venda {
//   Cliente cliente;
// }

class Data {
  int dia;
  int mes;
  int ano;
}

main() {
  var dataAniversario = new Data();
  dataAniversario.dia = 3;
  dataAniversario.mes = 10;
  dataAniversario.ano = 2020;

  print(dataAniversario); //Instance of 'Data'
  print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");
  //3/10/2020

  Data dataCompra = Data();
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;
  print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}"); //23/12/2021
}
