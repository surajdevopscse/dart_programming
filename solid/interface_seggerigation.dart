//I — Interface Segregation Principle (ISP)

//The Interface Segregation Principle (ISP) states that a class should not be forced to implement interfaces it does not use.
// In other words, a class should only depend on the interfaces it needs.

//Here is an example of a class that violates the ISP:
import 'dart:math';

abstract class Shape {
  double area();
  double perimeter();
}

class Rectangle implements Shape {
  double width;
  double height;

  Rectangle({required this.height, required this.width});
  double area() {
    return width * height;
  }

  double perimeter() {
    return 2 * (width + height);
  }
}

class Circle implements Shape {
  double radius;
  Circle({required this.radius});
  double area() {
    return pi * pow(radius, 2);
  }

  double perimeter() {
    return 2 * pi * radius;
  }
}

//This class violates the ISP because a Circle does not have a perimeter.
//A better approach would be to create separate interfaces for area and perimeter
abstract class Area {
  double area();
}

abstract class Perimeter {
  double perimeter();
}

class RectangleInter implements Area, Perimeter {
  double width;
  double height;
  RectangleInter({required this.width, required this.height});
  @override
  double area() {
    return width * height;
  }

  @override
  double perimeter() {
    return 2 * (width + height);
  }
}

class CircleInter implements Area {
  double radius;
  CircleInter({required this.radius});
  @override
  double area() {
    return pi * pow(radius, 2);
  }
}
