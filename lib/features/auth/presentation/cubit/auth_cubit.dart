import 'package:finwise/features/auth/data/repository/auth_repository.dart';
import 'package:finwise/features/auth/presentation/cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepository;

  AuthCubit(this.authRepository) : super(AuthInitial());

  Future<void> signUp(String email, String password, String fullName) async {
    emit(AuthInitial());
    try {
      final user = await authRepository.signUp(email, password, fullName);
      emit(AuthSuccess(userModel: user));
    } catch (e) {
      emit(AuthFailure(error: e.toString()));
    }
  }

  Future<void> signUpWithGoogle(
    String email,
    String password,
    String fullName,
  ) async {
    emit(AuthInitial());
    try {
      final user = await authRepository.signUpWithGoogle();
      emit(AuthSuccess(userModel: user));
    } catch (e) {
      emit(AuthFailure(error: e.toString()));
    }
  }
}
