import 'package:finwise/features/auth/data/model/user_model.dart';

abstract interface class AuthRepository {
  Future<UserModel> signUp(String email, String password, String fullName);
  Future<UserModel> signUpWithGoogle();
}
