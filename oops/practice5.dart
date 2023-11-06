class Camera {
  String? _id;
  String? _brand;
  String? _color;
  String? _price;

  get getId => _id;
  get getBrand => _brand;
  get getColor => _color;
  get getPrice => _price;

  set setId(String id) => this._id = id;

  set setBrand(String brand) => this._brand = brand;

  set setColor(String color) => this._color = color;

  set setPrice(String price) => this._price = price;

  @override
  String toString() {
    return 'Camera info $getBrand $getId $getColor $getPrice';
  }
}

void main(List<String> args) {
  Camera camera = Camera();
  camera.setId = '1';
  camera.setColor = 'Red';
  camera.setBrand = 'Neon';
  camera.setPrice = '2000';
  print(camera);
}
