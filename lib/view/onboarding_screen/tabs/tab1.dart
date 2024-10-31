import 'package:e_commerce_app/utils/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              child: Image.asset(ImageConstants.ONBOARDING1),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Choose product",
              style: GoogleFonts.montserrat(
                  fontSize: 24, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 72,
              width: 340,
              child: Text(
                "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                style: GoogleFonts.montserrat(
                    color: Color(0xffA8A8A9),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
