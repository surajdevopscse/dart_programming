import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter a Number : ');
  int number = int.tryParse(stdin.readLineSync()!) ?? 0;
  print(checkNumber(number));
}

String checkNumber(int n) {
  if (n == 0) {
    return 'Number is Zero';
  } else if (n < 0) {
    return 'Number is Negative';
  } else {
    return 'Number is Positive';
  }
}
