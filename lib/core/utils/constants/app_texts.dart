/// app text constants
/// Contains all text strings used throughout the app
class AppTexts {
  AppTexts._();

  // app info
  static const String appName = 'Flutter Login App';
  static const String appVersion = '1.0.0';

  // auth screen texts
  static const String loginTitle = 'Welcome Back';
  static const String loginSubtitle = 'Sign in to your account';
  static const String emailLabel = 'Email';
  static const String emailHint = 'Enter your email';
  static const String passwordLabel = 'Password';
  static const String passwordHint = 'Enter your password';
  static const String loginButton = 'Login';
  static const String forgotPassword = 'Forgot Password?';

  // validation messages
  static const String emailRequired = 'Email is required';
  static const String emailInvalid = 'Please enter a valid email';
  static const String passwordRequired = 'Password is required';
  static const String passwordTooShort =
      'Password must be at least 6 characters';
  static const String passwordNoUppercase =
      'Password must contain at least one uppercase letter';
  static const String passwordNoNumber =
      'Password must contain at least one number';

  // success messages
  static const String loginSuccess = 'Login successful! Welcome back.';

  // error messages
  static const String loginError = 'Login failed. Please try again.';
  static const String generalError = 'Something went wrong. Please try again.';

  // loading messages
  static const String loginLoading = 'Signing in...';
}
