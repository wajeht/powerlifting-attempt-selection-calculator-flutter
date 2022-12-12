import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Email",
                hintText: 'email@domain.com',
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.email_outlined,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100, 48),
                ),
                child: const Text('Submit'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
