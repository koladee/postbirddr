import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewOrder extends StatefulWidget {
  @override
  _ReviewOrderState createState() => _ReviewOrderState();
}

class _ReviewOrderState extends State<ReviewOrder> {
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
                  height: 1,
                ),
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
                        child: Container(
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
                                    style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(0, 0, 0, 1),
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
                                    style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(0, 0, 0, 1),
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
                                        color: Color.fromRGBO(227, 227, 227, 1),
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
                                              color: Color.fromRGBO(107, 103,
                                                  210, 0.3499999940395355),
                                              offset: Offset(0, 18),
                                              blurRadius: 40)
                                        ],
                                        color: Color.fromRGBO(233, 233, 233, 1),
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
                                              color: Color.fromRGBO(107, 103,
                                                  210, 0.3499999940395355),
                                              offset: Offset(0, 18),
                                              blurRadius: 40)
                                        ],
                                        color: Color.fromRGBO(254, 188, 82, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(16, 16)),
                                      ))),
                              Positioned(
                                  top: 34,
                                  left: 246.5,
                                  child: Text(
                                    'Review Order',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(0, 0, 0, 1),
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
                                              color: Color.fromRGBO(107, 103,
                                                  210, 0.3499999940395355),
                                              offset: Offset(0, 18),
                                              blurRadius: 40)
                                        ],
                                        color: Color.fromRGBO(233, 233, 233, 1),
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
                                              color: Color.fromRGBO(107, 103,
                                                  210, 0.3499999940395355),
                                              offset: Offset(0, 18),
                                              blurRadius: 40)
                                        ],
                                        color: Color.fromRGBO(254, 188, 82, 1),
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
                                              color: Color.fromRGBO(107, 103,
                                                  210, 0.3499999940395355),
                                              offset: Offset(0, 18),
                                              blurRadius: 40)
                                        ],
                                        color: Color.fromRGBO(233, 233, 233, 1),
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
                                              color: Color.fromRGBO(107, 103,
                                                  210, 0.3499999940395355),
                                              offset: Offset(0, 18),
                                              blurRadius: 40)
                                        ],
                                        color: Color.fromRGBO(254, 188, 82, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(16, 16)),
                                      ))),
                            ]))),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Shipper',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.aBeeZee(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 14,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w700,
                          height: 1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 91,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        color: Color(0xFFFFFFFF),
                        border: Border.all(
                          color: Color.fromRGBO(227, 227, 227, 1),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 5,
                            ),
                            child: Image(
                              image: AssetImage(
                                'assets/Path.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Center(
                              child: Container(
                                  width: 271,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 21,
                                        left: 0,
                                        child: Text(
                                          '24 Adetokunbo Ademola Street, Victoria \nIsland, Lagos',
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.aBeeZee(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.3499999940395355),
                                              fontSize: 14,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        )),
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Text(
                                        'Kitani Sarasvati',
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.aBeeZee(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontSize: 14,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w700,
                                          height: 1,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        top: 0,
                                        left: 111,
                                        child: Text(
                                          '|',
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.aBeeZee(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.3499999940395355),
                                              fontSize: 14,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 121,
                                        child: Text(
                                          '+234 81 855 48839',
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.aBeeZee(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.6000000238418579),
                                              fontSize: 14,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        )),
                                  ])),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Recipient',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.aBeeZee(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 14,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w700,
                          height: 1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 91,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              width: 370,
                              height: 91,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                ),
                                color: Color(0xFFFFFFF),
                                border: Border.all(
                                  color: Color.fromRGBO(227, 227, 227, 1),
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 16,
                            left: 35,
                            child: Container(
                              width: 303,
                              height: 59,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                      top: 15,
                                      left: 0,
                                      child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            ),
                                            color: Color.fromRGBO(
                                                125, 224, 200, 1),
                                          ))),
                                  Positioned(
                                    top: 0,
                                    left: 32,
                                    child: Container(
                                      width: 271,
                                      height: 59,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 21,
                                              left: 0,
                                              child: Text(
                                                '80 Adetokunbo Ademola Street, Victoria \nIsland, Lagos',
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.aBeeZee(
                                                    color: Color.fromRGBO(0, 0,
                                                        0, 0.3499999940395355),
                                                    fontSize: 14,
                                                    letterSpacing: 0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Text(
                                                'Jonathan',
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.aBeeZee(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    fontSize: 14,
                                                    letterSpacing: 0,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 0,
                                              left: 69,
                                              child: Text(
                                                '|',
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.aBeeZee(
                                                    color: Color.fromRGBO(0, 0,
                                                        0, 0.3499999940395355),
                                                    fontSize: 14,
                                                    letterSpacing: 0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                            top: 0,
                                            left: 77,
                                            child: Text(
                                              '+234 81 305 48839',
                                              textAlign: TextAlign.left,
                                              style: GoogleFonts.aBeeZee(
                                                  color: Color.fromRGBO(0, 0, 0,
                                                      0.6000000238418579),
                                                  fontSize: 14,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Package Information',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.aBeeZee(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w700,
                        height: 1,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 91,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        color: Color(0xFFFFFFF),
                        border: Border.all(
                          color: Color.fromRGBO(227, 227, 227, 1),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0),
                            child: Image(
                              image: AssetImage('assets/box.png'),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Customer Message',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.aBeeZee(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Document and toys \nplease be aware. thx',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(
                                        0, 0, 0, 0.3499999940395355),
                                    fontSize: 14,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w400,
                                    height: 1),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Divider(
                      color: Color(
                        0xFFE5E5E5,
                      ),
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 101,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 2,
                            left: 0,
                            child: Text(
                              'Delivery',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.aBeeZee(
                                  color: Color.fromRGBO(70, 70, 70, 1),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                            top: 36,
                            left: 0,
                            child: Text(
                              'Shipping Assurance',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.aBeeZee(
                                  color: Color.fromRGBO(70, 70, 70, 1),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                            top: 68,
                            left: 0,
                            child: Container(
                                width: 400,
                                height: 33,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 7,
                                      left: 0,
                                      child: Text(
                                        'Subtotal',
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.aBeeZee(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontSize: 14,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.w700,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 0,
                                      left: 263,
                                      child: Text(
                                        '₦1042.23',
                                        textAlign: TextAlign.right,
                                        style: GoogleFonts.aBeeZee(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontSize: 24,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.w700,
                                            height: 1),
                                      )),
                                ]))),
                        Positioned(
                            top: 0,
                            left: 298,
                            child: Text(
                              '₦1040.23',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.aBeeZee(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                            top: 34,
                            left: 348,
                            child: Text(
                              '\$2',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.aBeeZee(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                      ]),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
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
                          'Create Order',
                          style: GoogleFonts.aBeeZee(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
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
                        blurRadius: 40)
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
