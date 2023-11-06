import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter total ammount : ');
  double amount = double.tryParse(stdin.readLineSync()!) ?? 0;

  stdout.write('Number of people ');
  double noOfPeople = double.tryParse(stdin.readLineSync()!) ?? 0;

  double payAmountToPerPerson = amount / noOfPeople;

  print("Total ammount has been Spent : $amount");
  print("Total number of people : $noOfPeople");
  print("Amount need to pay per person : $payAmountToPerPerson");
}
