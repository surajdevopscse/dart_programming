void main(List<String> args) async {
  await for (DateTime date in getTimeIn2Minutes()) {
    print(date);
  }
}

Stream<DateTime> getTimeIn2Minutes() async* {
  await Future.delayed(Duration(seconds: 2));
  yield DateTime.now();
}
