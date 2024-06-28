import 'dart:io';

void main(List<String> args) {
  stdout.write('Write any sentence here : ');
  String sentense = stdin.readLineSync() ?? '';

  String sentenseWithoutSpace = removeSpace(sentense);
  String sentenseWithoutSpaceRegx = removeSpacesWithRegx(sentense);

  print('Sentence With Space $sentense');
  print('Sentence Without Space $sentenseWithoutSpace');
  print('Sentence Without Space using Regx $sentenseWithoutSpaceRegx');
}

String removeSpace(String sentence) {
  String result = '';
  for (int i = 0; i < sentence.length; i++) {
    if (sentence[i] != ' ') {
      result += sentence[i];
    }
  }
  return result;
}

String removeSpacesWithRegx(String input) {
  return input.replaceAll(RegExp(r'\s+'), '');
}
