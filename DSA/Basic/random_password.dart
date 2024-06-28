import 'dart:math';

void main(List<String> args) {
  generatePassword();
}

void generatePassword() {
  int randomPassword = Random().nextInt(999999999);
  print(randomPassword);
}
