abstract class AuthenticationRepository {
  Future<User?> loginUser(String email, String password);
}

class User {
  final String id;
  final String email;

  User(this.id, this.email);
  // User(this.id, this.email, {required String email, required String id});
}
