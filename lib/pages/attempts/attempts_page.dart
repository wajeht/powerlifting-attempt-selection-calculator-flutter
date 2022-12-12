import 'package:flutter/material.dart';

class AttemptsScreen extends StatefulWidget {
  const AttemptsScreen({super.key});

  @override
  State<AttemptsScreen> createState() => _AttemptsScreenState();
}

class _AttemptsScreenState extends State<AttemptsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Attempts"),
        elevation: 0,
      ),
      body: const Center(
        child: Text("Attempts"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ),
    );
  }
}
