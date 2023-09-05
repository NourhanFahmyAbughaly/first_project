import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "change password",
          style: TextStyle(
            color: Colors.green,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  "At least 9 charater, with uppercase and lowercase letters ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                ))
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "Current Password",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            TextFormField(
              obscureText: true,
              validator: (val) {
                if (val!.isEmpty) {
                  return " the value is empty";
                }
              },
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                  size: 30,
                ),
                hintText: "********************",
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
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "New Password ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            TextFormField(
              obscureText: true,
              validator: (val) {
                if (val!.isEmpty) {
                  return " the value is empty";
                }
              },
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                  size: 30,
                ),
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
                hintText: "********************",
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
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 10),
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
