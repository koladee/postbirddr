import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Positioned(
                  left: 165,
                  top: 40,
                  child: Image(
                    image: AssetImage('assets/Group.png'),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 30,
                  child: Image(
                    height: 15,
                    width: 15,
                    image: AssetImage('assets/1 Right Icon.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 640,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 170,
                        ),
                        Container(
                          width: 335,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 335,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          topRight: Radius.circular(6),
                                          bottomLeft: Radius.circular(6),
                                          bottomRight: Radius.circular(6),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.07999999821186066),
                                              offset: Offset(0, 18),
                                              blurRadius: 40)
                                        ],
                                        color: Color(0xFFFAFAFA),
                                      ))),
                              Positioned(
                                  top: 29,
                                  left: 251,
                                  child: Container(
                                      width: 84,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 84,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(6),
                                                    topRight:
                                                        Radius.circular(6),
                                                    bottomLeft:
                                                        Radius.circular(6),
                                                    bottomRight:
                                                        Radius.circular(6),
                                                  ),
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  border: Border.all(
                                                    color: Color.fromRGBO(
                                                        254, 188, 82, 1),
                                                    width: 1,
                                                  ),
                                                ))),
                                        Positioned(
                                            top: 10,
                                            left: 24.762500762939453,
                                            child: Text(
                                              'Track',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.aBeeZee(
                                                  color: Color.fromRGBO(0, 0, 0,
                                                      0.6000000238418579),
                                                  fontSize: 14,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]))),
                              Positioned(
                                  top: 9,
                                  left: 14,
                                  child: Text(
                                    'Postbird is delivering your package',
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(
                                            0, 0, 0, 0.6000000238418579),
                                        fontSize: 14,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w400,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 62,
                                  left: 158,
                                  child: Text(
                                    'ETA 02:12 PM',
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(
                                            0, 0, 0, 0.3499999940395355),
                                        fontSize: 10,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w400,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 62,
                                  left: 14,
                                  child: Text(
                                    'David',
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(
                                            0, 0, 0, 0.3499999940395355),
                                        fontSize: 10,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w400,
                                        height: 1),
                                  )),
                              Positioned(
                                top: 44,
                                left: 14,
                                child: Container(
                                  width: 205,
                                  height: 14,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: 5,
                                          left: 0,
                                          child: Container(
                                              width: 205,
                                              height: 6,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(2.5),
                                                  topRight:
                                                      Radius.circular(2.5),
                                                  bottomLeft:
                                                      Radius.circular(2.5),
                                                  bottomRight:
                                                      Radius.circular(2.5),
                                                ),
                                                color: Color.fromRGBO(255, 255,
                                                    255, 0.7599999904632568),
                                              ))),
                                      Positioned(
                                          top: 5,
                                          left: 0,
                                          child: Container(
                                              width: 100,
                                              height: 6,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(2.5),
                                                  topRight:
                                                      Radius.circular(2.5),
                                                  bottomLeft:
                                                      Radius.circular(2.5),
                                                  bottomRight:
                                                      Radius.circular(2.5),
                                                ),
                                                gradient: LinearGradient(
                                                    begin: Alignment(
                                                        -2.1872713565826416, 0),
                                                    end: Alignment(
                                                        0, -2.1872713565826416),
                                                    colors: [
                                                      Color.fromRGBO(
                                                          180,
                                                          176,
                                                          254,
                                                          0.6700000166893005),
                                                      Color.fromRGBO(
                                                          152,
                                                          147,
                                                          244,
                                                          0.6700000166893005)
                                                    ]),
                                              ))),
                                      Positioned(
                                        top: 0,
                                        left: 93,
                                        child: Container(
                                            width: 14,
                                            height: 14,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 1.3378305435180664,
                                                  left: 0.679410457611084,
                                                  child: Image(
                                                    width: 15,
                                                    height: 13,
                                                    image: AssetImage(
                                                      'assets/Path.png',
                                                    ),
                                                  )),
                                            ])),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 140,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/start_shipment');
                          },
                          child: Container(
                            width: 240,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(
                              children: <Widget>[
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
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromRGBO(107, 103, 210,
                                                0.3499999940395355),
                                            offset: Offset(0, 18),
                                            blurRadius: 40)
                                      ],
                                      color: Color.fromRGBO(254, 188, 82, 1),
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
                                      color: Color(0xFFFEBC52),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    top: 18,
                                    left: 61,
                                    child: Center(
                                      child: Text(
                                        'Send a Package',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.aBeeZee(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontSize: 16,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          width: 335,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Color(0xFFFBD351),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 0,
                              left: 20,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Text(
                                      'Postbird Business',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.aBeeZee(
                                          color: Color.fromRGBO(
                                              0, 0, 0, 0.6000000238418579),
                                          fontSize: 14,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w700,
                                          height: 1),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'We can help your business',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.aBeeZee(
                                          color: Color.fromRGBO(
                                              0, 0, 0, 0.3499999940395355),
                                          fontSize: 12,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w400,
                                          height: 1),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Image(
                                  height: 103,
                                  width: 132,
                                  image: AssetImage(
                                    'assets/Group 11.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
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
                          blurRadius: 40,
                        ),
                      ],
                      color: Color.fromRGBO(250, 250, 250, 1),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  right: 37.5,
                  left: 37.5,
                  child: Center(
                    child: Container(
                      width: 335,
                      height: 98,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 0,
                            bottom: 0,
                            left: 0,
                            child: Container(
                              width: 335,
                              height: 98,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(
                                        0, 0, 0, 0.07999999821186066),
                                    offset: Offset(0, 18),
                                    blurRadius: 40,
                                  )
                                ],
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 20,
                              left: 16,
                              child: Container(
                                  width: 63,
                                  height: 17,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                      top: 0,
                                      bottom: 0,
                                      left: 14,
                                      child: Text(
                                        'Rewards',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.aBeeZee(
                                            color:
                                                Color.fromRGBO(70, 70, 70, 1),
                                            fontSize: 12,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.w700,
                                            height: 1),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      bottom: 5,
                                      left: 0,
                                      child: Image(
                                        image: AssetImage(
                                          'assets/pocket.png',
                                        ),
                                      ),
                                    ),
                                  ]))),
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
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            border: Border.all(
                                              color: Color.fromRGBO(
                                                  222, 222, 222, 1),
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
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                              top: 5,
                                              left: 20,
                                              child: Text(
                                                'Track Order',
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.aBeeZee(
                                                    color: Color.fromRGBO(
                                                        27, 27, 27, 1),
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
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
