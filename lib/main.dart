import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'defaultSettings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Attendance Management",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: primaryColor,
      ),
      home: LoginScreen(),
    );
  }
}

