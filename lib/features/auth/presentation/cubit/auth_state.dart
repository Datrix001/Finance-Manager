import 'package:finwise/features/auth/data/model/user_model.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthSuccess extends AuthState {
  final UserModel userModel;

  AuthSuccess({required this.userModel});
}

class AuthFailure extends AuthState {
  final String error;

  AuthFailure({required this.error});
}
