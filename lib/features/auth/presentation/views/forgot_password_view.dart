import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safarni/features/auth/presentation/widgets/forget_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: ForgetPasswordViewBody(),
    );
  }
}
