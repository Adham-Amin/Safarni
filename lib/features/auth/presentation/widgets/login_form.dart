import 'package:flutter/material.dart';
import 'package:safarni/core/functions/extentions.dart';
import 'package:safarni/core/utils/app_styles.dart';
import 'package:safarni/core/widgets/custom_button.dart';
import 'package:safarni/core/widgets/custom_text_form_field.dart';
import 'package:safarni/core/widgets/custom_text_form_field_password.dart';
import 'package:safarni/features/auth/presentation/widgets/forget_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email', style: AppStyles.textRegular14),
        4.hs,
        CustomTextFormField(
          hintText: 'eng.adham@example.com',
          prefixIcon: Icon(Icons.email_outlined),
        ),
        16.hs,
        Text('Password', style: AppStyles.textRegular14),
        4.hs,
        CustomTextFormFieldPassword(hintText: '********'),
        8.hs,
        ForgetButton(),
        24.hs,
        CustomButton(title: 'Log In', onTap: () {}),
      ],
    );
  }
}
