import 'dart:async';
import 'package:e_commerce_app/utils/color_constants.dart';
import 'package:e_commerce_app/utils/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              height: 100,
              width: 124.99,
              ImageConstants.APPLOGO,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 9,
            ),
            Container(
              child: Text(
                "Stylish",
                style: GoogleFonts.libreCaslonText(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.PRIMARY),
              ),
            )
          ],
        ),
      ),
    );
  }
}
