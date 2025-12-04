import 'package:safarni/core/services/api_service.dart';
import 'package:safarni/features/auth/data/models/reponses/auth_response/auth_response.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponse> login({required String email, required String password});
  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  });
  Future<void> sendEmailVerification({required String email});
  Future<AuthResponse> confirmEmailVerification({
    required String email,
    required String code,
  });
  Future<void> forgotPassword({required String email});
  Future<void> resetPassword({
    required String email,
    required String password,
    required String confirmpassword,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiService apiService;
  AuthRemoteDataSourceImpl({required this.apiService});

  @override
  Future<AuthResponse> confirmEmailVerification({
    required String email,
    required String code,
  }) async {
    final response = await apiService.post(
      endPoint: '/auth/verify-otp',
      data: {'email': email, 'otp': code},
    );
    return AuthResponse.fromJson(response);
  }

  @override
  Future<void> forgotPassword({required String email}) async {
    await apiService.post(
      endPoint: '/auth/forgot-password',
      data: {'email': email},
    );
  }

  @override
  Future<AuthResponse> login({
    required String email,
    required String password,
  }) async {
    final response = await apiService.post(
      endPoint: '/auth/login',
      data: {'email': email, 'password': password},
    );
    return AuthResponse.fromJson(response);
  }

  @override
  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    await apiService.post(
      endPoint: '/auth/register',
      data: {
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': confirmPassword,
      },
    );
  }

  @override
  Future<void> resetPassword({
    required String email,
    required String password,
    required String confirmpassword,
  }) async {
    await apiService.post(
      endPoint: '/auth/reset-password',
      data: {
        "email": email,
        "otp": "1234",
        "password": password,
        "password_confirmation": confirmpassword,
      },
    );
  }

  @override
  Future<void> sendEmailVerification({required String email}) async {
    await apiService.post(endPoint: '/auth/resend-otp', data: {'email': email});
  }
}
