void main(List<String> args) {
  Map<String, String> userDetails = {
    'name': 'Suraj',
    'rollNo': '23',
    'age': '20',
    'country': 'India',
    'save': 'IndiaHai',
  };

  List greaterThanFour =
      userDetails.entries.where((element) => element.value.length > 4).toList();

  for (MapEntry element in greaterThanFour) {
    print('${element.key} => ${element.value}');
  }
}
