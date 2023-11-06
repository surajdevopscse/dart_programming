// Person class
class Person {
  final int age;
  final String name;
  late String description = heavyComputation();
  Person(this.age, this.name) {
    print("Constructor is called");
  }
  String heavyComputation() {
    print("heavyComputation is called");
    return "Heavy Computation";
  }
}

void main() {
  Person person = Person(10, "John");
  print(person.name);
  print(person.description);
}
