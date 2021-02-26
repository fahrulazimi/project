import 'package:flutter/material.dart';
import 'package:project/home.dart';
import 'package:project/layout.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

bool _passwordVisible = false;

void initState() {
  _passwordVisible = true;
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  String _username, _password;
  bool _btnEnabled = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Selamat Datang",
                    style: TextStyle(
                        fontFamily: "NuninoSans",
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Silahkan login terlebih dahulu",
                    style: TextStyle(fontFamily: "NuninoSans", fontSize: 14),
                  ),
                  Image.asset(
                    "assets/images/intro4.png",
                    width: SizeConfig.blockHorizontal * 100,
                    height: SizeConfig.blockVertical * 30,
                  ),
                  Form(
                      key: formKey,
                      onChanged: () => setState(
                          () => _btnEnabled = formKey.currentState.validate()),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Username",
                            style: TextStyle(
                                fontFamily: "NuninoSans",
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[100]),
                            ),
                            child: TextFormField(
                              onSaved: (input) => _username = input,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Masukkan Username",
                                  hintStyle: TextStyle(
                                      fontFamily: "NuninoSans",
                                      fontSize: 14,
                                      color: Colors.grey[400])),
                            ),
                          ),
                          Text(
                            "Password",
                            style: TextStyle(
                                fontFamily: "NuninoSans",
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[100]),
                            ),
                            child: TextFormField(
                                onSaved: (input) => _password = input,
                                obscureText: !_passwordVisible,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Masukkan Password",
                                  hintStyle: TextStyle(
                                      fontFamily: "NuninoSans",
                                      fontSize: 14,
                                      color: Colors.grey[400]),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                        _passwordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.red),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                    color: Colors.red,
                                  ),
                                )),
                          ),
                        ],
                      )),
                  Container(
                    child: Center(
                      child: Text(
                        "Butuh bantuan?",
                        style: TextStyle(
                            fontFamily: "NuninoSans",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.red),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
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
                                  ? [Colors.red, Colors.red]
                                  : [Colors.grey, Colors.grey[200]]),
                        ),
                        child: Center(
                            child: Text(
                          "LOGIN",
                          style: TextStyle(
                              fontFamily: "NuninoSans",
                              fontSize: 14,
                              color: Colors.white),
                        )),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      })
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
