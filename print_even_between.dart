import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter First Number : ');
  int firstNumber = int.tryParse(stdin.readLineSync()!) ?? 0;
  stdout.write('Enter Second Number : ');
  int secondNumber = int.tryParse(stdin.readLineSync()!) ?? 0;
  printEvenNumberBetween(firstNumber, secondNumber);
}

void printEvenNumberBetween(firstNumber, secondNumber) {
  for (int i = firstNumber; i <= secondNumber; i++) {
    if (i % 2 == 0) {
      print("This is Even $i");
    }
  }
}
