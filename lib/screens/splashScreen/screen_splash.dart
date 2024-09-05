

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medhyam/core/colors.dart';
import 'package:medhyam/screens/main/screen_main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>  const ScreenMain(),
        ),
      );
    });
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Image.asset(
          'assets/images/MedhyamLogo.png',
        ),
      ),
    );
  }
}
