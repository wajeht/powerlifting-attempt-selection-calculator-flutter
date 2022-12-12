import 'package:flutter/material.dart';

class AttemptsPage extends StatefulWidget {
  const AttemptsPage({super.key});

  @override
  State<AttemptsPage> createState() => _AttemptsPageState();
}

class _AttemptsPageState extends State<AttemptsPage> {
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
        child: const Icon(Icons.add),
      ),
    );
  }
}
