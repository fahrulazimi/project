import 'package:flutter/material.dart';

class OnLoadingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/intro1.png",
              width: 150,
            ),
            Text(
              "Mohon Tunggu Sebentar ...",
              style: TextStyle(
                  fontFamily: "NunitoSans",
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}

class OnErrorDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 250,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/intro1.png",
              width: 120,
            ),
            Text("Email atau password salah!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "NunitoSans",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(
              height: 25,
            ),
            FloatingActionButton.extended(
              onPressed: () {
                Navigator.of(context).pop();
              },
              label: Padding(
                padding: EdgeInsets.all(50.0),
                child: Text(
                  "OKE, COBA LAGI",
                  style: TextStyle(
                      fontFamily: "NunitoSans",
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ),
              backgroundColor: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}

class OnUpdateDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 250,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/intro1.png",
              width: 120,
            ),
            Text(
                "Terdapat Pembaharuan Aplikasi.\nSilahkan update aplikasi dibawah ini.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "NunitoSans",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(
              height: 25,
            ),
            FloatingActionButton.extended(
              onPressed: () {
                Navigator.of(context).pop();
              },
              label: Padding(
                padding: EdgeInsets.all(50.0),
                child: Text(
                  "UPDATE APLIKASI",
                  style: TextStyle(
                      fontFamily: "NunitoSans",
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ),
              backgroundColor: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
