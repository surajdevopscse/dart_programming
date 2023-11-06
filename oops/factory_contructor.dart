class Area {
  int? breadth;
  int? length;
  int? area;

  Area._Internal(this.breadth, this.length) : area = breadth! * length!;

  factory Area(int breadth, int lenght) {
    if (breadth < 0 || lenght < 0) {
      throw Exception('Length and breadth must be positive');
    } else {
      return Area._Internal(breadth, lenght);
    }
  }
}

void main() {
  Area area = Area(10, 19);
  print(area.area);
  Area area2 = Area(10, -19);
  print(area2.area);
}
