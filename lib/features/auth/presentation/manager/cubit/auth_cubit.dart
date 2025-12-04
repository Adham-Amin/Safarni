import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safarni/features/auth/domain/entities/user_entity.dart';
import 'package:safarni/features/auth/domain/repo/auth_repo.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.authRepo}) : super(AuthInitial());

  final AuthRepo authRepo;

  Future<void> login({required String email, required String password}) async {
    emit(AuthLoading());
    var result = await authRepo.login(email: email, password: password);
    result.fold(
      (l) => emit(AuthError(message: l.message)),
      (r) => emit(AuthLoaded(user: r)),
    );
  }

  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    emit(AuthLoading());
    var result = await authRepo.register(
      name: name,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
    );
    result.fold(
      (l) => emit(AuthError(message: l.message)),
      (r) => emit(AuthLoaded()),
    );
  }

  Future<void> sendEmailVerification({required String email}) async {
    emit(AuthLoading());
    var result = await authRepo.sendEmailVerification(email: email);
    result.fold(
      (l) => emit(AuthError(message: l.message)),
      (r) => emit(AuthLoaded()),
    );
  }

  Future<void> confirmEmailVerification({
    required String email,
    required String code,
  }) async {
    emit(AuthLoading());
    var result = await authRepo.confirmEmailVerification(
      email: email,
      code: code,
    );
    result.fold(
      (l) => emit(AuthError(message: l.message)),
      (r) => emit(AuthLoaded(user: r)),
    );
  }

  Future<void> forgotPassword({required String email}) async {
    emit(AuthLoading());
    var result = await authRepo.forgotPassword(email: email);
    result.fold(
      (l) => emit(AuthError(message: l.message)),
      (r) => emit(AuthLoaded()),
    );
  }

  Future<void> resetPassword({
    required String email,
    required String password,
    required String confirmpassword,
  }) async {
    emit(AuthLoading());
    var result = await authRepo.resetPassword(
      email: email,
      password: password,
      confirmpassword: confirmpassword,
    );
    result.fold(
      (l) => emit(AuthError(message: l.message)),
      (r) => emit(AuthLoaded()),
    );
  }
}
