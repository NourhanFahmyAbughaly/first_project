import 'package:flutter/material.dart';
class FirstImageOnBoarding extends StatelessWidget {
  const FirstImageOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(child: Image.asset("assets/onBoarding1/Vector.png")),
          Positioned(
              bottom: -15,
              child: Image.asset("assets/onBoarding1/Vector-1.png")),
          Positioned(
              bottom: 0,
              child: Image.asset(
                  "assets/onBoarding1/freepik--Character--inject-49.png")),
          Positioned(
              bottom: 0,
              child: Image.asset(
                  "assets/onBoarding1/freepik--Table--inject-49.png")),
          Positioned(
              bottom: 10,
              child: Image.asset(
                  "assets/onBoarding1/freepik--Wall--inject-49.png")),
          Positioned(
              bottom: -50,
              left: 0,
              right: 0,
              child: Image.asset(
                  "assets/onBoarding1/freepik--Bottles--inject-49.png")),
          Positioned(
              bottom: -100,
              left: 0,
              right: 0,
              child: Image.asset(
                  "assets/onBoarding1/freepik--Plant--inject-49.png")),
        ],
      ),
    );
  }
}
