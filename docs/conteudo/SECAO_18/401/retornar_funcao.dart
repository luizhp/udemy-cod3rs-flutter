int Function(int) somaParcial(int a) {
  int c = 0;

  return (int b) {
    return a + b + c;
  };
}

main() {
  print(somaParcial(2)); //Closure: (int) => int
  print(somaParcial(2)(10)); //12

  var somaCom10 = somaParcial(10);
  print(somaCom10(3)); //13
  print(somaCom10(7)); //17
  print(somaCom10(19)); //29
}
