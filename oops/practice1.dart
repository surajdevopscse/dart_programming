abstract class Bottle {
  factory Bottle() {
    return CokeBottle();
  }
  void open();
}

class CokeBottle implements Bottle {
  @override
  void open() {
    print('Coke bottle is opened');
  }
}

void main(List<String> args) {
  Bottle bottle = Bottle();
  bottle.open();
}
