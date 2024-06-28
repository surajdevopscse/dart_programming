import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter First Number : ');
  int firstNumber = int.tryParse(stdin.readLineSync()!) ?? 0;
  stdout.write('Enter Second Number : ');
  int secondNumber = int.tryParse(stdin.readLineSync()!) ?? 0;
  Enum calc = Cal.ADD;
  stdout.write(
      'Enter Below Digit for Cal According to need: \n 1 - Add, 2 - Sub, 3 - Mul, 4 - Div ');
  int numberForCal = int.tryParse(stdin.readLineSync()!) ?? 0;
  switch (numberForCal) {
    case 1:
      calc = Cal.ADD;
      break;
    case 2:
      calc = Cal.SUB;
      break;
    case 3:
      calc = Cal.MUL;
      break;
    case 4:
      calc = Cal.DIV;
      break;
    default:
      calc = Cal.ADD;
      break;
  }

  performCal(firstNumber, secondNumber, calc);
}

void performCal(int firstNumber, int secondNumber, Enum calc) {
  switch (calc) {
    case Cal.ADD:
      print(firstNumber + secondNumber);
      break;
    case Cal.SUB:
      print(firstNumber - secondNumber);
      break;
    case Cal.MUL:
      print(firstNumber * secondNumber);
      break;
    case Cal.DIV:
      print(firstNumber / secondNumber);
      break;
  }
}

enum Cal { ADD, SUB, MUL, DIV }
