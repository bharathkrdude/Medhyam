import 'package:flutter/material.dart';
import 'package:medhyam/core/colors.dart';
import 'package:medhyam/screens/splashScreen/screen_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medhyam screens',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        primaryColor: backgroundColorWhite,
        cardColor: white,
        useMaterial3: true,
    
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
