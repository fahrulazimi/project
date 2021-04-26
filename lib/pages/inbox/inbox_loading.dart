import 'package:flutter/material.dart';
import 'package:project/helper/layout.dart';
import 'package:project/pages/home/home_page.dart';
import 'package:project/pages/knowledge/knowledge_page.dart';
import 'package:project/pages/profile_page/profile_page.dart';

import 'inbox_page.dart';

class InboxLoading extends StatefulWidget {
  @override
  _InboxLoadingState createState() => _InboxLoadingState();
}

class _InboxLoadingState extends State<InboxLoading> {
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
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15, 15, 10, 0),
            margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
            height: SizeConfig.blockVertical * 17,
            width: SizeConfig.screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(2, 4),
                  )
                ]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.fiber_manual_record_rounded,
                  color: Colors.grey[400],
                  size: 20,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 15,
                        width: SizeConfig.blockHorizontal * 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffDADADA), Color(0xffEDEDED)],
                            )),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 15,
                        width: SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffDADADA), Color(0xffEDEDED)],
                            )),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 15,
                        width: SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffDADADA), Color(0xffEDEDED)],
                            )),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 15,
                        width: SizeConfig.blockHorizontal * 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffDADADA), Color(0xffEDEDED)],
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 15, 10, 0),
            margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
            height: SizeConfig.blockVertical * 17,
            width: SizeConfig.screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(2, 4),
                  )
                ]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.fiber_manual_record_rounded,
                  color: Colors.grey[400],
                  size: 20,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 15,
                        width: SizeConfig.blockHorizontal * 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffDADADA), Color(0xffEDEDED)],
                            )),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 15,
                        width: SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffDADADA), Color(0xffEDEDED)],
                            )),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 15,
                        width: SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffDADADA), Color(0xffEDEDED)],
                            )),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 15,
                        width: SizeConfig.blockHorizontal * 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffDADADA), Color(0xffEDEDED)],
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 15, 10, 0),
            margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
            height: SizeConfig.blockVertical * 17,
            width: SizeConfig.screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(2, 4),
                  )
                ]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.fiber_manual_record_rounded,
                  color: Colors.grey[400],
                  size: 20,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 15,
                        width: SizeConfig.blockHorizontal * 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffDADADA), Color(0xffEDEDED)],
                            )),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 15,
                        width: SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffDADADA), Color(0xffEDEDED)],
                            )),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 15,
                        width: SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffDADADA), Color(0xffEDEDED)],
                            )),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 15,
                        width: SizeConfig.blockHorizontal * 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffDADADA), Color(0xffEDEDED)],
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 15, 10, 0),
            margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
            height: SizeConfig.blockVertical * 17,
            width: SizeConfig.screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(2, 4),
                  )
                ]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.fiber_manual_record_rounded,
                  color: Colors.grey[400],
                  size: 20,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 15,
                        width: SizeConfig.blockHorizontal * 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffDADADA), Color(0xffEDEDED)],
                            )),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 15,
                        width: SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffDADADA), Color(0xffEDEDED)],
                            )),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 15,
                        width: SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffDADADA), Color(0xffEDEDED)],
                            )),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 15,
                        width: SizeConfig.blockHorizontal * 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffDADADA), Color(0xffEDEDED)],
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
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
