void main(List<String> args) {
  Map<String, String> userDetails = {
    'name': 'Suraj',
    'rollNo': '23',
    'age': '20',
    'country': 'India'
  };

  userDetails['country'] = 'USA';

  for (var element in userDetails.entries) {
    print('${element.key} = > ${element.value}');
  }
}
