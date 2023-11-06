class Laptop {
  int? id;
  String? name;
  int? ram;
  Laptop(this.id, this.name, this.ram);

  @override
  String toString() => 'Laptop Details id is $id , name $name , ram $ram';
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Laptop && runtimeType == other.runtimeType && id == other.id;
}

void main(List<String> args) {
  Laptop laptop = Laptop(23, "Mac", 34);
  Laptop laptop1 = Laptop(23, 'Macbook Pro', 4);
  Laptop laptop2 = Laptop(23, 'Lanovo', 6);

  print(laptop);
  print(laptop1);
  print(laptop2);

  print(laptop1 == laptop2);
}
