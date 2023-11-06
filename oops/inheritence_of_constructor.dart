class Laptop {
  String? name;
  String? model;
  Laptop({this.name, this.model}) {
    print('Laptop ');
  }
}

class Macbook extends Laptop {
  String? price;
  Macbook({String? name, this.price, String? model})
      : super(model: model, name: name) {
    print('Macbook ');
  }
}

void main(List<String> args) {
  Macbook macbook =
      Macbook(name: 'MacBook Pro', model: 'New Model', price: '12321232');

  print('Laptop Type ${macbook.name}');
  print('Model Name : ${macbook.model}');
  print('Laptop Price : ${macbook.price}');
}
