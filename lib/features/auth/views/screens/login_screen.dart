import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/common/styles/global_text_style.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_texts.dart';
import '../../../../core/utils/constants/sizer.dart';
import '../../controllers/login_controller.dart';
import '../widgets/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(Sizer.paddingPage),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // main title
              Text(AppTexts.loginTitle, style: AppTextStyles.h2),

              // subtitle
              Padding(
                padding: EdgeInsets.only(top: Sizer.xs, bottom: Sizer.heightLg),
                child: Text(
                  AppTexts.loginSubtitle,
                  style: AppTextStyles.subtitle,
                ),
              ),

              // login form with input fields and button
              LoginFormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
