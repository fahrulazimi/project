import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project/login_page.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
              titleWidget: Center(
                child: Text(
                  "Konsep Baru",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "NuninoSans",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffC43D39)),
                ),
              ),
              bodyWidget: Center(
                child: Expanded(
                  child: Text(
                    "Berjualan jadi lebih mudah dengan tampilan baru aplikasi.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "NuninoSans",
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              image: Image.asset("assets/images/intro1.png")),
          PageViewModel(
              titleWidget: Center(
                child: Text(
                  "Kelola Data Order",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "NuninoSans",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffC43D39)),
                ),
              ),
              bodyWidget: Center(
                child: Expanded(
                  child: Text(
                    "Memudahkan sales dalam mengelola data order pelanggan dengan baik.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "NuninoSans",
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              image: Image.asset("assets/images/intro2.png")),
          PageViewModel(
              titleWidget: Center(
                child: Text(
                  "Manajemen Sales Force",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "NuninoSans",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffC43D39)),
                ),
              ),
              bodyWidget: Center(
                child: Expanded(
                  child: Text(
                    "Membantu sales dalam bekerja dengan berbagai fitur yang tersedia.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "NuninoSans",
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              image: Image.asset("assets/images/intro3.png"))
        ],
        onDone: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        showSkipButton: true,
        showNextButton: true,
        animationDuration: 1000,
        curve: Curves.fastOutSlowIn,
        dotsDecorator: DotsDecorator(
            spacing: EdgeInsets.all(5),
            activeColor: Color(0xffC43D39),
            activeSize: Size(15, 7.5),
            size: Size.square(7.5),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        skip: Container(
          width: 120,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color(0xffC43D39))),
          child: Center(
            child: Text(
              "LEWATI",
              style: TextStyle(
                  fontFamily: "NuninoSans",
                  fontSize: 11,
                  color: Color(0xffC43D39)),
            ),
          ),
        ),
        next: Container(
          width: 120,
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xffC43D39),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              "SELANJUTNYA",
              style: TextStyle(
                  fontFamily: "NuninoSans", fontSize: 11, color: Colors.white),
            ),
          ),
        ),
        done: Container(
          width: 120,
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xffC43D39),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Flexible(
                flex: 2,
                child: Text(
                  "MULAI",
                  style: TextStyle(
                      fontFamily: "NuninoSans",
                      fontSize: 11,
                      color: Colors.white),
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                  size: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
