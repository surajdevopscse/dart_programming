import 'dart:async';

void main() async {
  List<String> inputList = ["banana","kf","LO", "apple", "cherry", "date"];

  print('Unsorted list: $inputList');
  List<String> sortedList = await sortListAsync(inputList);

  print('Sorted list: $sortedList');
}

Future<List<String>> sortListAsync(List<String> inputList) async {
  await Future.delayed(Duration(seconds: 2));
  inputList.sort();

  return inputList;
}
