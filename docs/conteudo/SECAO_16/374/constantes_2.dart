main() {
  // #1
  final lista = ['Ana', 'Lia', 'Gui'];
  lista.add('Rebeca'); // .add é possível como final
  // lista = ['Banana', 'Maçã']; //como final não é possível

  print(lista);

  // #2
  final lista2 = const ['Ana', 'Lia', 'Gui'];
  // lista2.add('novo'); // const com .add não é possível
  // lista2 = ['Banana', 'Maçã']; //como final não é possível
  print(lista2);

  // #3
  var lista3 = const ['Ana', 'Lia', 'Gui'];
  // lista3.add('novo'); // const com .add não é possível
  lista3 = ['Banana', 'Maçã']; //como var é possível
  print(lista3);

  // #4
  const lista4 = ['Ana', 'Lia', 'Gui'];
  //const lista4 = const ['Ana', 'Lia', 'Gui'];
  // lista4 = ['Banana', 'Maçã']; //como const não é possível
  print(lista4);
}
