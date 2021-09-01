import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartShipment extends StatefulWidget {
  @override
  _StartShipmentState createState() => _StartShipmentState();
}

class _StartShipmentState extends State<StartShipment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.blueAccent[100],
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Text(
                'map routing',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 60,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: Color(
                    0xFFFEBC52,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 20,
              left: 20,
              top: 650,
              bottom: 30,
            ),
            child: Container(
              padding: EdgeInsets.only(
                right: 20,
                left: 20,
                top: 15,
                bottom: 15,
              ),
              height: 155,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                        ),
                        child: Image(
                          height: 20,
                          width: 20,
                          image: AssetImage(
                            'assets/clock.png',
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/select_date');
                            },
                            child: Text(
                              'Select Date',
                              style: GoogleFonts.aBeeZee(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(
                                  0xFF1B1B1B,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 1,
                            color: Color(
                              0xFF464646,
                            ),
                            width: 300,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Container(
                      width: 1,
                      height: 15,
                      color: Color(
                        0xFF464646,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                        ),
                        child: Image(
                          height: 20,
                          width: 20,
                          image: AssetImage(
                            'assets/Path.png',
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/shipper_detail');
                            },
                            child: Text(
                              '24 Adetokunbo Ademola Street ......',
                              style: GoogleFonts.aBeeZee(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color(
                                  0xFF1B1B1B,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 1,
                            color: Color(
                              0xFF464646,
                            ),
                            width: 300,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Container(
                      width: 1,
                      height: 15,
                      color: Color(
                        0xFF464646,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 5,
                          right: 10,
                        ),
                        child: Image(
                          height: 20,
                          width: 20,
                          image: AssetImage(
                            'assets/circle.png',
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/recipient_detail');
                        },
                        child: Text(
                          'Put Destination',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(
                              0xFF1B1B1B,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
