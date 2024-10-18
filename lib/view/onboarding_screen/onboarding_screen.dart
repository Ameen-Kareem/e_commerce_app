import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text("1",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
                Text("/3",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xffA0A0A1),
                        fontWeight: FontWeight.w500)),
                Expanded(child: SizedBox()),
                Text("Skip",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    child: Image.asset("assets/images/onboarding1.png"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Choose product",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 24,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 72,
                    width: 340,
                    child: Text(
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                      style: TextStyle(
                          color: Color(0xffA8A8A9),
                          fontFamily: "Montserrat",
                          fontSize: 14,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                TabBar(tabs: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                  )
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
