import 'package:flutter/material.dart';

import '../../caregiver/login/loginPage.dart';
import '../../caregiver/sign_up/register.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void toggleScreen() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return RegisterPage(showLoginPage: toggleScreen);
    } else {
      return LoginPage(showRegisterPage: toggleScreen);
    }
  }
}
