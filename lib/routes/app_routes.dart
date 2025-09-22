import 'package:get/get.dart';
import '../features/auth/views/screens/login_screen.dart';

/// app routes configuration
/// Defines all application routes using GetX
class AppRoutes {
  AppRoutes._();

  // route names
  static const String login = '/login';
  static const String home = '/home';

  // initial route
  static const String initial = login;

  /// get all app routes
  static List<GetPage> get routes => [
    GetPage(
      name: login,
      page: () => LoginScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    ),
  ];
}
