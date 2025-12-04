import 'package:dartz/dartz.dart';
import 'package:safarni/core/errors/failure.dart';
import 'package:safarni/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  });
  Future<Either<Failure, void>> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  });
  Future<Either<Failure, void>> sendEmailVerification({required String email});
  Future<Either<Failure, UserEntity>> confirmEmailVerification({
    required String email,
    required String code,
  });
  Future<Either<Failure, void>> forgotPassword({required String email});
  Future<Either<Failure, void>> resetPassword({
    required String email,
    required String password,
    required String confirmpassword,
  });
}
