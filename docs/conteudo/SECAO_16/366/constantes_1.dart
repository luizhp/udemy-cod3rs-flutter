import 'dart:io';

main() {
  // Área da circunferência = PI * raio * raio

  // constante é definida em tempo de compilação, com valores definidos
  // final é definida em tempo de execução
  const PI = 3.1415;
  const x = 3;
  const y = x * PI;

  stdout.write("Informe o raio: ");
  var entradaDoUsuario = stdin.readLineSync();
  final raio = double.parse(entradaDoUsuario);

  // print("O valor do raio é: " + raio.toString());

  final area = PI * raio * raio;
  print("O valor da área é: " + area.toString());
}
