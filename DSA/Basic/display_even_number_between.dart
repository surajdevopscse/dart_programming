import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter First Number : ');
  int input1 = int.tryParse(stdin.readLineSync()!) ?? 0;
  stdout.write('Enter Second Number : ');
  int input2 = int.tryParse(stdin.readLineSync()!) ?? 0;

  print(getEventNumber(input1, input2));
}

List<int> getEventNumber(int a, int b) {
  List<int> evenList = [];
  for (int i = a; i <= b; i++) {
    if (i % 2 == 0) {
      evenList.add(i);
    }
  }
  return evenList;
}
