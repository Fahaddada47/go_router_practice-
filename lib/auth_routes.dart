import 'package:go_practice/page_two.dart';
import 'package:go_router/go_router.dart';
import 'package:go_practice/splash_screen.dart';
import 'package:go_practice/login_screen.dart';
import 'package:go_practice/page_one.dart';

class AuthRoutes {
  static List<GoRoute> routes = [
    GoRoute(
      path: '/splash',
      name: SplashScreen.name,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/loginScreen',
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/pageOne',
      name: PageOne.name,
      builder: (context, state) => const PageOne(),
    ),
    GoRoute(
      path: '/pageTwo',
      name: PageTwo.name,
      builder: (context, state) => const PageTwo(),
    ),
    GoRoute(
      path: '/pageTwo',
      name: PageTwo.name,
      builder: (context, state) => const PageTwo(),
    ),
  ];
}
