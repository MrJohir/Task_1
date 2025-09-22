import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'core/utils/constants/app_colors.dart';
import 'core/utils/constants/app_texts.dart';
import 'routes/app_routes.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: AppTexts.appName,
          debugShowCheckedModeBanner: false,

          // theme configuration
          theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: AppColors.primaryColor,
            scaffoldBackgroundColor: AppColors.backgroundColor,
            fontFamily: 'Inter', // default font family
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),

          // routing configuration
          initialRoute: AppRoutes.initial,
          getPages: AppRoutes.routes,

          // easy loading configuration
          builder: EasyLoading.init(),
        );
      },
    );
  }
}
