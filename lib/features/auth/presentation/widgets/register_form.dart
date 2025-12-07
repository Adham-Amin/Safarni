import 'package:flutter/material.dart';
import 'package:safarni/core/functions/extentions.dart';
import 'package:safarni/core/utils/app_styles.dart';
import 'package:safarni/core/widgets/custom_button.dart';
import 'package:safarni/core/widgets/custom_text_form_field.dart';
import 'package:safarni/core/widgets/custom_text_form_field_password.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Name', style: AppStyles.textRegular14),
        4.hs,
        CustomTextFormField(
          hintText: 'Ex: Adham Amin',
          prefixIcon: Icon(Icons.person),
        ),
        16.hs,
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
        24.hs,
        CustomButton(title: 'Sign Up', onTap: () {}),
      ],
    );
  }
}
