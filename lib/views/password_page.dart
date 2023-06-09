import 'package:aba_ui_clone/views/main_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

  static const routename = 'password_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent.withOpacity(0.5),
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                GoRouter.of(context).pushReplacementNamed(MainPage.routename);
              },
              child: const Text('Cencel',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
