import 'dart:io';

void main(List<String> args) {
  ///Write a Program to read txt file

  // File file = File('text.txt');
  // String contents = file.readAsStringSync();

  // print(contents);
  // print('File path ${file.path}');
  // print('File Absolute Path ${file.absolute.path}');
  // print('File last modifiedl ${file.lastModifiedSync()}');
  // print('File Length ${file.lengthSync()} bytes');

  // ///Write a program to read csv file
  // ///
  // File file = File('text.csv');
  // // read file
  // String contents = file.readAsStringSync();
  // // split file using new line
  // List<String> lines = contents.split('\n');
  // // print file
  // print('---------------------');
  // for (var line in lines) {
  //   print(line);
  // }

  //Write a Program to write in txt file

  File file = File('text.txt');
  file.writeAsStringSync('Hello My name is Suraj and try to write in text file',
      mode: FileMode.append);

  print(file.readAsStringSync());
}
