import 'package:flutter/material.dart';
import 'package:project/helper/layout.dart';
import 'package:project/pages/home/home_page.dart';
import 'package:project/pages/knowledge/knowledge_page.dart';
import 'package:project/pages/profile_page/profile_page.dart';

import 'inbox_page.dart';

class InboxEmpty extends StatefulWidget {
  @override
  _InboxEmptyState createState() => _InboxEmptyState();
}

class _InboxEmptyState extends State<InboxEmpty> {
  int _selectedIndex = 2;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 0) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    } else if (index == 1) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Knowledge()));
    } else if (index == 2) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Inbox()));
    } else if (index == 3) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Profile()));
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Inbox",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 17, right: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/intro2.png",
              height: SizeConfig.blockVertical * 48,
            ),
            Text(
              "Belum ada pesan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10),
            Text(
              "Kalau sudah ada pesan baru, nanti akan muncul pada halaman ini.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Beranda'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_outline_rounded), label: 'Knowledge'),
          BottomNavigationBarItem(
              icon: Icon(Icons.email_rounded), label: 'Inbox'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded), label: 'Profil'),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xffC43D39),
        unselectedItemColor: Colors.grey[400],
        onTap: _onItemTap,
        elevation: 5,
      ),
    );
  }
}
