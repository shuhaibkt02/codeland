import 'package:codeland/core/constant.dart';
import 'package:codeland/core/extension/nav_extenstion.dart';
import 'package:codeland/feature/auth/presentation/screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> gotoLogin() async {
      await Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(context).pushAndRemoveUntilPage(const LoginScreen());
      });
    }

    gotoLogin();

    return Scaffold(
      body: Center(
        child: Image.asset(logo),
      ),
    );
  }
}
