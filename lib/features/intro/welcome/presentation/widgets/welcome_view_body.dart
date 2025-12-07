import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:safarni/core/functions/extentions.dart';
import 'package:safarni/core/routes/app_routes.dart';
import 'package:safarni/core/utils/app_assets.dart';
import 'package:safarni/core/utils/app_colors.dart';
import 'package:safarni/core/utils/app_styles.dart';
import 'package:safarni/core/widgets/custom_button.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.imagesLogo, width: 145),
          8.hs,
          Text('Safarni', style: AppStyles.textSemiBold34),
          48.hs,
          Text('Welcome', style: AppStyles.textSemiBold32),
          16.hs,
          Text(
            'Safarni is your all-in-one travel guide. Discover destinations, compare trip prices, book flights, hotels, car rentals, and local tours — all through one interactive experience.',
            style: AppStyles.textRegular14.copyWith(color: AppColors.grey),
            textAlign: TextAlign.center,
          ),
          24.hs,
          CustomButton(
            title: 'Sign Up',
            onTap: () {
              context.push(AppRoutes.register);
            },
          ),
          24.hs,
          CustomButton(
            onTap: () {
              context.push(AppRoutes.login);
            },
            title: 'Log In',
            backgroundColor: AppColors.white,
            colorText: AppColors.primary,
          ),
        ],
      ),
    );
  }
}
