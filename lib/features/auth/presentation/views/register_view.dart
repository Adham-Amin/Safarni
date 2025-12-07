import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safarni/features/auth/presentation/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: const RegisterViewBody(),
    );
  }
}
