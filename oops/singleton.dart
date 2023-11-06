class Singleton {
  static final Singleton _singleton = Singleton._internal();

  factory Singleton() {
    return _singleton;
  }
  Singleton._internal();
}

void main(List<String> args) {
  Singleton obj1 = Singleton();
  Singleton obj2 = Singleton();
  print(obj1.hashCode);
  print(obj2.hashCode);
}
