import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:safarni/core/functions/extentions.dart';
import 'package:safarni/core/routes/app_routes.dart';
import 'package:safarni/core/utils/app_colors.dart';
import 'package:safarni/core/utils/app_styles.dart';
import 'package:safarni/core/widgets/custom_button.dart';
import 'package:safarni/core/widgets/custom_rich_text.dart';
import 'package:safarni/features/auth/presentation/widgets/pin_section.dart';

class VerifyEmailViewBody extends StatefulWidget {
  const VerifyEmailViewBody({super.key, required this.email});

  final String email;

  @override
  State<VerifyEmailViewBody> createState() => _VerifyEmailViewBodyState();
}

class _VerifyEmailViewBodyState extends State<VerifyEmailViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Icon(Icons.email_outlined, color: Color(0xffAFAFAF), size: 32.w),
            24.hs,
            Text('Verify Code', style: AppStyles.textSemiBold18),
            16.hs,
            Text(
              'Please enter the code we just sent to email\n(${widget.email})',
              textAlign: TextAlign.center,
              style: AppStyles.textRegular14.copyWith(color: AppColors.grey),
            ),
            32.hs,
            PinSection(onCompleted: (code) {}),
            16.hs,
            CustomRichText(
              text: 'OTP not receive ? ',
              linkText: 'send again',
              onTap: () {},
            ),
            16.hs,
            CustomButton(
              title: 'Verify',
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  context.push(AppRoutes.resetPassword, extra: widget.email);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
