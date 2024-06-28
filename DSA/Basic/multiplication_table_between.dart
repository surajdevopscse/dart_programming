import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter Number Starting Number for Table: ');
  int startNumberTable = int.tryParse(stdin.readLineSync()!) ?? 0;
  stdout.write('Enter Number End Number for Table: ');
  int endNumberTable = int.tryParse(stdin.readLineSync()!) ?? 0;
  printTable(startNumberTable, endNumberTable);
}

void printTable(int startNumberTable, int endNumberTable) {
  for (int i = startNumberTable; i <= endNumberTable; i++) {
    print("Multiplication table for $i:");
    tablePrint(i);
  }
}

void tablePrint(int n) {
  int i = 1;
  while (i <= 10) {
    print('$i  *  $n  =   ${n * i}');
    i++;
  }
}
