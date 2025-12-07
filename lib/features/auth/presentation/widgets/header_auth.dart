import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safarni/core/functions/extentions.dart';
import 'package:safarni/core/utils/app_assets.dart';
import 'package:safarni/core/utils/app_colors.dart';
import 'package:safarni/core/utils/app_styles.dart';

class HeaderAuth extends StatelessWidget {
  const HeaderAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppAssets.imagesLogo, width: 60.w),
        36.hs,
        Text('Welcome Again', style: AppStyles.textSemiBold18),
        8.hs,
        Text(
          'welcome back! please fill your Data',
          style: AppStyles.textRegular14.copyWith(color: AppColors.grey),
        ),
      ],
    );
  }
}
