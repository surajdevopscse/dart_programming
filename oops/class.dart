class Camera {
  String name;
  String color;
  double megapixel;
  Camera({required this.color, required this.megapixel, required this.name});

  printInfo() {
    print('Camera Info : ');
    print('Name $name,  Color $color,  Megapixel $megapixel');
  }
}

void main(List<String> args) {
  Camera camera1 = Camera(color: 'Red', megapixel: 23.4, name: 'Neon');
  camera1.printInfo();

    Camera camera2 = Camera(color: 'Yellow', megapixel: 2444.4, name: 'Lenovo');
  camera2.printInfo();
}
