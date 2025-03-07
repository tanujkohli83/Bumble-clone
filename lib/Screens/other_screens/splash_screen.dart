import 'dart:async';
import 'package:bumble/Screens/other_screens/signIn_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SigninScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(242, 188, 39, 1),
        child: Center(
          child: Text(
            "Bumble",
            style: TextStyle(fontFamily: 'bumbleFont', fontSize: 75),
          ),
        ),
      ),
    );
  }
}
