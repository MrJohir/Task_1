import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/sizer.dart';
import '../styles/global_text_style.dart';

/// custom button widget with consistent styling
/// Reusable button component for the entire app
class CustomButton extends StatelessWidget {
  /// Creates a custom button with optional customization
  /// [onPressed] - Callback function when button is tapped
  /// [text] - Button text to display
  /// [isLoading] - Shows loading indicator when true
  /// [backgroundColor] - Custom background color
  /// [textColor] - Custom text color
  /// [height] - Custom button height
  /// [width] - Custom button width
  /// [borderRadius] - Custom border radius
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.backgroundColor,
    this.textColor,
    this.height,
    this.width,
    this.borderRadius,
  });

  final VoidCallback? onPressed;
  final String text;
  final bool isLoading;
  final Color? backgroundColor;
  final Color? textColor;
  final double? height;
  final double? width;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? Sizer.buttonHeight,
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primaryColor,
          foregroundColor: textColor ?? AppColors.whiteColor,
          elevation: 2,
          shadowColor: AppColors.shadowColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? Sizer.radiusMd),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: Sizer.paddingButton,
            vertical: Sizer.sm,
          ),
        ),
        child: isLoading
            ? SizedBox(
                height: 20.h,
                width: 20.w,
                child: const CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    AppColors.whiteColor,
                  ),
                ),
              )
            : Text(
                text,
                style: AppTextStyles.buttonLarge.copyWith(
                  color: textColor ?? AppColors.whiteColor,
                ),
              ),
      ),
    );
  }
}
