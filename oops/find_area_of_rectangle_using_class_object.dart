class Rectangle {
  double? length;
  double? breath;

  double area() {
    return length! * breath!;
  }
}

void main(List<String> args) {
  Rectangle area = Rectangle();

  area.length = 20.0;
  area.breath = 5.0;
  double areaOfRectangle = area.area();
  print("Area of rectangle is $areaOfRectangle.");
}
