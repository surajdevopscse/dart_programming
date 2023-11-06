//L — Liskov Substitution Principle (LSP)

//The Liskov Substitution Principle (LSP) states that objects of a superclass should be able to be replaced with objects of a
//subclass without affecting the correctness of the program. In other words, a subclass should be able to replace its superclass
//without breaking the code
import 'dart:math';

abstract class Shape {
  num area();
}

class Rectangle implements Shape {
  double? width;
  double? height;

  num area() {
    return width! * height!;
  }
}

class Square implements Shape {
  double side;
  Square({required this.side});
  num area() {
    return pow(side, 2);
  }
}
