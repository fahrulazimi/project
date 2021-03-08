import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:project/dialog.dart';
import 'package:project/layout.dart';
import 'package:project/verif_tele.dart';

class OTPFormTele extends StatefulWidget {
  @override
  _OTPFormTeleState createState() => _OTPFormTeleState();
}

class _OTPFormTeleState extends State<OTPFormTele> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          child: Icon(Icons.navigate_before_rounded,
              size: 30, color: Colors.black),
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return OnConfirmExitDialog();
                });
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => VerifTelegram()));
          },
        ),
        title: Text("Verifikasi Telegram",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w700)),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/intro2.png",
                width: SizeConfig.blockHorizontal * 100,
                height: SizeConfig.blockVertical * 30,
              ),
              Text(
                  "Harap ketikan kode verifikasi yang dikirim ke akun telegram kamu.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: PinCodeFields(
                  // autofocus: true,
                  autoHideKeyboard: false,
                  length: 4,
                  activeBorderColor: Colors.red,
                  keyboardType: TextInputType.number,
                  textStyle: TextStyle(fontSize: 36),
                  onComplete: (output) {
                    print(output);
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Verifikasi dalam waktu "),
                  TweenAnimationBuilder(
                      tween: Tween(begin: 120.0, end: 0),
                      duration: Duration(seconds: 120),
                      builder: (context, value, child) => Text(
                            "${value.toInt()}",
                            style: TextStyle(color: Colors.red),
                          )),
                ],
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
                      "VERIFIKASI OTP",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    )),
                  ),
                  onTap: () {
                    //   showDialog(
                    //       context: context,
                    //       builder: (BuildContext context) {
                    //         return OnErrorTeleDialog();
                    //       });
                  }),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                child: Container(
                  child: Center(
                    child: Text(
                      "Butuh bantuan?",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffC43D39)),
                    ),
                  ),
                ),
                onTap: () => _onButtonHelp(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onButtonHelp() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        ),
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    width: 80,
                    height: 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Apa kendala kamu saat ini?",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xffC43D39),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.accessibility_rounded),
                    title: Text(
                      "Tidak Menerika Kode OTP",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(
                      "Silakan kirim ulang permintaan kode otp yang baru.",
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Icon(Icons.arrow_forward_rounded),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.call_rounded),
                    title: Text(
                      "ID Telegram salah",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(
                      "Silakan ganti identitas telegram kamu dengan data yang sesuai.",
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Icon(Icons.arrow_forward_rounded),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.error_outline_rounded),
                    title: Text(
                      "Selalu gagal verifikasi",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(
                      "Silakan koordinasi dengan helpdesk partner melalui telegram.",
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Icon(Icons.arrow_forward_rounded),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          );
        });
  }
}
