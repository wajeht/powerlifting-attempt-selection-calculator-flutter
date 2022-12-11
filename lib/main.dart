import 'package:flutter/material.dart';
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
        primarySwatch: Colors.red,
      ),
      routerConfig: routes,
    );
  }
}
