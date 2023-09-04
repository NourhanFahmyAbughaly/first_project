import 'package:flutter/material.dart';

class SconedImage extends StatelessWidget {
  const SconedImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              child: Image.asset(
                  "assets/verfication/freepik--background-simple--inject-19.png")),
          Positioned(
              bottom: 0,
              child: Image.asset(
                  "assets/verfication/freepik--Character--inject-19.png")),
          Positioned(
              bottom: 0,
              child: Image.asset(
                "assets/verfication/freepik--Device--inject-19.png",
                fit: BoxFit.cover,
              )),
          Positioned(
              left: 70,
              bottom: 0,
              child: Image.asset(
                  "assets/verfication/freepik--Mug--inject-19.png")),
          Positioned(
              bottom: 0,
              child: Image.asset(
                  "assets/verfication/freepik--Table--inject-19.png")),
          Positioned(
              bottom: 0,
              child: Image.asset(
                  "assets/verfication/freepik--Window--inject-19.png")),
        ],
      ),
    );
  }
}
