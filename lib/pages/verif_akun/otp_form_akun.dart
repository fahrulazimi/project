import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:project/pages/dialog/dialog.dart';
import 'package:project/pages/verif_akun/otp_timeout_akun.dart';

class OTPFormAkun extends StatefulWidget {
  @override
  _OTPFormAkunState createState() => _OTPFormAkunState();
}

class _OTPFormAkunState extends State<OTPFormAkun> {
  @override
  Widget build(BuildContext context) {
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
          },
        ),
        title: Text("Verifikasi Akun",
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
                width: 120,
              ),
              Text(
                  "Harap ketikan kode verifikasi yang dikirim ke nomor +627722899179.",
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
                    // showDialog(
                    //     context: context,
                    //     builder: (BuildContext context) {
                    //       return OnSuksesAkunDialog();
                    //     });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OTPAkunTimeOut()));
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

  // buttonVerifikasi() {
  //   return GestureDetector(
  //       child: Container(
  //         height: 50,
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(25),
  //           color: Color(0xffC43D39),
  //         ),
  //         child: Center(
  //             child: Text(
  //           "VERIFIKASI OTP",
  //           style: TextStyle(fontSize: 14, color: Colors.white),
  //         )),
  //       ),
  //       onTap: () {
  //         // showDialog(
  //         //     context: context,
  //         //     builder: (BuildContext context) {
  //         //       return OnLoadingDialog();
  //         //     });
  //         Navigator.push(
  //             context, MaterialPageRoute(builder: (context) => OTPTimeOut()));
  //       });
  // }

  void _onButtonHelp() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        ),
        context: context,
        builder: (context) {
          return Wrap(
            children: <Widget>[
              Container(
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
                        leading: Icon(Icons.chat_rounded),
                        title: Text(
                          "Tidak menerima kode OTP",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
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
                        leading: Icon(Icons.error_outline_rounded),
                        title: Text(
                          "Selalu gagal verifikasi",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        subtitle: Text(
                          "Silakan koordinasi dengan helpdesk partner melalui telegram.",
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: Icon(Icons.arrow_forward_rounded),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
