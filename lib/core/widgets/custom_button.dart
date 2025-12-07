import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safarni/core/utils/app_colors.dart';
import 'package:safarni/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.backgroundColor = AppColors.primary,
    this.colorText,
  });

  final String title;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final Color? colorText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48.h,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
            side: colorText == null
                ? BorderSide.none
                : BorderSide(color: colorText!),
          ),
        ),
        child: Text(
          title,
          style: AppStyles.textSemiBold16.copyWith(
            color: colorText ?? AppColors.white,
          ),
        ),
      ),
    );
  }
}
