import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import './routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Powerlifting Attempt Selection Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      // routerConfig: routes,
      debugShowCheckedModeBanner: false,
      routerConfig: ShellRoutes().routes,
      // routerDelegate: routes.routerDelegate,
      // routeInformationParser: routes.routeInformationParser,
      // routeInformationProvider: routes.routeInformationProvider,
    );
  }
}
