//D — Dependency Inversion Principle (DIP)
//The Dependency Inversion Principle (DIP) states that high-level modules should not depend on low-level modules.
// Both should depend on abstractions. In other words, you should depend on abstractions, not on concrete implementations

//Here is an example of a class that violates the DIP:
import '../oops/practice6.dart';

class UserRepository {
  void save(User user) {
    // save user to database
  }
}

class UserService {
  UserRepository userRepository;

  UserService(this.userRepository);

  void saveUser(User user) {
    userRepository.save(user);
  }
}

//This class violates the DIP because UserService depends on the concrete implementation of UserRepository.
//A better approach would be to depend on an abstraction:
abstract class UserRepo {
  void save(User user);
}

class FirebaseUserRepo implements UserRepo {
  @override
  void save(User user) {}
}

class UserServiceDep {
  UserRepo userRepo;
  UserServiceDep({required this.userRepo});
  void saveUser(User user) {
    userRepo.save(user);
  }
}
