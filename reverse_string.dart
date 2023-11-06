import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter String : ');
  String sentence = stdin.readLineSync() ?? '';

  reverseString(sentence);
}

void reverseString(String name) {
  String reverseString = '';
  for (int i = name.length - 1; i >= 0; i--) {
    reverseString += name[i];
  }
  print(reverseString);
}
