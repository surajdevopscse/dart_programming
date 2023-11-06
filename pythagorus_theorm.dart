import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("Enter the length of side 'a': ");
  double sideA = double.tryParse(stdin.readLineSync()!) ?? 0;

  print("Enter the length of side 'b': ");
  double sideB = double.tryParse(stdin.readLineSync()!) ?? 0;

  double hypotenuse = calculateHypotenuse(sideA, sideB);

  print(hypotenuse);
}

double calculateHypotenuse(double a, double b) {
  return sqrt(a * a + b * b);
}
