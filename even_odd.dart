import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter a Number : ');
  int input = int.tryParse(stdin.readLineSync()!) ?? 0;
  print(checkEvenOrOdd(input));
}

String checkEvenOrOdd(int num) {
  if (num % 2 == 0) {
    return '$num is Even';
  } else {
    return '$num is Odd';
  }
}
