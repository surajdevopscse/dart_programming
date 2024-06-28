import 'dart:async';

void main(List<String> args) async {
  // await for (String name in getUserName()) {
  //   print(name);
  // }

  StreamController streamController = StreamController();

  streamController.stream.listen((event) {
    print(event);
  });

  // streamController.add('Suraj');
  // await Future.delayed(Duration(seconds: 1));
  // streamController.add('Yadav');
}

Stream<String> getUserName() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Suraj';
  await Future.delayed(Duration(seconds: 1));
  yield 'Yadav';
  await Future.delayed(Duration(seconds: 1));
  yield 'Himanshu';
  await Future.delayed(Duration(seconds: 1));
  yield 'Dev';
  await Future.delayed(Duration(seconds: 1));
  yield 'Save';
}
