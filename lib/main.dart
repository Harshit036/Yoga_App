import 'package:flutter/material.dart';
import 'package:yoga/asans/asan1.dart';
import 'package:yoga/asans/asan2.dart';
import 'package:yoga/asans/asan3.dart';
import 'package:yoga/asans/asan4.dart';
import 'package:yoga/asans/asan5.dart';
import 'package:yoga/asans/asan6.dart';
import 'package:yoga/homepage.dart';
import 'package:yoga/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Asan6(),
    );
  }
}
