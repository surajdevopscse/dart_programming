import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter the Radius of Circle : ');

  double radiuos = double.tryParse(stdin.readLineSync()!) ?? 0;

  double areaOfCircle = findAreaOfCircle(radiuos);
  print(areaOfCircle);
}

double findAreaOfCircle(double value) {
  return 3.14 * value * value;
}
