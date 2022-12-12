import 'package:flutter/material.dart';

class DatabasePage extends StatelessWidget {
  const DatabasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Database"),
        elevation: 0,
      ),
      body: const Center(
        child: Text("Database"),
      ),
    );
  }
}
