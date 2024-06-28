import 'dart:math';

class DataProviding {
  String? get stringOrNull => Random().nextBool() ? 'Hello' : null;
  method() {
    String? value = stringOrNull;
    if (value is String) {
      print('The length of Value id ${value.length}');
    } else {
      print('Value is Not String ');
    }
  }
}

void main(List<String> args) {
  DataProviding().method();
}
