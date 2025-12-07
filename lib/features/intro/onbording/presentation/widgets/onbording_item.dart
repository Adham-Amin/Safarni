import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safarni/core/functions/extentions.dart';
import 'package:safarni/core/utils/app_colors.dart';
import 'package:safarni/core/utils/app_styles.dart';
import 'package:safarni/features/intro/onbording/data/model/onbording_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordingItem extends StatelessWidget {
  const OnbordingItem({
    super.key,
    required this.item,
    required this.pageController,
  });

  final OnbordingModel item;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24.r),
          child: Image.asset(
            item.image,
            fit: BoxFit.cover,
            width: 280.w,
            height: 450.h,
          ),
        ),
        16.hs,
        SmoothPageIndicator(
          controller: pageController,
          count: OnbordingModel.onbordingList.length,
          effect: ExpandingDotsEffect(
            dotWidth: 15.w,
            dotHeight: 8.h,
            expansionFactor: 2.5,
            dotColor: AppColors.grey,
            activeDotColor: AppColors.primary,
          ),
        ),
        32.hs,
        Text(
          item.title,
          textAlign: TextAlign.center,
          style: AppStyles.textSemiBold24,
        ),
      ],
    );
  }
}
