import 'package:e_commerce_app/utils/color_constants.dart';
import 'package:e_commerce_app/view/onboarding_screen/onboarding_animation.dart';
import 'package:e_commerce_app/view/onboarding_screen/tabs/tab1.dart';
import 'package:e_commerce_app/view/onboarding_screen/tabs/tab2.dart';
import 'package:e_commerce_app/view/onboarding_screen/tabs/tab3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List Screen = [Tab1(), Tab2(), Tab3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(children: [
          SizedBox(
            width: 17,
          ),
          Text("1",
              style: TextStyle(
                  fontSize: 18,
                  color: ColorConstants.BLACK,
                  fontWeight: FontWeight.w600)),
          Text("/3",
              style: TextStyle(
                  fontSize: 18,
                  color: ColorConstants.GREY1,
                  fontWeight: FontWeight.w600)),
        ]),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/login');
              print("Hello");
            },
            child: Text("Skip",
                style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: ColorConstants.BLACK,
                    fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            width: 17,
          )
        ],
      ),
      body: PageView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  index != 0
                      ? Text(
                          "Prev",
                          style: GoogleFonts.montserrat(
                              fontSize: 18, color: ColorConstants.GREY1),
                        )
                      : SizedBox(),
                  SizedBox(
                    width: 80,
                    height: 10,
                    child: Indicator(
                      currentIndex: index,
                    ),
                  ),
                  Text(
                    "Next",
                    style: GoogleFonts.montserrat(
                        fontSize: 18, color: ColorConstants.PRIMARY),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
