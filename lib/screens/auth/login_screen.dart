import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
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
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Password",
                hintText: '**********',
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.password_outlined,
                ),
              ),
            ),
            const SizedBox(height: 10),
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
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(100, 48),
                ),
                child: const Text('Forgot password?'),
                onPressed: () => context.push('/forgot-password'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
