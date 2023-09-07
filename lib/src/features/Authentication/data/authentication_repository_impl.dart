import 'package:admin/src/features/Authentication/domain/authentication_repository.dart';
import 'authentication_data_provider.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationDataProvider dataProvider;

  AuthenticationRepositoryImpl(this.dataProvider);

  @override
  Future<User?> loginUser(String email, String password) async {
    try {
      bool isAuthenticated = await dataProvider.authenticateUser(email, password);
      
      if (isAuthenticated) {
        return User('user_id', email); // User(id: 'user_id', email: email);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}

