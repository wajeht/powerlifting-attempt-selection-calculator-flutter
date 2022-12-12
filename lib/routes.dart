import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// screens
import 'pages/welcome_page.dart';
import 'pages/attempts/attempts_page.dart';
import 'pages/auth/login_page.dart';
import 'pages/auth/register_page.dart';
import 'pages/auth/forgot_password_page.dart';
import 'pages/home_page.dart';

final GoRouter routes = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const WelcomePage();
        }),
    GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        }),
    GoRoute(
        path: '/attempts',
        builder: (BuildContext context, GoRouterState state) {
          return const AttemptsPage();
        }),
    GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        }),
    GoRoute(
        path: '/register',
        builder: (BuildContext context, GoRouterState state) {
          return const RegisterPage();
        }),
    GoRoute(
        path: '/forgot-password',
        builder: (BuildContext context, GoRouterState state) {
          return const ForgotPasswordPage();
        }),
  ],
);
