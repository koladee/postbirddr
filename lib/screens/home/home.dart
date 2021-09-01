import 'package:postbird/screens/account/account.dart';
import 'package:postbird/screens/activity/activity.dart';
import 'package:postbird/screens/home/home_page.dart';
import 'package:postbird/screens/inbox/inbox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 170, 0, 0),
              child: Container(
                width: 410,
                height: 800,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Image(
                      height: 240,
                      width: 240,
                      image: AssetImage(
                        'assets/Rectangle.png',
                      ),
                    ),
                    Text(
                      'No Activity',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Create some order for you ?',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.aBeeZee(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 240,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Stack(children: <Widget>[
                          Positioned(
                            top: 10,
                            bottom: 10,
                            left: 0,
                            child: Container(
                              width: 240,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(
                                  0xFFFEBC52,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(
                                          107, 103, 210, 0.3499999940395355),
                                      offset: Offset(0, 18),
                                      blurRadius: 40),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  width: 240,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                    color: Color(
                                      0xFFFEBC52,
                                    ),
                                  ))),
                          Positioned(
                              top: 13,
                              left: 61,
                              child: Text(
                                'Send a Package',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'aBeeZee',
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                        ]))
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.07999999821186066),
                        offset: Offset(0, 18),
                        blurRadius: 40)
                  ],
                  color: Color.fromRGBO(250, 250, 250, 1),
                ),
              ),
            ),
            Positioned(
              top: 42,
              left: 16,
              child: Container(
                width: 159,
                height: 45,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Text(
                        '5000 Points',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.aBeeZee(
                            color: Color.fromRGBO(70, 70, 70, 1),
                            fontSize: 22,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w700,
                            height: 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 24,
              left: 170,
              child: Container(
                  width: 160,
                  height: 48,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 160,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              border: Border.all(
                                color: Color.fromRGBO(222, 222, 222, 1),
                                width: 1,
                              ),
                            ))),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 160,
                        height: 48,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFDEDEDE),
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 13,
                        left: 28,
                        child: Container(
                            width: 108,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 5,
                                left: 20,
                                child: Text(
                                  'Track Order',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.aBeeZee(
                                      color: Color.fromRGBO(27, 27, 27, 1),
                                      fontSize: 16,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w500,
                                      height: 1),
                                ),
                              ),
                              Positioned(
                                top: 3,
                                left: 0,
                                child: Image(
                                  image: AssetImage(
                                    'assets/edit-2.png',
                                  ),
                                ),
                              ),
                            ]))),
                  ])),
            )
          ],
        ),
      ),
    );
  }
}

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    Activity(),
    Inbox(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFFEBC52),
        unselectedItemColor: Color(0xFFC3C3C3),
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home_icon.png',
              height: 50,
              color: Color(0xFFC3C3C3),
            ),
            activeIcon: Image.asset(
              'assets/home_icon.png',
              height: 50,
              color: Color(0xFFFEBC52),
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/activity_icon.png',
              height: 50,
              color: Color(0xFFC3C3C3),
            ),
            activeIcon: Image.asset(
              'assets/activity_icon.png',
              height: 50,
              color: Color(0xFFFEBC52),
            ),
            label: 'activity',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/message_icon.png',
              height: 50,
              color: Color(0xFFC3C3C3),
            ),
            activeIcon: Image.asset(
              'assets/message_icon.png',
              height: 50,
              color: Color(0xFFFEBC52),
            ),
            label: 'messages',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/account_icon.png',
              height: 50,
              color: Color(0xFFC3C3C3),
            ),
            activeIcon: Image.asset(
              'assets/account_icon.png',
              height: 50,
              color: Color(0xFFFEBC52),
            ),
            label: 'account',
          ),
        ],
      ),
    );
  }

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
