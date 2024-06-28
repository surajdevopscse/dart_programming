import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter Length of List : ');
  int lengthArray = int.tryParse(stdin.readLineSync()!) ?? 0;
  List<int> array = [];
  int total = 0;
  for (int i = 0; i < lengthArray; i++) {
    stdout.write('Enter value of List ${i + 1} value: ');
    array.add(int.tryParse(stdin.readLineSync()!) ?? 0);

    total += array[i];
  }

  print('Total Expense is ${total}');
}
