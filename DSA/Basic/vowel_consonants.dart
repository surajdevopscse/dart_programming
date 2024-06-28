import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter charactor : ');

  String input = stdin.readLineSync()!;

  checkVowelOrConsonants(input);
}

void checkVowelOrConsonants(String alpha) {
  alpha = alpha.toLowerCase();
  if (alpha.length < 1) {
    print('Please enter charactor');
  } else {
    if (alpha == 'a' ||
        alpha == 'e' ||
        alpha == 'i' ||
        alpha == 'o' ||
        alpha == 'u') {
      print('$alpha is Vowel');
    } else if (alpha.codeUnitAt(0) >= 97 ||
        alpha.codeUnitAt(0) <= 122 ||
        alpha != 'y') {
      print('$alpha is Consonants');
    } else {
      print('$alpha is neigther Vowel nor consonants');
    }
  }
}
