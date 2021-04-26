import 'package:flutter/material.dart';
import 'package:project/helper/layout.dart';
import 'package:project/pages/home/home_page.dart';
import 'package:project/pages/inbox/inbox_page.dart';
import 'package:project/pages/knowledge/knowledge_page.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 3;

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
      backgroundColor: Color(0xffE9EBEF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Profil",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            height: SizeConfig.blockVertical * 69,
            width: SizeConfig.screenWidth,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffE9EBEF), Colors.white])),
            child: Column(
              children: <Widget>[
                Card(
                  child: Container(
                    height: SizeConfig.blockVertical * 40,
                    width: SizeConfig.screenWidth,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: ClipOval(
                            child: Image.asset("assets/images/intro5.png"),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 20),
                              Text(
                                "Muhamad Fahrul Azimi",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8),
                              Text(
                                "Partner ID : SPMEE85",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 8),
                              Container(
                                width: SizeConfig.screenWidth,
                                decoration: BoxDecoration(
                                    color: Color(0xffFFD5B2),
                                    borderRadius: BorderRadius.circular(4)),
                                padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                                child: Text("SF writel Bandung",
                                    style: TextStyle(
                                        color: Color(0xffE86800),
                                        fontSize: 11)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 2,
                          color: Color(0xffE9EBEF),
                        ),
                        SizedBox(height: 15),
                        ListTile(
                          leading: Icon(Icons.email_rounded,
                              color: Color(0xffC43D39)),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(
                                    color: Color(0xffC43D39),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "fahrul.azimi.2000@gmail.com",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone_rounded,
                              color: Color(0xffC43D39)),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nomor telepon",
                                style: TextStyle(
                                    color: Color(0xffC43D39),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "085729430253",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  height: SizeConfig.blockVertical * 20,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    color: Color(0xffE86800),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Bagikan tautan unik kamu",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Semakin banyak teman yang mendaftar, \nbonus berlimpah.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: SizeConfig.blockVertical * 4,
                              width: SizeConfig.blockHorizontal * 22,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  "Bagikan",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffE86800)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: SizeConfig.blockVertical * 15,
                        width: SizeConfig.blockHorizontal * 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/intro4.png"),
                              fit: BoxFit.cover),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
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
