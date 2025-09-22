import '../constants/app_texts.dart';

/// app validator class for form validation
/// Contains validation methods for various input fields
class AppValidator {
  AppValidator._();

  /// validate email address using regex pattern
  /// Returns error message if invalid, null if valid
  static String? validateEmail(String? value) {
    // check if email is empty
    if (value == null || value.trim().isEmpty) {
      return AppTexts.emailRequired;
    }

    // email regex pattern for validation
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    // check if email matches regex pattern
    if (!emailRegex.hasMatch(value.trim())) {
      return AppTexts.emailInvalid;
    }

    return null;
  }

  /// validate password with multiple criteria
  /// Returns error message if invalid, null if valid
  static String? validatePassword(String? value) {
    // check if password is empty
    if (value == null || value.isEmpty) {
      return AppTexts.passwordRequired;
    }

    // check minimum length (6 characters)
    if (value.length < 6) {
      return AppTexts.passwordTooShort;
    }

    // check for at least one uppercase letter
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return AppTexts.passwordNoUppercase;
    }

    // check for at least one number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return AppTexts.passwordNoNumber;
    }

    return null;
  }

  /// validate required fields (general purpose)
  /// Returns error message if empty, null if valid
  static String? validateRequired(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  /// validate phone number (basic validation)
  /// Returns error message if invalid, null if valid
  static String? validatePhone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone number is required';
    }

    // basic phone number regex (10-15 digits)
    final phoneRegex = RegExp(r'^\+?[1-9]\d{9,14}$');

    if (!phoneRegex.hasMatch(value.replaceAll(RegExp(r'[\s\-\(\)]'), ''))) {
      return 'Please enter a valid phone number';
    }

    return null;
  }

  /// validate name (only letters and spaces)
  /// Returns error message if invalid, null if valid
  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Name is required';
    }

    // name regex pattern (letters and spaces only)
    final nameRegex = RegExp(r'^[a-zA-Z\s]+$');

    if (!nameRegex.hasMatch(value.trim())) {
      return 'Name can only contain letters and spaces';
    }

    return null;
  }
}
