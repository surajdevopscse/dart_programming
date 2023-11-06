class Person {
  String? name;
  int? age;
}

class Doctor extends Person {
  List<String>? listOfDegree;
  String? hospitalName;

  void displayInfo() {
    print('Name of Doctor : $name');
    print('Age of Doctor : $age');
    print('List of Degree  : $listOfDegree');
    print('Hospital Name : $hospitalName');
  }
}

class Specialization extends Doctor {
  String? specialization;
  void displayInfo() {
    super.displayInfo();
    print(' Specialization : $specialization');
  }
}

void main(List<String> args) {
  Specialization specialization = Specialization();
  specialization.name = 'Suraj Yadav';
  specialization.age = 24;
  specialization.listOfDegree = ['MD', 'MBBS', 'B.Tech'];
  specialization.hospitalName = 'SKY Hospital';
  specialization.specialization = 'D';
  specialization.displayInfo();
}
