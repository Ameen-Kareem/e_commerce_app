import 'package:e_commerce_app/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Welcome\nBack!",
            style: GoogleFonts.montserrat(
                color: ColorConstants.BLACK,
                fontSize: 36,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 36,
          ),
          TextFormField()
        ],
      ),
    );
  }
}
