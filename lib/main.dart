import 'package:e_commerce_app/view/onboarding_screen/onboarding_screen.dart';
import 'package:e_commerce_app/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/splash': (context) => SplashScreen(),
        '/onboarding': (context) => OnBoardingScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
