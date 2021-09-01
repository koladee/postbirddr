import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:postbird/driver/alogin.dart';
import 'package:postbird/driver/login.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(
        0xFFF7F8FA,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                height: height * 0.8,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(
                          right: 40,
                          left: 30,
                        ),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(
                            0xFFFEBC52,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                bottom: 0,
                              ),
                              child: Center(
                                child: Image(
                                  height: 100,
                                  width: 100,
                                  image: AssetImage(
                                    'assets/Group.png',
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 20,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Sign up',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 35,
                                    color: Color(
                                      0xFF242A37,
                                    ),
                                    fontWeight: FontWeight.w600,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' with email and phone number',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 35,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                        fontWeight: FontWeight.w400,
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
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 30,
                          bottom: 20,
                          right: 20,
                          left: 20,
                        ),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(
                            0xFFFFFFFF,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Color(
                                        0xFFDEDEDE,
                                      ),
                                    ),
                                  ),
                                  hintText: 'name@example.com',
                                  hintStyle: GoogleFonts.aBeeZee(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[500],
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
                            SizedBox(
                              height: 20,
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
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                    ),
                                  ),
                                  width: 96,
                                  height: 62,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
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
                                Expanded(
                                  child: Container(
                                    width: 236,
                                    child: TextFormField(
                                      keyboardType: TextInputType.phone,
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(
                                          0xFF1B1B1B,
                                        ),
                                      ),
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(8),
                                            bottomRight: Radius.circular(8),
                                          ),
                                          borderSide: BorderSide(
                                            color: Color(
                                              0xFFDEDEDE,
                                            ),
                                          ),
                                        ),
                                        prefixText: '+234   ',
                                        prefixStyle: GoogleFonts.aBeeZee(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Color(
                                            0xFF1B1B1B,
                                          ),
                                        ),
                                        labelStyle: GoogleFonts.aBeeZee(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Color(
                                            0xFF1B1B1B,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(8),
                                            bottomRight: Radius.circular(8),
                                          ),
                                          borderSide: BorderSide(
                                            color: Color(
                                              0xFFFEBC52,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.1,
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(
                                  0xFF242A37,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  'SIGN UP',
                                  style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                    color: Color(
                                      0xFFFFFFFF,
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
              SizedBox(
                height: 80,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0xFF242A37,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (contect) {
                              return Login();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(
                            0xFF242A37,
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
      ),
    );
  }
}
