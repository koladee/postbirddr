import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompleteActivity extends StatefulWidget {
  @override
  _CompleteActivityState createState() => _CompleteActivityState();
}

class _CompleteActivityState extends State<CompleteActivity> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(
                0xFFFAFAFA,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.only(
              right: 15,
              left: 20,
              top: 5,
              bottom: 10,
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: Text(
                    '22 Jun 2020',
                    style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Recieved',
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(
                                0xFF000000,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.check,
                            color: Colors.green[800],
                            size: 18,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Express',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(
                            0xFFFEBC52,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Destination',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.grey[500],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '113  Five Pointst, Daytona Beach, Florida, 32122',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(
                0xFFFAFAFA,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.only(
              right: 15,
              left: 20,
              top: 5,
              bottom: 10,
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: Text(
                    '22 Jun 2020',
                    style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Delivered',
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(
                                0xFF000000,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.check,
                            color: Colors.green[800],
                            size: 18,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Express',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(
                            0xFFFEBC52,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Destination',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.grey[500],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '113  Five Pointst, Daytona Beach, Florida, 32122',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
