import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// screens
import './screens/welcome_screen.dart';
import './screens/attempts/attempts_screen.dart';
import './screens/auth/login_screen.dart';
import './screens/auth/register_screen.dart';
import './screens/auth/forgot_password_screen.dart';

final GoRouter routes = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const WelcomeScreen();
        }),
    GoRoute(
        path: '/attempts',
        builder: (BuildContext context, GoRouterState state) {
          return const AttemptsScreen();
        }),
    GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        }),
    GoRoute(
        path: '/register',
        builder: (BuildContext context, GoRouterState state) {
          return const RegisterScreen();
        }),
    GoRoute(
        path: '/forgot-password',
        builder: (BuildContext context, GoRouterState state) {
          return const ForgotPasswordScreen();
        }),
  ],
);
