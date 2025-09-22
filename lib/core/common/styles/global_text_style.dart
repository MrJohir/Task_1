import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/constants/app_colors.dart';

/// global text styles for consistent typography
/// Uses flutter_screenutil for responsive text sizing
class AppTextStyles {
  AppTextStyles._();

  // heading styles
  static TextStyle get h1 => TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimaryColor,
    height: 1.2,
  );

  static TextStyle get h2 => TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimaryColor,
    height: 1.3,
  );

  static TextStyle get h3 => TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimaryColor,
    height: 1.4,
  );

  static TextStyle get h4 => TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimaryColor,
    height: 1.4,
  );

  // body text styles
  static TextStyle get bodyLarge => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimaryColor,
    height: 1.5,
  );

  static TextStyle get bodyMedium => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimaryColor,
    height: 1.5,
  );

  static TextStyle get bodySmall => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondaryColor,
    height: 1.5,
  );

  // button text styles
  static TextStyle get buttonLarge => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
    height: 1.2,
  );

  static TextStyle get buttonMedium => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
    height: 1.2,
  );

  // label styles
  static TextStyle get labelLarge => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimaryColor,
    height: 1.3,
  );

  static TextStyle get labelMedium => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondaryColor,
    height: 1.3,
  );

  // input field styles
  static TextStyle get inputText => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimaryColor,
    height: 1.2,
  );

  static TextStyle get inputHint => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.textHintColor,
    height: 1.2,
  );

  static TextStyle get inputLabel => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimaryColor,
    height: 1.2,
  );

  // error text style
  static TextStyle get errorText => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.errorColor,
    height: 1.3,
  );

  // caption and subtitle styles
  static TextStyle get caption => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondaryColor,
    height: 1.3,
  );

  static TextStyle get subtitle => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondaryColor,
    height: 1.4,
  );
}
