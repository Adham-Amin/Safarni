import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:safarni/core/functions/extentions.dart';
import 'package:safarni/core/routes/app_routes.dart';
import 'package:safarni/core/widgets/custom_rich_text.dart';
import 'package:safarni/features/auth/presentation/widgets/header_auth.dart';
import 'package:safarni/features/auth/presentation/widgets/register_form.dart';
import 'package:safarni/features/auth/presentation/widgets/social_buttons_row.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          HeaderAuth(),
          24.hs,
          RegisterForm(),
          24.hs,
          SocialButtonsAndOr(),
          24.hs,
          CustomRichText(
            text: 'Already have an account?',
            linkText: ' Sign In',
            onTap: () {
              context.pushReplacement(AppRoutes.login);
            },
          ),
          24.hs,
        ],
      ),
    );
  }
}
