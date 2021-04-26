import 'package:flutter/material.dart';
import 'package:project/helper/layout.dart';
import 'package:project/pages/inbox/inbox_page.dart';

class DetailInbox extends StatefulWidget {
  @override
  _DetailInboxState createState() => _DetailInboxState();
}

class _DetailInboxState extends State<DetailInbox> {
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
                    "Informasi redeem poin",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffC43D39)),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Silakan segera lakukan reedem poin di tahun 2021 sebelum tanggal 31 Desember 2021 dikarenakan akan di reset poinnya dari awal.",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
