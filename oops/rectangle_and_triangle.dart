abstract class Shape {
  int? dim1, dim2;

  Shape({this.dim1, this.dim2});
  void area();
}
abstract class Shape2{
  void area();
}

class Rectangle extends Shape {
  Rectangle(int dim1, int dim2) : super(dim1: dim1, dim2: dim2);
  @override
  void area() {
    print('Area of Rectangle ${dim1! * dim2!}');
  }
}

class Triangle extends Shape {
  Triangle(int dim1, int dim2) : super(dim1: dim1, dim2: dim2);
  @override
  void area() {
    print('Area of Triangle  ${0.5 * dim1! * dim2!}');
  }
}

void main(List<String> args) {
  Rectangle rectangle = Rectangle(10, 20);
  Triangle triangle = Triangle(10, 20);

  rectangle.area();
  triangle.area();
}
