import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter first number : ");
  double firstNumber = double.tryParse(stdin.readLineSync()!) ?? 0;

  stdout.write("Enter Secon number : ");
  double secondNumber = double.tryParse(stdin.readLineSync()!) ?? 0;

  if (secondNumber == 0) {
    print('Can\'t devide by Zero');
  } else {
    int quodient = firstNumber ~/ secondNumber;

    double remainder = firstNumber % secondNumber;

    print('Quodient  $quodient');
    print('Reaminder  $remainder');
  }
}
