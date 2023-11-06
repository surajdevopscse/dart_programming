//O — Open/Closed Principle (OCP)

//The Open/Closed Principle (OCP) states that a class should be open for extension but closed for modification.
//In other words, you should be able to extend a class’s behavior without modifying its source code
import 'dart:math';

class Rectangle {
  double width;
  double height;
  Rectangle({required this.width, required this.height});
  double area() {
    return width * height;
  }
}

//Here is an example of a class that violates the OCP:
//If we want to create a new class for calculating the area of a circle,
//we would have to modify the Rectangle class which is currently violating the OCP.
//A better approach would be to create an interface for calculating the area and have each shape implement the interface:
abstract class Shape {
  double area();
}

class RectangleArea extends Shape {
  double width;
  double height;
  RectangleArea({required this.height, required this.width});
  @override
  double area() {
    return width * height;
  }
}

class Circle extends Shape {
  double radiuos;
  Circle({required this.radiuos});

  @override
  double area() {
    return pi * pow(radiuos, 2);
  }
}
