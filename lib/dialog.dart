import 'package:flutter/material.dart';

class OnLoadingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 180,
        width: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/intro3.png",
              width: 120,
            ),
            Text(
              "Mohon tunggu sebentar...",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
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
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ),
              backgroundColor: Color(0xffC43D39),
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
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ),
              backgroundColor: Color(0xffC43D39),
            )
          ],
        ),
      ),
    );
  }
}

class OnConfirmExitDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 280,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/intro1.png",
              width: 120,
            ),
            Text("Konfirmasi terlebih dahulu",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
                "Apakah kamu yakin keluar dari halaman verifikasi telegram? Jika keluar, maka kamu harus login ulang.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                )),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 130,
                  height: 40,
                  child: FloatingActionButton.extended(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffC43D39)),
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    label: Padding(
                      padding: EdgeInsets.all(50.0),
                      child: Text(
                        "KEMBALI",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffC43D39),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 40,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    label: Padding(
                      padding: EdgeInsets.all(50.0),
                      child: Text(
                        "KELUAR",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    backgroundColor: Color(0xffC43D39),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class OnErrorTeleDialog extends StatelessWidget {
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
              "assets/images/intro4.png",
              width: 120,
            ),
            Text("Terjadi kegagalan dalam proses verifikasi telegram.",
                textAlign: TextAlign.center,
                style: TextStyle(
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
                padding: EdgeInsets.all(60.0),
                child: Text(
                  "OKE, COBA LAGI",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ),
              backgroundColor: Color(0xffC43D39),
            )
          ],
        ),
      ),
    );
  }
}

class OnErrorOTPDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 280,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/intro3.png",
              width: 120,
            ),
            Text("Terjadi kegagalan dalam proses \n verifikasi OTP telegram.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 130,
                  height: 40,
                  child: FloatingActionButton.extended(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffC43D39)),
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    label: Padding(
                      padding: EdgeInsets.all(50.0),
                      child: Text(
                        "BANTUAN",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffC43D39),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 40,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    label: Padding(
                      padding: EdgeInsets.all(50.0),
                      child: Text(
                        "KIRIM ULANG",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    backgroundColor: Color(0xffC43D39),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class OnSuksesDialog extends StatelessWidget {
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
              "assets/images/intro2.png",
              width: 120,
            ),
            Text("Terima kasih telah berhasil verifikasi otp.",
                textAlign: TextAlign.center,
                style: TextStyle(
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
                  "OKE SIAP",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ),
              backgroundColor: Color(0xffC43D39),
            )
          ],
        ),
      ),
    );
  }
}

class OnConfirmVerifAkun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 280,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/intro1.png",
              width: 120,
            ),
            Text("Konfirmasi terlebih dahulu",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
                "Jika dalam 14 hari sejak kamu terdaftar tidak melakukan verifikasi, maka akun kamu akan disuspend. Apakah kamu yakin keluar halaman?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                )),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 130,
                  height: 40,
                  child: FloatingActionButton.extended(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffC43D39)),
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    label: Padding(
                      padding: EdgeInsets.all(50.0),
                      child: Text(
                        "KEMBALI",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffC43D39),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 40,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    label: Padding(
                      padding: EdgeInsets.all(50.0),
                      child: Text(
                        "IYA, YAKIN",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    backgroundColor: Color(0xffC43D39),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class OnErrorOTPAkunDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 280,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/intro3.png",
              width: 120,
            ),
            Text("Terjadi kegagalan dalam proses \n verifikasi OTP.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 130,
                  height: 40,
                  child: FloatingActionButton.extended(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffC43D39)),
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    label: Padding(
                      padding: EdgeInsets.all(50.0),
                      child: Text(
                        "BANTUAN",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffC43D39),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 40,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    label: Padding(
                      padding: EdgeInsets.all(50.0),
                      child: Text(
                        "KIRIM ULANG",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    backgroundColor: Color(0xffC43D39),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class OnSuksesAkunDialog extends StatelessWidget {
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
              "assets/images/intro2.png",
              width: 120,
            ),
            Text(
                "Terima kasih telah berhasil mengirimkan data verifikasi, mohon menunggu proses verifikasi data oleh agent kami..",
                textAlign: TextAlign.center,
                style: TextStyle(
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
                  "OKE SIAP",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ),
              backgroundColor: Color(0xffC43D39),
            )
          ],
        ),
      ),
    );
  }
}
