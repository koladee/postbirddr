import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount3 extends StatefulWidget {
  @override
  _CreateAccount3State createState() => _CreateAccount3State();
}

class _CreateAccount3State extends State<CreateAccount3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xFFFFFFFF,
      ),
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: Text(
          'Login',
          style: GoogleFonts.aBeeZee(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color(
              0xFF000000,
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(
          0xFFFFFFFF,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              'Please enter the 6 digits code that sent you at',
              style: GoogleFonts.aBeeZee(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(
                  0xFF464646,
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '+234 81-4567-535',
              style: GoogleFonts.aBeeZee(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(
                  0xFF464646,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                  width: 274,
                  height: 73,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 39,
                            height: 46,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 39,
                                      height: 46,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          topRight: Radius.circular(6),
                                          bottomLeft: Radius.circular(6),
                                          bottomRight: Radius.circular(6),
                                        ),
                                        color: Color.fromRGBO(255, 255, 255,
                                            0.00009999999747378752),
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(222, 222, 222, 1),
                                          width: 1,
                                        ),
                                      ))),
                              Positioned(
                                  top: 12,
                                  left: 16,
                                  child: Text(
                                    '1',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(27, 27, 27, 1),
                                        fontSize: 16,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    Positioned(
                        top: 0,
                        left: 47,
                        child: Container(
                            width: 39,
                            height: 46,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 39,
                                      height: 46,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          topRight: Radius.circular(6),
                                          bottomLeft: Radius.circular(6),
                                          bottomRight: Radius.circular(6),
                                        ),
                                        color: Color.fromRGBO(255, 255, 255,
                                            0.00009999999747378752),
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(222, 222, 222, 1),
                                          width: 1,
                                        ),
                                      ))),
                              Positioned(
                                  top: 12,
                                  left: 14.5,
                                  child: Text(
                                    '4',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(27, 27, 27, 1),
                                        fontSize: 16,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    Positioned(
                        top: 0,
                        left: 94,
                        child: Container(
                            width: 39,
                            height: 46,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 39,
                                      height: 46,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          topRight: Radius.circular(6),
                                          bottomLeft: Radius.circular(6),
                                          bottomRight: Radius.circular(6),
                                        ),
                                        color: Color.fromRGBO(255, 255, 255,
                                            0.00009999999747378752),
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(222, 222, 222, 1),
                                          width: 1,
                                        ),
                                      ))),
                              Positioned(
                                  top: 12,
                                  left: 14.5,
                                  child: Text(
                                    '2',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(27, 27, 27, 1),
                                        fontSize: 16,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    Positioned(
                        top: 0,
                        left: 141,
                        child: Container(
                            width: 39,
                            height: 46,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 39,
                                      height: 46,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          topRight: Radius.circular(6),
                                          bottomLeft: Radius.circular(6),
                                          bottomRight: Radius.circular(6),
                                        ),
                                        color: Color.fromRGBO(255, 255, 255,
                                            0.00009999999747378752),
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(222, 222, 222, 1),
                                          width: 1,
                                        ),
                                      ))),
                              Positioned(
                                  top: 12,
                                  left: 14.5,
                                  child: Text(
                                    '6',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(27, 27, 27, 1),
                                        fontSize: 16,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    Positioned(
                        top: 0,
                        left: 188,
                        child: Container(
                            width: 39,
                            height: 46,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 39,
                                      height: 46,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          topRight: Radius.circular(6),
                                          bottomLeft: Radius.circular(6),
                                          bottomRight: Radius.circular(6),
                                        ),
                                        color: Color.fromRGBO(255, 255, 255,
                                            0.00009999999747378752),
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(222, 222, 222, 1),
                                          width: 1,
                                        ),
                                      ))),
                              Positioned(
                                  top: 12,
                                  left: 14.5,
                                  child: Text(
                                    '8',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(27, 27, 27, 1),
                                        fontSize: 16,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    Positioned(
                        top: 0,
                        left: 235,
                        child: Container(
                            width: 39,
                            height: 46,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 39,
                                      height: 46,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          topRight: Radius.circular(6),
                                          bottomLeft: Radius.circular(6),
                                          bottomRight: Radius.circular(6),
                                        ),
                                        color: Color.fromRGBO(255, 255, 255,
                                            0.00009999999747378752),
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(222, 222, 222, 1),
                                          width: 1,
                                        ),
                                      ))),
                              Positioned(
                                  top: 12,
                                  left: 16,
                                  child: Text(
                                    '1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(27, 27, 27, 1),
                                        fontFamily: 'aBeeZee',
                                        fontSize: 16,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    Positioned(
                        top: 54,
                        left: 0,
                        child: Text(
                          ' ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(27, 27, 27, 1),
                              fontFamily: 'aBeeZee',
                              fontSize: 14,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ])),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Resend code in 0:48',
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                  color: Color.fromRGBO(0, 0, 0, 0.6000000238418579),
                  fontSize: 12,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
            SizedBox(
              height: 200,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign_up');
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(
                    0xFFFEBC52,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Confirm',
                    style: GoogleFonts.aBeeZee(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
