import 'package:flutter_screenutil/flutter_screenutil.dart';

/// sizer utility class for responsive design
/// Uses flutter_screenutil for consistent sizing across devices
class Sizer {
  Sizer._();

  // spacing constants
  static double get xxs => 2.w;
  static double get xs => 4.w;
  static double get sm => 8.w;
  static double get md => 16.w;
  static double get lg => 24.w;
  static double get xl => 32.w;
  static double get xxl => 40.w;

  // text sizes
  static double get textXs => 10.sp;
  static double get textSm => 12.sp;
  static double get textBase => 14.sp;
  static double get textLg => 16.sp;
  static double get textXl => 18.sp;
  static double get text2xl => 20.sp;
  static double get text3xl => 24.sp;
  static double get text4xl => 32.sp;

  // height constants
  static double get heightXs => 4.h;
  static double get heightSm => 8.h;
  static double get heightMd => 16.h;
  static double get heightLg => 24.h;
  static double get heightXl => 32.h;

  // common UI element sizes
  static double get buttonHeight => 48.h;
  static double get textFieldHeight => 56.h;
  static double get appBarHeight => 56.h;
  static double get iconSize => 24.w;
  static double get iconSizeLarge => 32.w;

  // border radius
  static double get radiusXs => 2.r;
  static double get radiusSm => 4.r;
  static double get radiusMd => 8.r;
  static double get radiusLg => 12.r;
  static double get radiusXl => 16.r;
  static double get radiusRound => 50.r;

  // common padding/margin values
  static double get paddingPage => 16.w;
  static double get paddingCard => 12.w;
  static double get paddingButton => 16.w;
}
