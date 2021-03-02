import 'package:flutter/material.dart';
import 'package:project/home.dart';
import 'package:project/layout.dart';
import 'package:project/dialog.dart';

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
                        fontFamily: "NunitoSans",
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Silahkan login terlebih dahulu",
                    style: TextStyle(fontFamily: "NunitoSans", fontSize: 14),
                  ),
                  Image.asset(
                    "assets/images/intro4.png",
                    width: SizeConfig.blockHorizontal * 100,
                    height: SizeConfig.blockVertical * 30,
                  ),

                  // Form Username Password
                  Form(
                      key: formKey,
                      onChanged: () => setState(
                          () => _btnEnabled = formKey.currentState.validate()),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Username
                          Text(
                            "Username",
                            style: TextStyle(
                                fontFamily: "NunitoSans",
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
                                      fontFamily: "NunitoSans",
                                      fontSize: 14,
                                      color: Colors.grey[400])),
                            ),
                          ),

                          // Password
                          Text(
                            "Password",
                            style: TextStyle(
                                fontFamily: "NunitoSans",
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
                                      fontFamily: "NunitoSans",
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

                  // Butuh Bantuan
                  GestureDetector(
                    child: Container(
                      child: Center(
                        child: Text(
                          "Butuh bantuan?",
                          style: TextStyle(
                              fontFamily: "NunitoSans",
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.red),
                        ),
                      ),
                    ),
                    onTap: () => _onButtonHelp(),
                  ),
                  SizedBox(
                    height: 35,
                  ),

                  // Button Login
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
                              fontFamily: "NunitoSans",
                              fontSize: 14,
                              color: Colors.white),
                        )),
                      ),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return OnErrorDialog();
                            });
                      }
                      // onTap: () {
                      //   Navigator.pushReplacement(context,
                      //       MaterialPageRoute(builder: (context) => Home()));
                      // }
                      )
                ],
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
                    width: 100,
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
                      fontFamily: "NunitoSans",
                      fontSize: 15,
                      color: Colors.red,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.accessibility_rounded),
                    title: Text(
                      "Lupa Password",
                      style: TextStyle(
                          fontFamily: "NunitoSans",
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(
                      "Silahkan koordinasi dengan helpdesk partner melalui telegram.",
                      style: TextStyle(fontFamily: "NunitoSans", fontSize: 12),
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
                      "Tidak bisa Masuk",
                      style: TextStyle(
                          fontFamily: "NunitoSans",
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(
                      "Silahkan koordinasi dengan helpdesk partner melalui telegram.",
                      style: TextStyle(fontFamily: "NunitoSans", fontSize: 12),
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
                      "Akun Suspend",
                      style: TextStyle(
                          fontFamily: "NunitoSans",
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(
                      "Silahkan koordinasi dengan helpdesk partner melalui telegram.",
                      style: TextStyle(fontFamily: "NunitoSans", fontSize: 12),
                    ),
                    trailing: Icon(Icons.arrow_forward_rounded),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "myIndiHome Partner 5.0.0",
                    style: TextStyle(
                        fontFamily: "NunitoSans",
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          );
        });
  }
}
