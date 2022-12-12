import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// screens
import 'pages/welcome_page.dart';
import 'pages/attempts/attempts_page.dart';
import 'pages/auth/login_page.dart';
import 'pages/auth/register_page.dart';
import 'pages/auth/forgot_password_page.dart';
import 'pages/database/database_page.dart';
import 'pages/home_page.dart';
import 'pages/error_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final GoRouter routes = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/attempts',
  routes: <RouteBase>[
    /// Application shell
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return HomePage(child: child);
      },
      routes: <RouteBase>[
        /// The first screen to display in the bottom navigation bar.
        GoRoute(
          path: '/attempts',
          builder: (BuildContext context, GoRouterState state) {
            return const AttemptsPage();
          },
          // routes: <RouteBase>[
          //   // The details screen to display stacked on the inner Navigator.
          //   // This will cover screen A but not the application shell.
          //   GoRoute(
          //     path: 'details',
          //     builder: (BuildContext context, GoRouterState state) {
          //       return const DetailsScreen(label: 'A');
          //     },
          //   ),
          // ],
        ),

        /// Displayed when the second item in the the bottom navigation bar is
        /// selected.
        GoRoute(
          path: '/database',
          builder: (BuildContext context, GoRouterState state) {
            return const DatabasePage();
          },
          // routes: <RouteBase>[
          /// Same as "/a/details", but displayed on the root Navigator by
          /// specifying [parentNavigatorKey]. This will cover both screen B
          /// and the application shell.
          // GoRoute(
          //   path: 'details',
          //   parentNavigatorKey: _rootNavigatorKey,
          //   builder: (BuildContext context, GoRouterState state) {
          //     return const DetailsScreen(label: 'B');
          //   },
          // ),
          // ],
        ),
      ],
    ),
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const WelcomePage();
      },
    ),
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
  errorBuilder: (BuildContext context, GoRouterState state) {
    return const ErrorPage();
  },
);
