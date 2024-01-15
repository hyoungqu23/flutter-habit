import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:habit/src/features/home/views/home_screen.dart';
import 'package:habit/src/features/introduction/views/introduction_screen.dart';
import 'package:habit/src/features/login/views/login_screen.dart';
import 'package:habit/src/features/register/views/register_screen.dart';

@immutable
class Routes {
  static const home = {
    "name": 'Home',
    "path": '/',
  };

  static const introduction = {
    "name": 'introduction',
    "path": '/introduction',
  };

  static const login = {
    "name": 'Login',
    "path": '/login',
  };

  static const register = {
    "name": 'register',
    "path": '/register',
  };
}

final habitRoutes = <RouteBase>[
  GoRoute(
    name: Routes.home['name'],
    path: Routes.home['path']!,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    name: Routes.introduction['name'],
    path: Routes.introduction['path']!,
    builder: (context, state) => const IntroductionScreen(),
  ),
  GoRoute(
    name: Routes.login['name'],
    path: Routes.login['path']!,
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    name: Routes.register['name'],
    path: Routes.register['path']!,
    builder: (context, state) => const RegisterScreen(),
  ),
];

final routesProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.introduction['path'],
    routes: habitRoutes,
  );
});
