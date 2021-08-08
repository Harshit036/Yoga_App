import 'package:flutter/material.dart';
import 'package:yoga/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Yoga Guru",
      home: Loginpage(),
    );
  }
}
