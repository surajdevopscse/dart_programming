void main() {
  Storage dataBaseStorage = DataBaseStorage();
  Storage fileStorage = FileStorage();
  DataProcess fileDataProcess = DataProcess(fileStorage);
  DataProcess dataBaseStorageProcess = DataProcess(dataBaseStorage);

  fileDataProcess.processData('Si');
  dataBaseStorageProcess.processData('Si');
}

///Single Responsbility
class ProductService {
  void saveProduct(Product product) {
    print('Saved Prodcut');
  }

  void updateProduct(Product product) {
    print('Updated Prodcut');
  }

  void deleteProduct(String id) {
    print('Deleted product');
  }

  Future<Product> getProdct(String prodcutID) async {
    return Product();
  }
}

class TaxCal {
  double calTax() {
    return 0.0;
  }
}

class Product {}

///Open / Closed Principle

class User {
  final String? type;
  User({this.type});
  void manage() {}
}

class AdminUser extends User {
  manage() {
    print('Admin User');
  }
}

class CustomerUser extends User {
  manage() {
    print('CustomerUser User');
  }
}

class EmployeeUser extends User {
  manage() {
    print('EmployeeUser User');
  }
}

class WaiterUser extends User {
  manage() {
    print('WaiterUser User');
  }
}

class UserManager {
  void manage(User user) {
    user.manage();
  }
}

///Liskov Substitution Priciple

abstract class Bird {
  void eat();
}

abstract class FlyableBird {
  void fly();
}

class Crow extends Bird implements FlyableBird {
  @override
  fly() {}
  @override
  eat() {}
}

class Pegion extends Bird implements FlyableBird {
  @override
  fly() {}
  @override
  eat() {}
}

class Peguin extends Bird {
  @override
  eat() {
    print('Print Peguin');
  }
}

/// Interface Segregation Principle

abstract class Workable {
  void work();
}

abstract class Eatable {
  void eat();
}

abstract class Sleepable {
  void sleep();
}

class OfficeWorker implements Workable, Eatable {
  @override
  void work() {
    print('OfficeWorker is working');
  }

  @override
  void eat() {
    print('OfficeWorker is eating');
  }
}

class FieldWorker implements Workable, Sleepable {
  @override
  void work() {
    print('FieldWorker is working');
  }

  @override
  void sleep() {
    print('FieldWorker is sleeping');
  }
}

///Dependency Inversion Principle

class Storage {
  void saveData(String s) {}
}

class DataBaseStorage extends Storage {
  @override
  saveData(String s) {}
}

class FileStorage extends Storage {
  @override
  saveData(String s) {}
}

class DataProcess {
  final Storage storage;
  DataProcess(this.storage);
  void processData(String data) {
    storage.saveData(data);
  }
}
