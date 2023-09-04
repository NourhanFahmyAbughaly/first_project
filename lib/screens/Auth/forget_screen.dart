import 'package:flutter/material.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/logo.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child: Image.asset(
                "assets/Forgot password-bro 1.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                "Forget password?",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                "Enter your email address to retrieve your password",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Email",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email_rounded,
                  color: Colors.grey,
                  size: 30,
                ),
                hintText: " example@gmail.com",
                hintStyle: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 16,
                ),
                fillColor: Colors.grey[100],
                filled: true,
                contentPadding: EdgeInsets.all(8.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
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
                  "Send Verfication Code",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't you get the secret code ? ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 16),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Re-send on",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
