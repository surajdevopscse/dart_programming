import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter principle ammount: ");
  double principle = double.tryParse(stdin.readLineSync()!) ?? 0;

  stdout.write('Enter rate of intrest in percentage : ');
  double rateOfIntrest = double.tryParse(stdin.readLineSync()!) ?? 0;

  stdout.write("Enter time in year : ");
  double timeInYears = double.tryParse(stdin.readLineSync()!) ?? 0;

  double simpleInterest = (principle * rateOfIntrest * timeInYears) / 100;

  print('Simple Interest: $simpleInterest');

  print('Total amount to pay: ${simpleInterest + principle}');
}
