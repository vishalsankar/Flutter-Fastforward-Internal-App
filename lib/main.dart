import 'package:flutter/material.dart';
import 'package:flutterfastforwardapp/screens/homepage.dart';
import 'package:flutterfastforwardapp/screens/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
}
