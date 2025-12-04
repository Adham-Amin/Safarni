import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:safarni/core/services/api_service.dart';

final getIt = GetIt.instance;

void serverLocator() {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));
}
