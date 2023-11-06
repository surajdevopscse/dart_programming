import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter Number for Table : ');
  int number = int.tryParse(stdin.readLineSync()!) ?? 0;
  tablePrint(number);
}

void tablePrint(int n) {
  int i = 1;
  while (i <= 10) {
    print('$i  *  $n  =   ${n * i}');
    i++;
  }
}
