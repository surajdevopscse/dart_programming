import 'dart:io';

void main(List<String> args) {
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write('*');
    }
    stdout.writeln();
  }
}
