import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("The page you're looking for cannot be found!"),
            TextButton(
              onPressed: () => context.go('/attempts'),
              child: const Text("Home"),
            ),
          ],
        ),
      ),
    );
  }
}
