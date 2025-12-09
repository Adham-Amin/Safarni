// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:safarni/core/functions/extentions.dart';
import 'package:safarni/core/routes/app_routes.dart';
import 'package:safarni/core/services/shared_preferences_service.dart';
import 'package:safarni/core/utils/app_assets.dart';
import 'package:safarni/core/utils/app_styles.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      if (Prefs.getBool('SeenOn')) {
        if (Prefs.getUser() != null) {
          context.go(AppRoutes.main);
        } else {
          context.go(AppRoutes.welcome);
        }
      } else {
        context.go(AppRoutes.onbording);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.imagesSplashBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.imagesLogo, width: 145.w),
          8.hs,
          Text('Safarni', style: AppStyles.textSemiBold34),
        ],
      ),
    );
  }
}
