import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Recipient extends StatefulWidget {
  @override
  _RecipientState createState() => _RecipientState();
}

class _RecipientState extends State<Recipient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                'Create Order',
                textAlign: TextAlign.center,
                style: GoogleFonts.aBeeZee(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 18,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w600,
                    height: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                width: 410,
                height: 900,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: // Figma Flutter Generator Group2Widget - FRAME
                            Container(
                                width: 311,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 34,
                                      left: 0,
                                      child: Text(
                                        'Shipment Form',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'aBeeZee',
                                            fontSize: 10,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 34,
                                      left: 122,
                                      child: Text(
                                        'Recipient Form',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'aBeeZee',
                                            fontSize: 10,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 14,
                                      left: 37,
                                      child: Container(
                                          width: 241,
                                          height: 1,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                227, 227, 227, 1),
                                          ))),
                                  Positioned(
                                      top: 0,
                                      left: 144,
                                      child: Container(
                                          width: 26,
                                          height: 26,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Color.fromRGBO(
                                                      107,
                                                      103,
                                                      210,
                                                      0.3499999940395355),
                                                  offset: Offset(0, 18),
                                                  blurRadius: 40)
                                            ],
                                            color: Color.fromRGBO(
                                                233, 233, 233, 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(26, 26)),
                                          ))),
                                  Positioned(
                                      top: 5,
                                      left: 149,
                                      child: Container(
                                          width: 16,
                                          height: 16,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Color.fromRGBO(
                                                      107,
                                                      103,
                                                      210,
                                                      0.3499999940395355),
                                                  offset: Offset(0, 18),
                                                  blurRadius: 40)
                                            ],
                                            color:
                                                Color.fromRGBO(254, 188, 82, 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(16, 16)),
                                          ))),
                                  Positioned(
                                      top: 34,
                                      left: 246.5,
                                      child: Text(
                                        'Review Order',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(70, 70, 70, 1),
                                            fontFamily: 'aBeeZee',
                                            fontSize: 10,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 0,
                                      left: 265,
                                      child: Container(
                                          width: 26,
                                          height: 26,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Color.fromRGBO(
                                                      107,
                                                      103,
                                                      210,
                                                      0.3499999940395355),
                                                  offset: Offset(0, 18),
                                                  blurRadius: 40)
                                            ],
                                            color: Color.fromRGBO(
                                                233, 233, 233, 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(26, 26)),
                                          ))),
                                  Positioned(
                                      top: 5,
                                      left: 270,
                                      child: Container(
                                          width: 16,
                                          height: 16,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Color.fromRGBO(
                                                      107,
                                                      103,
                                                      210,
                                                      0.3499999940395355),
                                                  offset: Offset(0, 18),
                                                  blurRadius: 40)
                                            ],
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(16, 16)),
                                          ))),
                                  Positioned(
                                      top: 0,
                                      left: 23,
                                      child: Container(
                                          width: 26,
                                          height: 26,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Color.fromRGBO(
                                                      107,
                                                      103,
                                                      210,
                                                      0.3499999940395355),
                                                  offset: Offset(0, 18),
                                                  blurRadius: 40)
                                            ],
                                            color: Color.fromRGBO(
                                                233, 233, 233, 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(26, 26)),
                                          ))),
                                  Positioned(
                                      top: 5,
                                      left: 28,
                                      child: Container(
                                          width: 16,
                                          height: 16,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Color.fromRGBO(
                                                      107,
                                                      103,
                                                      210,
                                                      0.3499999940395355),
                                                  offset: Offset(0, 18),
                                                  blurRadius: 40)
                                            ],
                                            color:
                                                Color.fromRGBO(254, 188, 82, 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(16, 16)),
                                          ))),
                                ]))),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Recipient Name',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.aBeeZee(
                          color: Color.fromRGBO(27, 27, 27, 1),
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Full Name',
                        hintStyle: GoogleFonts.aBeeZee(
                            color: Color.fromRGBO(27, 27, 27, 1),
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color(
                              0xFFDEDEDE,
                            ),
                          ),
                        ),
                        labelStyle: GoogleFonts.aBeeZee(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(
                            0xFF1B1B1B,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color(
                              0xFFFEBC52,
                            ),
                          ),
                        ),
                        suffixIcon: Icon(
                          Icons.check,
                          color: Color(
                            0xFF05944F,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Address',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.aBeeZee(
                          color: Color.fromRGBO(27, 27, 27, 1),
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Shipping Destination',
                        hintStyle: GoogleFonts.aBeeZee(
                            color: Color.fromRGBO(27, 27, 27, 1),
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color(
                              0xFFDEDEDE,
                            ),
                          ),
                        ),
                        labelStyle: GoogleFonts.aBeeZee(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(
                            0xFF1B1B1B,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color(
                              0xFFFEBC52,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Postal Zip',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.aBeeZee(
                          color: Color.fromRGBO(27, 27, 27, 1),
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'XXXXX',
                        hintStyle: GoogleFonts.aBeeZee(
                            color: Color.fromRGBO(27, 27, 27, 1),
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color(
                              0xFFDEDEDE,
                            ),
                          ),
                        ),
                        labelStyle: GoogleFonts.aBeeZee(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(
                            0xFF1B1B1B,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color(
                              0xFFFEBC52,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Phone Number',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.aBeeZee(
                          color: Color.fromRGBO(27, 27, 27, 1),
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(
                                0xFFDEDEDE,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: 92,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 5,
                                ),
                                child: Image(
                                  width: 42,
                                  height: 26,
                                  image: AssetImage(
                                    'assets/Image2.png',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 236,
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Color(
                                    0xFFDEDEDE,
                                  ),
                                ),
                              ),
                              prefixText: '+234   ',
                              prefixStyle: GoogleFonts.aBeeZee(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(
                                  0xFF1B1B1B,
                                ),
                              ),
                              labelStyle: GoogleFonts.aBeeZee(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(
                                  0xFF1B1B1B,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Color(
                                    0xFFFEBC52,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
