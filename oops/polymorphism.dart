class Employee {
  void salary() {
    print('Employee Salary \$2000');
  }
}

class Manager extends Employee {
  @override
  void salary() {
    print('Manager Salary is \$3000');
  }
}

class Developer extends Employee {
  @override
  void salary() {
    print('Developer Salary is \$30000');
  }
}

void main(List<String> args) {
  Manager m = Manager();
  Developer d = Developer();

  m.salary();
  d.salary();
}
