import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  stdout.write('Enter First Number : ');
  int firstNumber = int.tryParse(stdin.readLineSync()!) ?? 0;
  stdout.write('Enter Second Number : ');
  int secondNumber = int.tryParse(stdin.readLineSync()!) ?? 0;

  num powResult = pow(firstNumber, secondNumber);
  print(powResult);
}
