import 'package:finwise/features/auth/data/datasources/auth_remote_datasources.dart';
import 'package:finwise/features/auth/data/model/user_model.dart';
import 'package:finwise/features/auth/data/repository/auth_repository.dart';

final class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasources remote;

  AuthRepositoryImpl({required this.remote});
  @override
  Future<UserModel> signUp(String email, String fullName, String password) {
    return remote.signUpWithEmail(email, password, fullName);
  }

  @override
  Future<UserModel> signUpWithGoogle() {
    return remote.signUpWithGoogle();
  }
}
