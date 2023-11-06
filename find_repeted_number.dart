import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter length of Array -> ');
  String input1 = stdin.readLineSync()!;
  int arrayLength = int.tryParse(input1) ?? 0;
  List<int> arr = [];
  for (int i = 0; i < arrayLength; i++) {
    stdout.write('Enter the value of array index $i -> ');
    int element = int.tryParse(stdin.readLineSync()!) ?? 0;
    arr.add(element);
  }
  getRepeatedNumber(arrayLength, arr);
}

void getRepeatedNumber(int arrayLength, List<int> arr) {
  List<int> repeatedNumbers = [];
  Set<int> seenNumbers = Set();
  for (int number in arr) {
    if (seenNumbers.contains(number) && !repeatedNumbers.contains(number)) {
      repeatedNumbers.add(number);
    } else {
      seenNumbers.add(number);
    }
  }
  print(repeatedNumbers);
}
