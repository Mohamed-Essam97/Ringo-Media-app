import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ringo_media_flutter/ui/view/Main_Home/main_home_screen.dart';
import 'package:ringo_media_flutter/ui/view/login/login_screen.dart';
import 'package:ringo_media_flutter/ui/view/splash/splash_screen.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

abstract class AppRouter {
// GoRouter configuration
  static GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: '/',

    routes: [
      GoRoute(
        name: 'splash',
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: 'mainHome',
        path: '/mainHome',
        builder: (context, state) => const MainHomeScreen(),
      ),
    ],
    // redirect: _guard,
  );

  // static String? _guard(BuildContext context, GoRouterState state) {
  //   final bool loggingIn = state.matchedLocation == '/login';
  //   if (context.read<AuthenticationBloc>().state is! LoggedIn) {
  //     return '/login';
  //   }
  //   // If the user is logged in but still on the login page, send them to
  //   // the profile page
  //   if (loggingIn) {
  //     return '/';
  //   }
  //   return null;
  // }
}
