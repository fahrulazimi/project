import 'package:flutter/material.dart';
import 'package:project/home.dart';
import 'package:project/layout.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = true;

  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Silahkan login terlebih dahulu",
                  style: TextStyle(fontSize: 14),
                ),
                Image.asset(
                  "assets/images/intro4.png",
                  width: SizeConfig.blockHorizontal * 100,
                  height: SizeConfig.blockVertical * 30,
                ),
                Text(
                  "Username",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[100]),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Masukkan Username",
                        hintStyle:
                            TextStyle(fontSize: 14, color: Colors.grey[400])),
                  ),
                ),
                Text(
                  "Password",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[100]),
                  ),
                  child: TextField(
                      obscureText: !_passwordVisible,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Masukkan Password",
                        hintStyle:
                            TextStyle(fontSize: 14, color: Colors.grey[400]),
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
                Container(
                  child: Center(
                    child: Text(
                      "Butuh bantuan?",
                      style: TextStyle(
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
                            colors: [Colors.grey, Colors.grey[200]]),
                      ),
                      child: Center(
                        child: Text(
                          "LOGIN",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
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
    );
  }
}
