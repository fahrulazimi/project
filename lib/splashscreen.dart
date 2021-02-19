import 'package:flutter/material.dart';
import 'package:project/home.dart';
import 'dart:async';
import 'package:project/layout.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 10);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 200,
              width: 100,
            ),
            Image.asset(
              "assets/images/logo_trans.png",
              width: SizeConfig.blockHorizontal * 22,
              height: SizeConfig.blockVertical * 22,
            ),
            Image.asset(
              "assets/images/gedung3.png",
              width: SizeConfig.blockHorizontal * 100,
              height: SizeConfig.blockVertical * 30,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
// @override
// Widget build(BuildContext context) {
//   SizeConfig().init(context);
//   return Scaffold(
//     backgroundColor: Colors.white,
//     body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             "assets/images/logo_trans.png",
//             width: SizeConfig.blockHorizontal * 20,
//             height: SizeConfig.blockVertical * 20,
//           ),
//         ],
//       ),
//     ),
//   );
// }
