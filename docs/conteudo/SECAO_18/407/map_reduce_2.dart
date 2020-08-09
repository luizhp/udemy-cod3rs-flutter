// main() {
//   var notas = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];
//   var total = 0.0;

//   for (var nota in notas) {
//     total += nota;
//   }
//   print(total;)
// }

main() {
  var notas = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];
  var total = notas.reduce(somar);
  print(total); //58.0

  var nomes = ['Ana', 'Bia', 'Carlos', 'Daniel', 'Maria', 'Pedro'];
  print(nomes.reduce(juntar)); // Ana, Bia, Carlos, Daniel, Maria, Pedro
}

double somar(double acumulador, double elemento) {
  print('$acumulador $elemento');
  // 7.3 5.4
  // 12.7 7.7
  // 20.4 8.1
  // 28.5 5.5
  // 34.0 4.9
  // 38.9 9.1
  // 48.0 10.0
  return acumulador + elemento;
}

String juntar(String acumulador, String elemento) {
  print('$acumulador => $elemento');
  // Ana => Bia
  // Ana, Bia => Carlos
  // Ana, Bia, Carlos => Daniel
  // Ana, Bia, Carlos, Daniel => Maria
  // Ana, Bia, Carlos, Daniel, Maria => Pedro
  return "$acumulador, $elemento";
}
