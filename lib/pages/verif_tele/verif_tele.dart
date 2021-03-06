import 'package:flutter/material.dart';
import 'package:project/helper/layout.dart';
import 'package:project/pages/login/login_page.dart';

import 'otp_form_tele.dart';

class VerifTelegram extends StatefulWidget {
  @override
  _VerifTelegramState createState() => _VerifTelegramState();
}

class _VerifTelegramState extends State<VerifTelegram> {
  final formKey = GlobalKey<FormState>();

  String _idtele, _usertele;
  bool _btnEnabled = false;

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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            }),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                "assets/images/intro5.png",
                width: SizeConfig.blockHorizontal * 100,
                height: SizeConfig.blockVertical * 30,
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.access_alarm_rounded),
                      title: Text(
                        "Langkah Pertama",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text(
                        "Silahkan tekan tombol start yang terdapat pada bot dibawah ini.",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(Icons.arrow_forward_rounded),
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        width: SizeConfig.blockHorizontal * 80,
                        decoration: BoxDecoration(
                            color: Color(0xffFFD5B2),
                            borderRadius: BorderRadius.circular(4)),
                        padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                        child: Text(
                            "Kode OTP akan dikirimkan melalui bot tersebut.",
                            style: TextStyle(
                                color: Color(0xffE86800), fontSize: 11))),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.add_alert_rounded),
                  title: Text(
                    "Langkah Kedua",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text(
                    "Untuk mendapatkan informasi telegram kamu, klik bot dibawah ini.",
                    style: TextStyle(fontSize: 12),
                  ),
                  isThreeLine: true,
                  trailing: Icon(Icons.arrow_forward_rounded),
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: formKey,
                onChanged: () => setState(
                    () => _btnEnabled = formKey.currentState.validate()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "ID Telegram",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[100]),
                      ),
                      child: TextFormField(
                        onSaved: (input) => _idtele = input,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Cth. 123456",
                            hintStyle: TextStyle(
                                fontSize: 14, color: Colors.grey[400])),
                      ),
                    ),
                    Text(
                      "Username Telegram",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 10),
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[100]),
                        ),
                        child: TextFormField(
                            onSaved: (input) => _usertele = input,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Cth. @username",
                              hintStyle: TextStyle(
                                  fontSize: 14, color: Colors.grey[400]),
                            ))),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: _btnEnabled
                              ? [Color(0xffC43D39), Color(0xffC43D39)]
                              : [Colors.grey, Colors.grey[200]]),
                    ),
                    child: Center(
                        child: Text(
                      "LANJUTKAN",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    )),
                  ),
                  onTap: () {
                    // showDialog(
                    //     context: context,
                    //     builder: (BuildContext context) {
                    //       return OnErrorTeleDialog();
                    //     });
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => OTPFormTele()));
                  }),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
