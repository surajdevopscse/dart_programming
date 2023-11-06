import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter First Number ');
  double firstNumber = double.tryParse(stdin.readLineSync()!) ?? 0;

  stdout.write('Enter Second Number : ');
  double secondNumber = double.tryParse(stdin.readLineSync()!) ?? 0;

  print('Intital First Number $firstNumber and Second Number $secondNumber');

  double temp = firstNumber;
  firstNumber = secondNumber;
  secondNumber = temp;

  print(
      'After Swaping First Number $firstNumber and Second Number  $secondNumber');
}
