import 'package:flutter/material.dart';
import 'package:project/helper/layout.dart';
import 'package:project/pages/home/home_page.dart';
import 'package:project/pages/inbox/inbox_page.dart';
import 'package:project/pages/knowledge/knowledge_page.dart';
import 'package:project/pages/profile_page/profile_page.dart';

class InboxFailedAPI extends StatefulWidget {
  @override
  _InboxFailedAPIState createState() => _InboxFailedAPIState();
}

class _InboxFailedAPIState extends State<InboxFailedAPI> {
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
              "assets/images/intro3.png",
              height: SizeConfig.blockVertical * 35,
            ),
            Text(
              "Message Error From API",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10),
            Text(
              "Maaf, terjadi kesalahan untuk sementara waktu. \nSilakan coba lagi secara berkala.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
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
                    "COBA LAGI",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 20),
            GestureDetector(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    border: Border.all(color: Color(0xffC43D39))),
                child: Center(
                  child: Text(
                    "BANTUAN",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffC43D39),
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              onTap: () => _onButtonHelp(),
            )
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

  void _onButtonHelp() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        ),
        context: context,
        builder: (context) {
          return Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                          width: 80,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffC4C4C4),
                          )),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Apa kendala kamu saat ini?",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffC43D39),
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.chat_rounded),
                        title: Text(
                          "Tidak mendapatkan pesan baru",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        subtitle: Text(
                          "Silakan koordinasi dengan helpdesk partner melalui telegram.",
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: Icon(Icons.arrow_forward_rounded),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(height: 15),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.error_outline_rounded),
                        title: Text(
                          "Gagal terus menerus",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        subtitle: Text(
                          "Silakan koordinasi dengan helpdesk partner melalui telegram.",
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: Icon(Icons.arrow_forward_rounded),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
