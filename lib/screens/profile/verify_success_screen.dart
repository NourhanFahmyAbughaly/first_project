import 'package:flutter/material.dart';

class VerfiySuccessScreen extends StatelessWidget {
  const VerfiySuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child: Image.asset(
                "assets/Reset password-amico 1.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  " Your account has been verfied successfully ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                ))
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
