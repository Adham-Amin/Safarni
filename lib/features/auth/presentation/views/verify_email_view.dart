import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safarni/core/di/service_locator.dart';
import 'package:safarni/features/auth/domain/repo/auth_repo.dart';
import 'package:safarni/features/auth/presentation/manager/cubit/auth_cubit.dart';
import 'package:safarni/features/auth/presentation/widgets/verify_email_view_bod.dart';

class VerifyEmailView extends StatelessWidget {
  final String email;
  const VerifyEmailView({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(authRepo: getIt<AuthRepo>()),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ),
        body: VerifyEmailViewBody(email: email),
      ),
    );
  }
}
