import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter Frist Number");
  String input1 = stdin.readLineSync()!;

  stdout.write("Enter Second Number");
  String input2 = stdin.readLineSync()!;

  int num1 = int.tryParse(input1) ?? 0;
  int num2 = int.tryParse(input2) ?? 0;

  var result = num1 + num2;

  print(result);
}
