// mixin ElectricVarient {
//   void electricVarient() {
//     print('This is Electrical Vaient Car');
//   }
// }

// mixin PetrolVarient {
//   void petrolVarient() {
//     print('This is Petrol Vaient Car');
//   }
// }

// class Car with ElectricVarient, PetrolVarient {}

// void main(List<String> args) {
//   Car car = Car();
//   car.electricVarient();
//   car.petrolVarient();
// }
abstract class Animal {
  // properties
  String name;
  double speed;

  // constructor
  Animal(this.name, this.speed);

  // abstract method
  void run();
}

// mixin CanRun is only used by class that extends Animal
mixin CanRun on Animal {
  // implementation of abstract method
  @override
  void run() => print('$name is Running at speed $speed');
}

class Dog extends Animal with CanRun {
  // constructor
  Dog(String name, double speed) : super(name, speed);
}

void main() {
  var dog = Dog('My Dog', 25);
  dog.run();
}

// Not Possible
// class Bird with Animal { } 