import 'package:first_project/component/sconed_image.dart';
import 'package:first_project/screens/Auth/forget_screen.dart';
import 'package:first_project/screens/Auth/login_screen.dart';
import 'package:first_project/screens/Auth/reset_password_screen.dart';
import 'package:first_project/screens/Auth/reset_password_success_screen.dart';
import 'package:first_project/screens/Auth/signup_screen.dart';
import 'package:first_project/screens/Auth/verfication_screen.dart';
import 'package:first_project/screens/onboarding_screen/onboarding_screen.dart';
import 'package:first_project/screens/profile/profile_screen.dart';
import 'package:first_project/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ProfileScreen());
  }
}
