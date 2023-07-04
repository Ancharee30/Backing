import 'package:flutter/material.dart';

import '../visual_impairment/home_visual.dart';
import '../visual_impairment/login_visual.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool showLoginPage = true;

  void toggleScreen() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return RegisterVisual(showLoginPage: toggleScreen);
    } else {
      return const HomeVisual();
    }
  }
}
