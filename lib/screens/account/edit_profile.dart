import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
                                    'Edit Profile',
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
                              padding: const EdgeInsets.fromLTRB(
                                20,
                                20,
                                20,
                                10,
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                      'assets/sarasvati.png',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                      10,
                                      0,
                                      10,
                                      0,
                                    ),
                                    width: 150,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                        color: Color(
                                          0xFFDEDEDE,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.camera_alt_outlined,
                                          color: Color(
                                            0xFF1B1B1B,
                                          ),
                                        ),
                                        Text(
                                          'Upload Photo',
                                          style: GoogleFonts.aBeeZee(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(
                                              0xFF1B1B1B,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
                                      'Name',
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
                                          hintText: 'Kitani Sarasvati',
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
                                      'Email',
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
                                        keyboardType:
                                            TextInputType.emailAddress,
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
                                          hintText: 'kitani@mail.com',
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
                                      'Phone Number',
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
                                          prefix: Text(
                                            '+234  ',
                                            style: GoogleFonts.aBeeZee(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey[700],
                                            ),
                                          ),
                                          hintText: '56789',
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
                                      'Address',
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
                                          hintText:
                                              '4270  Benson Park Drive. YOUNG AMERI',
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
