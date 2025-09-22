import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/common/widgets/custom_text_field.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/utils/constants/app_texts.dart';
import '../../../../core/utils/constants/sizer.dart';
import '../../../auth/controllers/login_controller.dart';

class LoginFormWidget extends StatelessWidget {
  LoginFormWidget({super.key});
  final LoginController controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child: Column(
        children: [
          // email text field
          CustomTextField(
            controller: controller.emailController,
            labelText: AppTexts.emailLabel,
            hintText: AppTexts.emailHint,
            keyboardType: TextInputType.emailAddress,
            validator: controller.validateEmail,
            prefixIcon: Icon(Icons.email_outlined, size: Sizer.iconSize),
          ),
          // password text field
          Padding(
            padding: EdgeInsets.only(bottom: Sizer.xl, top: Sizer.lg),
            child: CustomTextField(
              controller: controller.passwordController,
              labelText: AppTexts.passwordLabel,
              hintText: AppTexts.passwordHint,
              isPassword: true,
              validator: controller.validatePassword,
              prefixIcon: Icon(Icons.lock_outlined, size: Sizer.iconSize),
            ),
          ),
          // login button
          Obx(
            () => CustomButton(
              onPressed: controller.login,
              text: AppTexts.loginButton,
              isLoading: controller.isLoading.value,
            ),
          ),
        ],
      ),
    );
  }
}
