/*
  - List (aceita repetição de itens)
  - Map  (chave/valor)
  - Set  (não aceita repetição de itens)
*/

main() {
  // List

  // List aprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael'];
  // List<String> aprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael'];
  // var aprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael'];
  // print(aprovados is List); //output: true

  var aprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael'];

  print(aprovados is List); // true
  print(aprovados); // ['Ana', 'Carlos', 'Daniel', 'Rafael']
  print(aprovados.elementAt(2)); // Daniel
  print(aprovados[0]); // Ana
  print(aprovados.length); // 4

  print("***********************");

  // Map
  // Map<String, String> telefones = {'João': '+55 (11) 9999-99999'};
  // ou var telefones = {'João': '+55 (11) 9999-99999'};
  // print(telefones);

  var telefones = {
    'João': '+55 (11) 9999-99999',
    'Maria': '+55 (21) 8888-8888',
    'Pedro': '+55 (51) 4444-4444'
  };

  print(telefones is Map); // true
  print(telefones);
  // {João: +55 (11) 9999-99999, Maria: +55 (21) 8888-8888, Pedro: +55 (51) 4444-4444}
  print(telefones['João']); // +55 (11) 9999-99999
  print(telefones.length); // 3
  print(telefones.values);
  // (+55 (11) 9999-99999, +55 (21) 8888-8888, +55 (51) 4444-4444)
  print(telefones.keys); // (João, Maria, Pedro)
  print(telefones.entries);
  //(MapEntry(João: +55 (11) 9999-99999), MapEntry(Maria: +55 (21) 8888-8888), MapEntry(Pedro: +55 (51) 4444-4444))

  print("***********************");

  // Set

  // Set<String> times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo'};
  // Set times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo'};
  //     Set times gera Set<dynamic>

  //var times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo', 123};
  //   var times com string e numero gera Set<object>
  //var times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo'};
  //  var times gera Set<String>

  var times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo'};
  print(times);
  // {Vasco, Flamengo, Fortaleza, São Paulo}
  print(times is Set); // true
  times.add('Palmeiras');
  print(times.length); // 5
  print(times.contains('Vasco')); // true
  print(times.first); // Vasco
  print(times.last); // Palmeiras
  print(times);
  // {Vasco, Flamengo, Fortaleza, São Paulo, Palmeiras}
}
