import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackPackage1 extends StatefulWidget {
  @override
  _TrackPackage1State createState() => _TrackPackage1State();
}

class _TrackPackage1State extends State<TrackPackage1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(
        0xFFFEBC52,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 20,
                    ),
                    child: Container(
                      width: width / 1,
                      height: height / 1.135,
                      decoration: BoxDecoration(
                        color: Color(
                          0xFFEEEEEE,
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                      ),
                      padding: EdgeInsets.only(
                        top: 40,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: height / 1.085,
                        decoration: BoxDecoration(
                          color: Color(
                            0xFFFAFAFA,
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          ),
                        ),
                        padding: EdgeInsets.only(
                          top: 20,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                                left: 20,
                                bottom: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.close,
                                    ),
                                  ),
                                  Text(
                                    'Track Package',
                                    style: GoogleFonts.aBeeZee(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    '',
                                    style: GoogleFonts.aBeeZee(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 2,
                              color: Color(
                                0xFFE7E7E7,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                20,
                                25,
                                20,
                                20,
                              ),
                              child: Image(
                                image: AssetImage(
                                  'assets/search.png',
                                ),
                              ),
                            ),
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
                                      'Input Package I.D',
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
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide(
                                              color: Color(
                                                0xFFDEDEDE,
                                              ),
                                            ),
                                          ),
                                          suffixIcon: Icon(
                                            Icons.check,
                                            color: Color(
                                              0xFF05944F,
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
                                            borderRadius:
                                                BorderRadius.circular(8),
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
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Text(
                                'Example BX-567829AD',
                                style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.grey[500],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                20,
                                40,
                                20,
                                20,
                              ),
                              child: Container(
                                height: 60,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(
                                    0xFFFEBC52,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Track Package',
                                    style: GoogleFonts.aBeeZee(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(
                                        0xFFFFFFFF,
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
