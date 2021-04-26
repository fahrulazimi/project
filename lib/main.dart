import 'package:flutter/material.dart';
import 'package:project/pages/onboarding/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "NunitoSans"),
      home: SplashScreen(),
    );
  }
}
