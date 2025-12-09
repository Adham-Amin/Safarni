import 'package:go_router/go_router.dart';
import 'package:safarni/core/routes/app_routes.dart';
import 'package:safarni/features/auth/presentation/views/forgot_password_view.dart';
import 'package:safarni/features/auth/presentation/views/login_view.dart';
import 'package:safarni/features/auth/presentation/views/otp_view.dart';
import 'package:safarni/features/auth/presentation/views/register_view.dart';
import 'package:safarni/features/auth/presentation/views/reset_password_view.dart';
import 'package:safarni/features/auth/presentation/views/verify_email_view.dart';
import 'package:safarni/features/intro/onbording/presentation/views/onbording_view.dart';
import 'package:safarni/features/intro/splash/presentation/views/splash_view.dart';
import 'package:safarni/features/intro/welcome/presentation/views/welcome_view.dart';
import 'package:safarni/features/main/main_view.dart';

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
      GoRoute(
        path: AppRoutes.register,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: AppRoutes.forgetPassword,
        builder: (context, state) => const ForgotPasswordView(),
      ),
      GoRoute(
        path: AppRoutes.otp,
        builder: (context, state) => OtpView(email: state.extra as String),
      ),
      GoRoute(
        path: AppRoutes.resetPassword,
        builder: (context, state) =>
            ResetPasswordView(email: state.extra as String),
      ),
      GoRoute(
        path: AppRoutes.verifyEmail,
        builder: (context, state) =>
            VerifyEmailView(email: state.extra as String),
      ),
      GoRoute(
        path: AppRoutes.main,
        builder: (context, state) => MainView(key: MainView.mainViewKey),
      ),
    ],
  );
}
