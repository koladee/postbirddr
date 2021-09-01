import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
                                    'Security',
                                    style: GoogleFonts.aBeeZee(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Save',
                                      style: GoogleFonts.aBeeZee(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                      ),
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
                                20,
                                20,
                                10,
                              ),
                              child: Container(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 5,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Current Password',
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
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          suffixIcon: Icon(
                                            Icons.visibility_outlined,
                                            color: Color(
                                              0xFF464646,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide(
                                              color: Color(
                                                0xFFDEDEDE,
                                              ),
                                            ),
                                          ),
                                          hintText: 'Current Password',
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
                              padding: EdgeInsets.fromLTRB(
                                20,
                                10,
                                20,
                                10,
                              ),
                              child: Container(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 5,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'New Password',
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
                                        keyboardType: TextInputType.text,
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
                                          hintText: 'New Password',
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
                              padding: EdgeInsets.fromLTRB(
                                20,
                                10,
                                20,
                                10,
                              ),
                              child: Container(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 5,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Confirm Password',
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
                                        keyboardType: TextInputType.text,
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
                                          hintText: 'Confirm Password',
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
