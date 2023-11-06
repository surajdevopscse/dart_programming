class Animal {
  String? id;
  String? name;
  String? color;
}

class Cat extends Animal {
  String? sound;
  printCatDetails() {
    print('Cat info name $name , id $id, color $color, sound $sound');
  }
}

void main(List<String> args) {
  Cat cat = Cat();
  cat.name = 'Dog';
  cat.id = '23';
  cat.sound = 'Bhow bhow';
  cat.color = 'Red';

  cat.printCatDetails();
}
