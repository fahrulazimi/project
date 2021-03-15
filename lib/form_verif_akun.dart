import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:project/layout.dart';

class FormAkun extends StatefulWidget {
  @override
  _FormAkunState createState() => _FormAkunState();
}

class _FormAkunState extends State<FormAkun> {
  final formKey = GlobalKey<FormState>();

  String _emailakun, _nohp;
  bool _btnEnabled = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xffE9EBEF),
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
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Silahkan isi data dibawah ini dengan benar.",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Form(
                    key: formKey,
                    onChanged: () => setState(
                        () => _btnEnabled = formKey.currentState.validate()),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[100]),
                          ),
                          child: TextFormField(
                            onSaved: (input) => _emailakun = input,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Masukan email yang aktif",
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Colors.grey[400])),
                          ),
                        ),
                        Text(
                          "Nomor HP",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[100]),
                            ),
                            child: TextFormField(
                                onSaved: (input) => _nohp = input,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Cth. +62*****",
                                  hintStyle: TextStyle(
                                      fontSize: 14, color: Colors.grey[400]),
                                ))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.white,
              width: 420,
              height: 250,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "Upload foto KTP",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.error_rounded,
                        color: Colors.red,
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: SizeConfig.blockVertical * 25,
                    width: SizeConfig.blockHorizontal * 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey[200]),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FDottedLine(
                            color: Colors.grey[300],
                            strokeWidth: 2,
                            dottedLength: 5,
                            space: 3,
                            corner: FDottedLineCorner.all(8),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Icon(Icons.cloud_upload_rounded,
                                  color: Colors.red),
                            )),
                        SizedBox(height: 10),
                        Text(
                          "Format File JPG, JPEG, PNG \nTidak Lebih 3 MB",
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 11, color: Colors.grey[400]),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.white,
              width: 420,
              height: 250,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "Upload foto selfie bersama KTP",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.error_rounded,
                        color: Colors.red,
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: SizeConfig.blockVertical * 25,
                    width: SizeConfig.blockHorizontal * 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey[200]),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FDottedLine(
                            color: Colors.grey[300],
                            strokeWidth: 2,
                            dottedLength: 5,
                            space: 3,
                            corner: FDottedLineCorner.all(8),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Icon(Icons.cloud_upload_rounded,
                                  color: Colors.red),
                            )),
                        SizedBox(height: 10),
                        Text(
                          "Format File JPG, JPEG, PNG \nTidak Lebih 3 MB",
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 11, color: Colors.grey[400]),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.white,
              width: 420,
              height: 420,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "Tanda tangan digital",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.error_rounded,
                        color: Colors.red,
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: SizeConfig.blockVertical * 25,
                    width: SizeConfig.blockHorizontal * 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey[200]),
                    ),
                    child: Center(
                      child: Text(
                        "Ketuk disini untuk memulai Tanda Tangan Digital",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 11, color: Colors.grey[400]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
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
                          "VERIFIKASI",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        )),
                      ),
                      onTap: () {
                        // showDialog(
                        //     context: context,
                        //     builder: (BuildContext context) {
                        //       return OnErrorTeleDialog();
                        //     });
                        // Navigator.pushReplacement(context,
                        //     MaterialPageRoute(builder: (context) => OTPFormTele()));
                      }),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
