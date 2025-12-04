import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:safarni/core/errors/failure.dart';
import 'package:safarni/core/services/shared_preferences_service.dart';
import 'package:safarni/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:safarni/features/auth/domain/entities/user_entity.dart';
import 'package:safarni/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource authRemoteDataSource;
  AuthRepoImpl({required this.authRemoteDataSource});

  @override
  Future<Either<Failure, UserEntity>> confirmEmailVerification({
    required String email,
    required String code,
  }) async {
    try {
      final response = await authRemoteDataSource.confirmEmailVerification(
        email: email,
        code: code,
      );
      await Prefs.setUser(response.toEntity());
      return Right(response.toEntity());
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, void>> forgotPassword({required String email}) async {
    try {
      await authRemoteDataSource.forgotPassword(email: email);
      return const Right(null);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await authRemoteDataSource.login(
        email: email,
        password: password,
      );
      await Prefs.setUser(response.toEntity());
      return Right(response.toEntity());
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, void>> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      await authRemoteDataSource.register(
        name: name,
        email: email,
        password: password,
        confirmPassword: confirmPassword,
      );
      return const Right(null);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, void>> resetPassword({
    required String email,
    required String password,
    required String confirmpassword,
  }) async {
    try {
      await authRemoteDataSource.resetPassword(
        email: email,
        password: password,
        confirmpassword: confirmpassword,
      );
      return const Right(null);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, void>> sendEmailVerification({
    required String email,
  }) async {
    try {
      await authRemoteDataSource.sendEmailVerification(email: email);
      return const Right(null);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
