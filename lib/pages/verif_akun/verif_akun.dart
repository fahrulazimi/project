import 'package:flutter/material.dart';
import 'package:project/helper/layout.dart';
import 'package:project/pages/dialog/dialog.dart';

class VerifAkun extends StatefulWidget {
  @override
  _VerifAkunState createState() => _VerifAkunState();
}

class _VerifAkunState extends State<VerifAkun> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          child: Icon(
            Icons.navigate_before_rounded,
            size: 30,
            color: Colors.black,
          ),
          onTap: () {
            // showDialog(
            //     context: context,
            //     builder: (BuildContext context) {
            //       return OnExitVerifDialog();
            //     });
          },
        ),
        title: Text(
          "Verifikasi Akun",
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/intro3.png",
                width: SizeConfig.blockHorizontal * 100,
                height: SizeConfig.blockVertical * 30,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Kamu belum verifikasi akun partner. Silahkan lanjutkan verifikasi akun terlebih dahulu.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xffC43D39),
                  ),
                  child: Center(
                    child: Text(
                      "LANJUTKAN",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      border: Border.all(color: Color(0xffC43D39))),
                  child: Center(
                    child: Text(
                      "NANTI SAJA",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffC43D39),
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return OnConfirmVerifAkun();
                      });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
