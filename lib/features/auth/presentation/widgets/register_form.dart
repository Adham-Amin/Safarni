import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safarni/core/functions/extentions.dart';
import 'package:safarni/core/functions/validators.dart';
import 'package:safarni/core/routes/app_routes.dart';
import 'package:safarni/core/utils/app_styles.dart';
import 'package:safarni/core/widgets/custom_button.dart';
import 'package:safarni/core/widgets/custom_snack_bar.dart';
import 'package:safarni/core/widgets/custom_text_form_field.dart';
import 'package:safarni/core/widgets/custom_text_form_field_password.dart';
import 'package:safarni/features/auth/presentation/manager/cubit/auth_cubit.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late TextEditingController _emailController, _passController, _nameController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passController = TextEditingController();
    _nameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name', style: AppStyles.textRegular14),
          4.hs,
          CustomTextFormField(
            validator: Validators.name,
            hintText: 'Ex: Adham Amin',
            prefixIcon: Icon(Icons.person),
            controller: _nameController,
          ),
          16.hs,
          Text('Email', style: AppStyles.textRegular14),
          4.hs,
          CustomTextFormField(
            validator: Validators.email,
            controller: _emailController,
            hintText: 'eng.adham@example.com',
            prefixIcon: Icon(Icons.email_outlined),
          ),
          16.hs,
          Text('Password', style: AppStyles.textRegular14),
          4.hs,
          CustomTextFormFieldPassword(
            hintText: '********',
            controller: _passController,
            validator: Validators.password,
          ),
          24.hs,
          BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              if (state is AuthError) {
                customSnackBar(
                  context: context,
                  message: state.message,
                  type: AnimatedSnackBarType.error,
                );
              }
              if (state is AuthLoaded) {
                customSnackBar(
                  context: context,
                  message: 'Check your email',
                  type: AnimatedSnackBarType.success,
                );
                context.push(
                  AppRoutes.verifyEmail,
                  extra: _emailController.text,
                );
              }
            },
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AuthLoading,
                title: 'Sign Up',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<AuthCubit>().register(
                      name: _nameController.text,
                      email: _emailController.text,
                      password: _passController.text,
                      confirmPassword: _passController.text,
                    );
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
