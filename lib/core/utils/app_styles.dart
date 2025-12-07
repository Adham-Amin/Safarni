import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safarni/core/utils/app_colors.dart';

abstract class AppStyles {
  static const String fontFamily = 'Poppins';

  static TextStyle textRegular12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textRegular14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textRegular18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textMedium14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textMedium16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textMedium18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textMedium22 = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textMedium24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textMedium28 = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textMedium30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textSemiBold14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textSemiBold16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textSemiBold18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textSemiBold24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textSemiBold32 = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textSemiBold34 = TextStyle(
    fontSize: 34.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  static TextStyle textBold24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );
}
