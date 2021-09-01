import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'home_online-booking_detail-to_pick_up-full.dart';

class HomeOnlineBookingDetailsGoToPickUp extends StatefulWidget {
   final fromad;
  final toad;
  final latf;
  final lonf;
  final latto;
  final longto;
  final LatLngBounds bound;
  final Set<Polyline> polylines;
  final List<LatLng> polylineCoordinates;
  final notes;
  final amt;
  const HomeOnlineBookingDetailsGoToPickUp({
    Key key,
    this.fromad,
    this.toad,
    this.latf,
    this.lonf,
    this.latto,
    this.longto,
    this.bound,
    this.polylines,
    this.polylineCoordinates,
    this.notes,
    this.amt,
  }) : super(key: key);
  @override
  _HomeOnlineBookingDetailsGoToPickUpState createState() =>
      _HomeOnlineBookingDetailsGoToPickUpState();
}

class _HomeOnlineBookingDetailsGoToPickUpState
    extends State<HomeOnlineBookingDetailsGoToPickUp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(
        0xFFF7F8FA,
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(
            0xFFFEBC52,
          ),
        ),
        title: Text(
          'Pick up',
          style: GoogleFonts.aBeeZee(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Color(
              0xFF242A37,
            ),
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(
          0xFFFFFFFF,
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            height: 45,
            width: width,
            color: Color(
              0xFFFEBC52,
            ),
            child: Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/left_arrow.png',
                        height: 20,
                        width: 15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '250m',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text('Turn right at 105 William St, Chicago, US ',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 45,
            ),
            child: Image.asset(
              'assets/maps.png',
              fit: BoxFit.cover,
              width: width,
            ),
          ),
          Positioned(
            top: height * 0.55,
            left: width * 0.28,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orangeAccent,
              ),
            ),
          ),
          Positioned(
            top: height * 0.2,
            left: width * 0.47,
            child: Image.asset(
              'assets/navigation.png',
              height: 400,
              width: 200,
            ),
          ),
          Positioned(
            top: height * 0.63,
            left: width * 0.45,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                color: Colors.orangeAccent,
              ),
              child: Center(
                child: Image.asset(
                  'assets/navigator.png',
                  width: 35,
                  height: 40,
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.35,
            right: width * 0.4,
            child: Image.asset(
              'assets/left_arrow.png',
              height: 30,
              width: 15,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.12,
            maxChildSize: 0.94,
            minChildSize: 0.12,
            builder: (context, controller) => ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[900],
                      blurRadius: 50,
                      offset: Offset(
                        -10,
                        -10,
                      ),
                    ),
                  ],
                ),
                child: ListView(
                  controller: controller,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 185,
                      ),
                      child: Container(
                        height: 4,
                        width: 10,
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      width: width,
                      height: height * 0.07,
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(
                                0xFFFEBC52,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'A',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Pick up at',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xFFBEC2CE,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                '7958 Swift Village',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xFF242A37,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: Container(
                        height: 1,
                        width: width,
                        color: Color(
                          0xFF242A37,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        right: 25,
                        left: 25,
                      ),
                      color: Colors.white,
                      width: width,
                      height: height * 0.16,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Est',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xFFBEC2CE,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      '5 mins',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Distance',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xFFBEC2CE,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      '2.2 Km',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Fare',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xFFBEC2CE,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      '\$25.00',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                '/history_details',
                              );
                            },
                            child: Container(
                              height: 45,
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(
                                  0xFFFEBC52,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'DROP OFF',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(
                                      0xFF262628,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: Container(
                        height: 1,
                        width: width,
                        color: Color(
                          0xFF242A37,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/up_arrow.png',
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Head shouth west on Madison St',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xFF242A37,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 13,
                                  color: Color(
                                    0xFFA3A6AF,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 5,
                          ),
                          child: Container(
                            width: width,
                            child: Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 12,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '18 miles',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 1,
                                        width: width * 0.65,
                                        color: Color(
                                          0xFF242A37,
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
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/left_sub_arrow.png',
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Turn left unto 4th Ave',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xFF242A37,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 13,
                                  color: Color(
                                    0xFFA3A6AF,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 5,
                          ),
                          child: Container(
                            width: width,
                            child: Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 12,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '12 miles',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 1,
                                        width: width * 0.65,
                                        color: Color(
                                          0xFF242A37,
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
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/right_sub_arrow.png',
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Turn right at 105th N Link Rd',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xFF242A37,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Pass by Executive Hotel Pacific (on the left)',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 13,
                                  color: Color(
                                    0xFFA3A6AF,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 5,
                          ),
                          child: Container(
                            width: width,
                            child: Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 12,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '40 miles',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 1,
                                        width: width * 0.65,
                                        color: Color(
                                          0xFF242A37,
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
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/right_sub_arrow.png',
                                height: 17,
                                width: 12,
                                color: Color(
                                  0xFFFEBC52,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Flexible(
                                child: Text(
                                  'Turn right at 105 William St, Chicago, US',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(
                                      0xFFFEBC52,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 13,
                                  color: Color(
                                    0xFFA3A6AF,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 5,
                          ),
                          child: Container(
                            width: width,
                            child: Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 12,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '250 miles',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 1,
                                        width: width * 0.65,
                                        color: Color(
                                          0xFF242A37,
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
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/up_arrow.png',
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Flexible(
                                child: Text(
                                  'Continue straight to stay on Vancouver',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(
                                      0xFF242A37,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Entering California',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 13,
                                  color: Color(
                                    0xFFA3A6AF,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 5,
                          ),
                          child: Container(
                            width: width,
                            child: Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 12,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '24 miles',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 1,
                                        width: width * 0.65,
                                        color: Color(
                                          0xFF242A37,
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
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
