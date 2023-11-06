//S - Single Responsibilty Principle
// The Single Responsibility Principle (SRP) states that a class should have only one reason to change. In other words, a class should have only one responsibility.
//A class that has multiple responsibilities is hard to maintain and modify.
class UserData {
  String id;
  String name;
  UserData({required this.id, required this.name});
  void saveUser() {}
  void saveEmail() {}
}

//This class violates the SRP because it has two responsibilities:
//saving the user to the database and sending an email to the user. A better approach would be to split the class into two separate classes

class User {
  String id;
  String name;
  User({required this.id, required this.name});
}

class UserRepository {
  void saveUser() {}
}

class EmailRepository {
  void saveEmail() {}
}
