import 'package:flutter/material.dart';
import 'package:project/pages/home/home_page.dart';
import 'package:project/pages/inbox/inbox_page.dart';
import 'package:project/pages/profile_page/profile_page.dart';

class Knowledge extends StatefulWidget {
  @override
  _KnowledgeState createState() => _KnowledgeState();
}

class _KnowledgeState extends State<Knowledge> {
  int _selectedIndex = 1;

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Knowledge",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        elevation: 0,
      ),
      body: Column(),
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
