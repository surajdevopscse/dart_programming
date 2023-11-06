class Point {
  final int x;

  const Point(this.x);

  Point copy() {
    return Point(x);
  }
}

void main() {
  List<Point> pointList1 = [Point(2), Point(4), Point(6), Point(8), Point(10)];

  List<Point> pointList2 = [Point(12), Point(14), Point(16), Point(8)];

  pointList1 = [...pointList2];
  print('Before');
  for (var element in pointList1) {
    print(element.x);
  }
  pointList1 = pointList2.map((e) => e.copy()).toList();
  print('after');
  for (var element in pointList1) {
    print(element.x);
  }
}
