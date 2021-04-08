import 'package:flutter/material.dart';
import 'package:project/navbar.dart';
import 'package:project/layout.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xffE9EBEF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Beranda",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        actions: <Widget>[
          ClipOval(
            child: Image.asset("assets/images/intro5.png"),
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(13),
              color: Colors.white,
              height: SizeConfig.blockVertical * 70,
              width: SizeConfig.screenWidth,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                    height: SizeConfig.blockVertical * 12,
                    width: SizeConfig.screenWidth,
                    decoration: BoxDecoration(
                      color: Color(0xffC43D39),
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
                              "Halo, Fahrul Azimi",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Inputan hari ini 150, Semangat!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: SizeConfig.blockVertical * 15,
                          width: SizeConfig.blockHorizontal * 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/intro3.png"),
                                fit: BoxFit.cover),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: SizeConfig.blockVertical * 35,
                      width: SizeConfig.screenWidth,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.calendar_today_rounded,
                                color: Color(0xffC43D39),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "Bulan Februari",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () => _onButtonTarget(),
                                child: Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Color(0xffC43D39),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 40),
                              Text(
                                "0 ",
                                style: TextStyle(
                                    color: Color(0xffC43D39),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                " Poin PSB",
                                style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 40),
                              Text(
                                "0 ",
                                style: TextStyle(
                                    color: Color(0xffC43D39),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                " Poin Addon",
                                style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          SizedBox(height: 15),
                          Container(
                            height: 2,
                            color: Color(0xffE9EBEF),
                          ),
                          SizedBox(height: 15),
                          StepProgressIndicator(
                            totalSteps: 100,
                            currentStep: 30,
                            padding: 0,
                            size: 8,
                            selectedColor: Color(0xffE86800),
                            unselectedColor: Color(0xffFFE9D7),
                            roundedEdges: Radius.circular(10),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Text(
                                "Rp 1.240.000,- PSB",
                                style: TextStyle(
                                    color: Color(0xffE86800),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700),
                              ),
                              Spacer(),
                              Text(
                                "Max Rp 5.500.000",
                                style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          SizedBox(height: 15),
                          StepProgressIndicator(
                            totalSteps: 100,
                            currentStep: 50,
                            padding: 0,
                            size: 8,
                            selectedColor: Color(0xffE86800),
                            unselectedColor: Color(0xffFFE9D7),
                            roundedEdges: Radius.circular(10),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Text(
                                "Rp 3.000.000,- Addon",
                                style: TextStyle(
                                    color: Color(0xffE86800),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700),
                              ),
                              Spacer(),
                              Text(
                                "Max Rp 6.000.000",
                                style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: SizeConfig.blockVertical * 10,
                        width: SizeConfig.blockHorizontal * 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffFFB199), Color(0xffFF6188)],
                            )),
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment(0, -0.6),
                              child: Text(
                                "Jumlah PS",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, 0.6),
                              child: Text(
                                "20",
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: SizeConfig.blockVertical * 10,
                        width: SizeConfig.blockHorizontal * 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xff04BEFE), Color(0xff4481EB)],
                            )),
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment(0, -0.6),
                              child: Text(
                                "Total Order",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, 0.6),
                              child: Text(
                                "15",
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: SizeConfig.blockVertical * 10,
                        width: SizeConfig.blockHorizontal * 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffF79863), Color(0xffEB597C)],
                            )),
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment(0, -0.6),
                              child: Text(
                                "Total Followup",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, 0.6),
                              child: Text(
                                "9",
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.white,
              height: SizeConfig.blockVertical * 22,
              width: SizeConfig.screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Menu Utama",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: SizeConfig.blockVertical * 10,
                        width: SizeConfig.blockHorizontal * 18,
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment(0, -0.5),
                              child: InkWell(
                                child: Icon(Icons.app_registration, size: 30),
                                onTap: () => _onButtonRegistrasi(),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, 1),
                              child: Text(
                                "Registrasi",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: SizeConfig.blockVertical * 10,
                        width: SizeConfig.blockHorizontal * 18,
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment(0, -0.5),
                              child: InkWell(
                                child:
                                    Icon(Icons.text_snippet_rounded, size: 30),
                                onTap: () => _onButtonMonitoring(),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, 1),
                              child: Text(
                                "Monitoring",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: SizeConfig.blockVertical * 10,
                        width: SizeConfig.blockHorizontal * 18,
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment(0, -0.5),
                              child: InkWell(
                                child:
                                    Icon(Icons.access_time_rounded, size: 30),
                                onTap: () {},
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, 1),
                              child: Text(
                                "Presensi",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: SizeConfig.blockVertical * 10,
                        width: SizeConfig.blockHorizontal * 18,
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment(0, -0.5),
                              child: InkWell(
                                child: Icon(Icons.grid_view, size: 30),
                                onTap: () => _onButtonLainnya(),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, 1),
                              child: Text(
                                "Lainnya",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
              color: Colors.white,
              height: SizeConfig.blockVertical * 40,
              width: SizeConfig.screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Info Terkini",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Card(
                          child: Container(
                            height: SizeConfig.blockVertical * 25,
                            width: SizeConfig.blockHorizontal * 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: SizeConfig.blockVertical * 15,
                                  width: SizeConfig.screenWidth,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/intro4.png"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Text(
                                    "Panduan Komunikasi ISC",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            height: SizeConfig.blockVertical * 25,
                            width: SizeConfig.blockHorizontal * 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: SizeConfig.blockVertical * 15,
                                  width: SizeConfig.screenWidth,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/intro2.png"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Text(
                                    "Code of Conduct ISC",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }

  void _onButtonLainnya() {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      context: context,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.75,
          maxChildSize: 1,
          minChildSize: 0.5,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: Color(0xffE9EBEF),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: SizeConfig.blockVertical * 35,
                      width: SizeConfig.screenWidth,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Container(
                              width: 80,
                              height: 7,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Registrasi",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffC43D39),
                                fontWeight: FontWeight.w700),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child:
                                            Icon(Icons.home_rounded, size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Indihome",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(Icons.shopping_cart_rounded,
                                            size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Add-on",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(Icons.access_time_rounded,
                                            size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Orbit",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(Icons.grid_view, size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Halo",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child:
                                            Icon(Icons.wifi_rounded, size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "WMS",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(Icons.blur_circular_rounded,
                                            size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Offline",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(Icons.note_add_rounded,
                                            size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Prospek",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: SizeConfig.blockVertical * 20,
                      width: SizeConfig.screenWidth,
                      padding: EdgeInsets.all(20),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Monitoring",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffC43D39),
                                fontWeight: FontWeight.w700),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child:
                                            Icon(Icons.note_rounded, size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Order PSB",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(Icons.shopping_cart_rounded,
                                            size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Add-on",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(Icons.access_time_rounded,
                                            size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Orbit",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(Icons.track_changes_rounded,
                                            size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Retargeting",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: SizeConfig.blockVertical * 20,
                      width: SizeConfig.screenWidth,
                      padding: EdgeInsets.all(20),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Produktivitas",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffC43D39),
                                fontWeight: FontWeight.w700),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(Icons.access_time_rounded,
                                            size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Presensi",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(Icons.shopping_bag_rounded,
                                            size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Poin Reward",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(
                                            Icons.directions_car_rounded,
                                            size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Ganti Mobil",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(Icons.pie_chart_rounded,
                                            size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Laporan",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: SizeConfig.blockVertical * 20,
                      width: SizeConfig.screenWidth,
                      padding: EdgeInsets.all(20),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Downline",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffC43D39),
                                fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(
                                            Icons.person_add_alt_1_rounded,
                                            size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Tambah",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(Icons.insert_chart_rounded,
                                            size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "List Downline",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child:
                                            Icon(Icons.group_rounded, size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Approval",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: SizeConfig.blockVertical * 30,
                      width: SizeConfig.screenWidth,
                      padding: EdgeInsets.all(20),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Lainnya",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffC43D39),
                                fontWeight: FontWeight.w700),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child:
                                            Icon(Icons.help_rounded, size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Bantuan",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(Icons.menu_book_rounded,
                                            size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Inbox Prospek",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(Icons.location_on_rounded,
                                            size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Micro Demand",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: SizeConfig.blockVertical * 10,
                                width: SizeConfig.blockHorizontal * 18,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment(0, -0.5),
                                      child: InkWell(
                                        child: Icon(
                                            Icons.bookmark_border_rounded,
                                            size: 30),
                                        onTap: () {},
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 1),
                                      child: Text(
                                        "Catatan",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _onButtonTarget() {
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
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      "Targetkan pendapatan secara maksimal.",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffC43D39),
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 15),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.chat_rounded),
                        title: Text(
                          "Ubah target pendapatan PSB",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        subtitle: Text(
                          "Rp 5.000.000,-",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffC43D39),
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_rounded,
                          color: Color(0xffC43D39),
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(height: 15),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.error_outline_rounded),
                        title: Text(
                          "Ubah target pendapatan Add-on",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        subtitle: Text(
                          "Rp 5.000.000,-",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffC43D39),
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_rounded,
                          color: Color(0xffC43D39),
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(height: 25),
                  ],
                ),
              ),
            ],
          );
        });
  }

  void _onButtonRegistrasi() {
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
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Registrasi",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffC43D39),
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: SizeConfig.blockVertical * 10,
                          width: SizeConfig.blockHorizontal * 18,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment(0, -0.5),
                                child: InkWell(
                                  child: Icon(Icons.home_rounded, size: 30),
                                  onTap: () {},
                                ),
                              ),
                              Align(
                                alignment: Alignment(0, 1),
                                child: Text(
                                  "Indihome",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: SizeConfig.blockVertical * 10,
                          width: SizeConfig.blockHorizontal * 18,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment(0, -0.5),
                                child: InkWell(
                                  child: Icon(Icons.shopping_cart_rounded,
                                      size: 30),
                                  onTap: () {},
                                ),
                              ),
                              Align(
                                alignment: Alignment(0, 1),
                                child: Text(
                                  "Add-on",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: SizeConfig.blockVertical * 10,
                          width: SizeConfig.blockHorizontal * 18,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment(0, -0.5),
                                child: InkWell(
                                  child:
                                      Icon(Icons.access_time_rounded, size: 30),
                                  onTap: () {},
                                ),
                              ),
                              Align(
                                alignment: Alignment(0, 1),
                                child: Text(
                                  "Orbit",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: SizeConfig.blockVertical * 10,
                          width: SizeConfig.blockHorizontal * 18,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment(0, -0.5),
                                child: InkWell(
                                  child: Icon(Icons.grid_view, size: 30),
                                  onTap: () {},
                                ),
                              ),
                              Align(
                                alignment: Alignment(0, 1),
                                child: Text(
                                  "Halo",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          height: SizeConfig.blockVertical * 10,
                          width: SizeConfig.blockHorizontal * 18,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment(0, -0.5),
                                child: InkWell(
                                  child: Icon(Icons.wifi_rounded, size: 30),
                                  onTap: () {},
                                ),
                              ),
                              Align(
                                alignment: Alignment(0, 1),
                                child: Text(
                                  "WMS",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          height: SizeConfig.blockVertical * 10,
                          width: SizeConfig.blockHorizontal * 18,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment(0, -0.5),
                                child: InkWell(
                                  child: Icon(Icons.blur_circular_rounded,
                                      size: 30),
                                  onTap: () {},
                                ),
                              ),
                              Align(
                                alignment: Alignment(0, 1),
                                child: Text(
                                  "Offline",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          height: SizeConfig.blockVertical * 10,
                          width: SizeConfig.blockHorizontal * 18,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment(0, -0.5),
                                child: InkWell(
                                  child: Icon(Icons.note_add_rounded, size: 30),
                                  onTap: () {},
                                ),
                              ),
                              Align(
                                alignment: Alignment(0, 1),
                                child: Text(
                                  "Prospek",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15)
                  ],
                ),
              ),
            ],
          );
        });
  }

  void _onButtonMonitoring() {
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
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Monitoring",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffC43D39),
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: SizeConfig.blockVertical * 10,
                          width: SizeConfig.blockHorizontal * 18,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment(0, -0.5),
                                child: InkWell(
                                  child: Icon(Icons.note_rounded, size: 30),
                                  onTap: () {},
                                ),
                              ),
                              Align(
                                alignment: Alignment(0, 1),
                                child: Text(
                                  "Order PSB",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: SizeConfig.blockVertical * 10,
                          width: SizeConfig.blockHorizontal * 18,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment(0, -0.5),
                                child: InkWell(
                                  child: Icon(Icons.shopping_cart_rounded,
                                      size: 30),
                                  onTap: () {},
                                ),
                              ),
                              Align(
                                alignment: Alignment(0, 1),
                                child: Text(
                                  "Add-on",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: SizeConfig.blockVertical * 10,
                          width: SizeConfig.blockHorizontal * 18,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment(0, -0.5),
                                child: InkWell(
                                  child:
                                      Icon(Icons.access_time_rounded, size: 30),
                                  onTap: () {},
                                ),
                              ),
                              Align(
                                alignment: Alignment(0, 1),
                                child: Text(
                                  "Orbit",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: SizeConfig.blockVertical * 10,
                          width: SizeConfig.blockHorizontal * 18,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment(0, -0.5),
                                child: InkWell(
                                  child: Icon(Icons.track_changes_rounded,
                                      size: 30),
                                  onTap: () {},
                                ),
                              ),
                              Align(
                                alignment: Alignment(0, 1),
                                child: Text(
                                  "Retargeting",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15)
                  ],
                ),
              ),
            ],
          );
        });
  }
}
