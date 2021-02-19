import 'package:flutter/material.dart';
import 'package:project/layout.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
      body: Center(
        child: Text("Homepage"),
      ),
    ));
  }
}
