import 'package:flutter/material.dart';
import 'package:project/inbox_page.dart';
import 'package:project/layout.dart';

class DetailInboxUpload extends StatefulWidget {
  @override
  _DetailInboxUploadState createState() => _DetailInboxUploadState();
}

class _DetailInboxUploadState extends State<DetailInboxUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          child: Icon(Icons.navigate_before_rounded,
              size: 30, color: Colors.black),
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Inbox()));
          },
        ),
        title: Text(
          "Detail Inbox",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Text(
              "Senin, 1 Februari 2021",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Container(
              height: SizeConfig.blockVertical * 20,
              width: SizeConfig.screenWidth,
              padding: EdgeInsets.fromLTRB(12, 15, 12, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xffEDEDED)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "identity_invalid",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffC43D39)),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Maaf, status verifikasi pelanggan MYIR-108203203223 atas nama Duryodhana ditolak karena foto KTP tidak sesuai dengan foto selfi terlalu cakep jadinya. Silakan upload ulang foto KTP pelanggan dengan benar.",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffC43D39),
                ),
                child: Center(
                  child: Text(
                    "UPLOAD ULANG",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
