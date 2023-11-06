import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter number : ");
  String input = stdin.readLineSync()!;

  int number = int.tryParse(input) ?? 0;

  int square = number * number;
  print(square);
}
