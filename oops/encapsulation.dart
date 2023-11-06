class EncapsulationClass {
  String? _name;
  String? _designation;
  int? _age;
  int? _passoutYear;

  set setName(String name) {
    this._name = name;
  }

  get getName => _name;

  set setDesignation(String designation) {
    this._designation = designation;
  }

  get getDesignation => _designation;
  set setAge(int age) {
    this._age = age;
  }

  get getAge => _age;
  set setPassoutYear(int year) {
    this._passoutYear = year;
  }

  get getDesignatiuon => _passoutYear;
}

void main(List<String> args) {
  EncapsulationClass encapsulationClass = EncapsulationClass();
  encapsulationClass.setName = 'Suraj Yadav';
  print(encapsulationClass.getName);
}
