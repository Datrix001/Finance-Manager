import 'package:finwise/features/auth/data/model/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRemoteDatasources {
  Future<UserModel> signUpWithEmail(
    String email,
    String password,
    String fullName,
  );
  Future<UserModel> signUpWithGoogle();
}

class AuthRemoteDatasourcesImpl implements AuthRemoteDatasources {
  final SupabaseClient client;

  AuthRemoteDatasourcesImpl({required this.client});

  @override
  Future<UserModel> signUpWithEmail(
    String email,
    String password,
    String fullName,
  ) async {
    final res = await client.auth.signUp(
      password: password,
      email: email,
      data: {'fullName': fullName},
    );
    return UserModel.fromSupaBase(res.user!);
  }

  @override
  Future<UserModel> signUpWithGoogle() async {
    await client.auth.signInWithOAuth(OAuthProvider.google);
    final user = client.auth.currentUser!;
    return UserModel.fromSupaBase(user);
  }
}
