import 'package:flutter/material.dart';
import 'package:yoga/asans/asan1.dart';
import 'package:yoga/homepage.dart';
import 'package:yoga/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Loginpage(),
    );
  }
}
