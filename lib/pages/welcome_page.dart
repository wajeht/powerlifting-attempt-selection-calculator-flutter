import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(100),
                        child: Image.asset(
                          'assets/images/louie.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(100, 48),
                          ),
                          onPressed: () => context.push('/login'),
                          child: const Text('Login / Register'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(100, 48),
                          ),
                          child: const Text('Continue as Guest'),
                          onPressed: () => context.push('/home'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: const Size(100, 48),
                      ),
                      onPressed: () async {
                        final Uri url =
                            Uri.parse('https://www.github.com/wajeht');
                        if (!await launchUrl(url)) {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text(
                        'Made with ❤️ by @wajeht ↗',
                        style: TextStyle(shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0, 0),
                            blurRadius: 20,
                            color: Colors.white,
                          ),
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
