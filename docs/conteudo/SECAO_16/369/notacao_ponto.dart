main() {
  // double nota = 6.99.truncateToDouble(); // 6.0
  double nota = 6.99.roundToDouble(); // 7.0

  print(nota);

  print("Texto".toUpperCase()); //TEXTO

  String s1 = "Leonardo leitão"; // Leonardo leitão
  String s2 = s1.substring(0, 8); // Leonardo
  String s3 = s2.toUpperCase(); // LEONARDO
  String s4 = s3.padRight(15, "!"); // LEONARDO!!!!!!!

  var s5 = "leonardo leitão".substring(0, 8).toUpperCase().padRight(15, '!');
  print(s5); // LEONARDO!!!!!!!
}
