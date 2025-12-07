import 'package:go_router/go_router.dart';
import 'package:safarni/core/routes/app_routes.dart';
import 'package:safarni/features/intro/onbording/presentation/views/onbording_view.dart';
import 'package:safarni/features/intro/splash/presentation/views/splash_view.dart';
import 'package:safarni/features/intro/welcome/presentation/views/welcome_view.dart';

abstract class AppGoRouter {
  static final router = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: <GoRoute>[
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRoutes.onbording,
        builder: (context, state) => const OnbordingView(),
      ),
      GoRoute(
        path: AppRoutes.welcome,
        builder: (context, state) => const WelcomeView(),
      ),
    ],
  );
}
