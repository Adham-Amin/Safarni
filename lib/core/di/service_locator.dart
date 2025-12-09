import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:safarni/core/services/api_service.dart';
import 'package:safarni/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:safarni/features/auth/data/repos/auth_repo_impl.dart';
import 'package:safarni/features/auth/domain/repo/auth_repo.dart';

final getIt = GetIt.instance;

void serverLocator() {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));

  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(apiService: getIt<ApiService>()),
  );

  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(authRemoteDataSource: getIt<AuthRemoteDataSource>()),
  );
}
