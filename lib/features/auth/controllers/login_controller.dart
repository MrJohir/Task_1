import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../../core/utils/validators/app_validator.dart';
import '../../../core/utils/constants/app_texts.dart';

class LoginController extends GetxController {
  // form key for validation
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // reactive variables
  final RxBool isLoading = false.obs;
  final RxBool isPasswordVisible = false.obs;
  final RxString emailError = ''.obs;
  final RxString passwordError = ''.obs;

  @override
  void onInit() {
    super.onInit();
    // initialize listeners for real-time validation
    _setupValidationListeners();
  }

  @override
  void onClose() {
    // dispose controllers to prevent memory leaks
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  /// setup real-time validation listeners
  void _setupValidationListeners() {
    // email validation listener
    emailController.addListener(() {
      if (emailController.text.isNotEmpty) {
        final error = AppValidator.validateEmail(emailController.text);
        emailError.value = error ?? '';
      }
    });

    // password validation listener
    passwordController.addListener(() {
      if (passwordController.text.isNotEmpty) {
        final error = AppValidator.validatePassword(passwordController.text);
        passwordError.value = error ?? '';
      }
    });
  }

  /// validate email field
  String? validateEmail(String? value) {
    final error = AppValidator.validateEmail(value);
    emailError.value = error ?? '';
    return error;
  }

  /// validate password field
  String? validatePassword(String? value) {
    final error = AppValidator.validatePassword(value);
    passwordError.value = error ?? '';
    return error;
  }

  /// toggle password visibility
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  /// handle login process
  Future<void> login() async {
    try {
      // validate form first
      if (!loginFormKey.currentState!.validate()) {
        return;
      }

      // show loading indicator
      isLoading.value = true;
      EasyLoading.show(status: AppTexts.loginLoading);

      // get form data
      final email = emailController.text.trim();

      // simulate API call delay
      await Future.delayed(const Duration(seconds: 2));

      // hide loading
      EasyLoading.dismiss();
      isLoading.value = false;

      // simulate successful login for demo
      // show success message
      EasyLoading.showSuccess(AppTexts.loginSuccess);

      // clear form
      _clearForm();

      // navigate to home or dashboard (would be implemented in real app)
      debugPrint('Login successful for: $email');
    } catch (error) {
      // hide loading and show error
      EasyLoading.dismiss();
      isLoading.value = false;
      EasyLoading.showError(AppTexts.loginError);
      debugPrint('Login error: $error');
    }
  }

  /// clear form fields
  void _clearForm() {
    emailController.clear();
    passwordController.clear();
    emailError.value = '';
    passwordError.value = '';
  }

  /// check if form is valid
  bool get isFormValid {
    return emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        emailError.value.isEmpty &&
        passwordError.value.isEmpty;
  }

  /// get email field error
  String get getEmailError => emailError.value;

  /// get password field error
  String get getPasswordError => passwordError.value;
}
