enum Gender { MALE, FEMALE, OTHERS }

class Student {
  String? firstName;
  String? lastName;
  Gender? gender;

  printInfo() {
    print('Student Name $firstName  $lastName');
    print('Gender ${getGender(gender!)}');
  }

  String getGender(Gender gender) {
    switch (gender) {
      case Gender.MALE:
        return 'Male';
      case Gender.FEMALE:
        return 'Female';
      case Gender.OTHERS:
        return 'Others';
    }
  }
}

void main(List<String> args) {
  Student s1 = Student();
  s1.firstName = 'Suraj';
  s1.lastName = 'Yadav';
  s1.gender = Gender.MALE;
  Student s2 = Student();
  s2.firstName = 'Varsha';
  s2.lastName = 'Yadav';
  s2.gender = Gender.FEMALE;
  s1.printInfo();
  s2.printInfo();
}
