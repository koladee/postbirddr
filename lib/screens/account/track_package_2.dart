import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackPackage2 extends StatefulWidget {
  @override
  _TrackPackage2State createState() => _TrackPackage2State();
}

class _TrackPackage2State extends State<TrackPackage2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(
        0xFFE8E8E8,
      ),
      appBar: AppBar(
        title: Text(
          'Track Order',
          style: GoogleFonts.aBeeZee(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color(
              0xFF000000,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(
          0xFFE8E8E8,
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(
              0xFF000000,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
            top: 40,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                  20,
                  10,
                  20,
                  10,
                ),
                child: Container(
                  padding: EdgeInsets.only(
                    top: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tracking Code',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(
                            0xFF1B1B1B,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
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
                            suffixIcon: Image(
                              color: Color(
                                0xFFFEBC52,
                              ),
                              height: 25,
                              width: 25,
                              image: AssetImage(
                                'assets/maximize.png,',
                              ),
                            ),
                            hintText: 'ex. BXI-2314312',
                            hintStyle: GoogleFonts.aBeeZee(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[700],
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  10,
                  30,
                  10,
                  10,
                ),
                child: Text(
                  'Recent Code',
                  style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color(
                      0xFF000000,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                ),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '3 38 41 43 34 25',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(
                            0xFF000000,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                ),
                child: Container(
                  height: 2,
                  width: width / 1.1,
                  color: Color(
                    0xFFE2E2E2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                ),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '38 10 23 44 42 6',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(
                            0xFF000000,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                ),
                child: Container(
                  height: 2,
                  width: width / 1.1,
                  color: Color(
                    0xFFE2E2E2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
