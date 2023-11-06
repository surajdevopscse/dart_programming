class Shape {
  double? diameter1;
  double? diameter2;
}

class Rectangle extends Shape {
  double area() {
    return diameter1! * diameter2!;
  }
}

class Triangle extends Shape {
  double area() {
    return 0.5 * diameter1! * diameter2!;
  }
}

void main(List<String> args) {
  Rectangle rectangle = Rectangle();
  rectangle.diameter1 = 10.0;
  rectangle.diameter2 = 20.0;
  print('Area of Rectangle ${rectangle.area()}');

  Triangle triangle = Triangle();
  triangle.diameter1 = 10.0;
  triangle.diameter2 = 20.0;

  print('Area of triangle ${triangle.area()}');
}
