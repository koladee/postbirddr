import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(
        0xFFFEBC52,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
                top: 40,
                bottom: 15,
              ),
              child: Stack(
                children: [
                  Center(
                    child: Text(
                      'Account',
                      style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Color(
                          0xFFFFFFFF,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    child: GestureDetector(
                      child: Text(
                        'Logout',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
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
            Expanded(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.791,
                decoration: BoxDecoration(
                  color: Color(
                    0xFFFFFFFF,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        20,
                        50,
                        20,
                        10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height / 12,
                            width: width / 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image(
                              height: height / 12,
                              width: width / 5,
                              image: AssetImage(
                                'assets/sarasvati.png',
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              right: 16,
                              left: 16,
                              top: 5,
                              bottom: 5,
                            ),
                            height: height / 12,
                            width: width / 1.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(
                                0xFFFEBC52,
                              ),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Kitani Sarasvai',
                                    style: GoogleFonts.aBeeZee(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Color(
                                        0xFFFFFFFF,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        '/edit_profile',
                                      );
                                    },
                                    child: Text(
                                      'Edit Profile',
                                      style: GoogleFonts.aBeeZee(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                        color: Color(
                                          0xFFFFFFFF,
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        20,
                        15,
                        20,
                        10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height / 6,
                            width: width / 2.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Color(
                                  0xFFFAFAFA,
                                ),
                                width: 2,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '16',
                                  style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24,
                                    color: Color(
                                      0xFF464646,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Send Package',
                                  style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(
                                      0xFF464646,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: height / 6,
                            width: width / 2.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Color(
                                  0xFFFAFAFA,
                                ),
                                width: 2,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '4,212',
                                  style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24,
                                    color: Color(
                                      0xFF464646,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Points',
                                  style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(
                                      0xFF464646,
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
                      padding: EdgeInsets.only(
                        right: 20,
                        left: 20,
                        top: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image(
                                  height: 25,
                                  width: 25,
                                  image: AssetImage(
                                    'assets/Icon.png',
                                  ),
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Text(
                                  'Account Settings',
                                  style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(
                                      0xFF000000,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 24,
                        left: 20,
                      ),
                      child: Container(
                        height: 1,
                        width: width / 1.25,
                        color: Color(
                          0xFFE2E2E2,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 20,
                        left: 20,
                        top: 20,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/change_password');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image(
                                    height: 25,
                                    width: 25,
                                    image: AssetImage(
                                      'assets/Icon.png',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Text(
                                    'Security',
                                    style: GoogleFonts.aBeeZee(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(
                                        0xFF000000,
                                      ),
                                    ),
                                  ),
                                ],
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
                        left: 20,
                      ),
                      child: Container(
                        height: 1,
                        width: width / 1.25,
                        color: Color(
                          0xFFE2E2E2,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 20,
                        left: 20,
                        top: 20,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/notification');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image(
                                    height: 25,
                                    width: 25,
                                    image: AssetImage(
                                      'assets/Icon.png',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Text(
                                    'Notification',
                                    style: GoogleFonts.aBeeZee(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(
                                        0xFF000000,
                                      ),
                                    ),
                                  ),
                                ],
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
                        left: 20,
                      ),
                      child: Container(
                        height: 1,
                        width: width / 1.25,
                        color: Color(
                          0xFFE2E2E2,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 20,
                        left: 20,
                        top: 20,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/help');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image(
                                    height: 25,
                                    width: 25,
                                    image: AssetImage(
                                      'assets/Icon.png',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Text(
                                    'Help & FAQ',
                                    style: GoogleFonts.aBeeZee(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(
                                        0xFF000000,
                                      ),
                                    ),
                                  ),
                                ],
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
                        left: 20,
                      ),
                      child: Container(
                        height: 1,
                        width: width / 1.25,
                        color: Color(
                          0xFFE2E2E2,
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
    );
  }
}
