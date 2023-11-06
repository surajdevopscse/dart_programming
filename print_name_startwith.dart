void main(List<String> args) {
  List<String> fridendsName = [
    'Ashu',
    'Himanshu',
    'Dev',
    'Alka',
    'Varsha',
    'Amit',
    'Alok'
  ];
  List friendWithA =
      fridendsName.where((element) => element.startsWith('A')).toList();

  for (var friend in friendWithA) {
    print(friend);
  }
}
