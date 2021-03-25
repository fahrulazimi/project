import 'package:flutter/material.dart';
import 'package:project/layout.dart';
import 'package:project/navbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xffE9EBEF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Beranda",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        actions: <Widget>[
          ClipOval(
            child: Image.asset("assets/images/intro5.png"),
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(),
      bottomNavigationBar: NavBar(),
    );
  }
}
