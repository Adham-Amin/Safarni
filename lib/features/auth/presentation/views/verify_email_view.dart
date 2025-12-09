import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safarni/features/auth/presentation/widgets/otp_view_body.dart';

class VerifyEmailView extends StatelessWidget {
  final String email;
  const VerifyEmailView({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: OtpViewBody(email: email),
    );
  }
}
