import 'package:bumble/Screens/other_screens/home_Screen.dart';
import 'package:bumble/Screens/other_screens/signIn_screen.dart';
import 'package:bumble/Screens/other_screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BumbleApp());
}

class BumbleApp extends StatelessWidget {
  const BumbleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(242, 188, 39, 1),
        ),
      ),
      home: HomeScreen(),
    );
  }
}