import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter nummber ');
  int number = int.tryParse(stdin.readLineSync()!) ?? 0;

  int totalNumber = getSum(number);
  print('Sum of total Number $totalNumber');
}

int getSum(int number) {
  int total = 0;
  for (int i = 0; i <= number; i++) {
    total = total + i;
  }
  return total;
}
