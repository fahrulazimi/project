import 'package:flutter/material.dart';
import 'package:project/layout.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.white,
      height: SizeConfig.blockVertical * 10,
      width: SizeConfig.screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: SizeConfig.blockVertical * 10,
            width: SizeConfig.blockHorizontal * 15,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment(0, -0.5),
                  child: Icon(
                    Icons.home_filled,
                    color: Color(0xffC43D39),
                    size: SizeConfig.blockHorizontal * 7.5,
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.6),
                  child: Text(
                    "Beranda",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffC43D39),
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: SizeConfig.blockVertical * 10,
            width: SizeConfig.blockHorizontal * 15,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment(0, -0.5),
                  child: Icon(
                    Icons.people_outline_rounded,
                    color: Colors.grey[400],
                    size: SizeConfig.blockHorizontal * 7.5,
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.6),
                  child: Text(
                    "Knowledge",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: SizeConfig.blockVertical * 10,
            width: SizeConfig.blockHorizontal * 15,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment(0, -0.5),
                  child: Icon(
                    Icons.email_rounded,
                    color: Colors.grey[400],
                    size: SizeConfig.blockHorizontal * 7.5,
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.6),
                  child: Text(
                    "Inbox",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: SizeConfig.blockVertical * 10,
            width: SizeConfig.blockHorizontal * 15,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment(0, -0.5),
                  child: Icon(
                    Icons.person_outline_rounded,
                    color: Colors.grey[400],
                    size: SizeConfig.blockHorizontal * 7.5,
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.6),
                  child: Text(
                    "Profil",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
