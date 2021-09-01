import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
                                    'Notification',
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
                                      '',
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
                                0,
                                20,
                                0,
                                10,
                              ),
                              child: Container(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        20,
                                        10,
                                        20,
                                        20,
                                      ),
                                      child: Text(
                                        'Order',
                                        style: GoogleFonts.aBeeZee(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Color(
                                            0xFF000000,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      color: Color(
                                        0xFFFAF7F2,
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                      width: double.infinity,
                                      height: 100,
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Your package is ready to pickup',
                                                style: GoogleFonts.aBeeZee(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                  color: Color(
                                                    0xFF000000,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'New',
                                                style: GoogleFonts.aBeeZee(
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 10,
                                                  color: Color(
                                                    0xFFFEBC52,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Order BX-71720 is already to pickup on 5:20 PM, Hi Kitani, please prepare your package thank you!',
                                            style: GoogleFonts.aBeeZee(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(
                                                0xFF000000,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        20,
                                        10,
                                        20,
                                        20,
                                      ),
                                      child: Text(
                                        'For you',
                                        style: GoogleFonts.aBeeZee(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Color(
                                            0xFF000000,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                      width: double.infinity,
                                      height: 100,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Congratulation, top up successfully.',
                                                style: GoogleFonts.aBeeZee(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: Colors.grey[700],
                                                ),
                                              ),
                                              Text(
                                                '1 days ago',
                                                style: GoogleFonts.aBeeZee(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 10,
                                                  color: Colors.grey[700],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Your transaction top up 50,00 is success',
                                            style: GoogleFonts.aBeeZee(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Colors.grey[500],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/update');
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20,
                                          vertical: 10,
                                        ),
                                        width: double.infinity,
                                        height: 100,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Update Announcement',
                                                  style: GoogleFonts.aBeeZee(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: Colors.grey[700],
                                                  ),
                                                ),
                                                Text(
                                                  '4 days ago',
                                                  style: GoogleFonts.aBeeZee(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 10,
                                                    color: Colors.grey[700],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Boxi version 2.1.8',
                                              style: GoogleFonts.aBeeZee(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Colors.grey[500],
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

class Update extends StatelessWidget {
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
                                    'Notification',
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
                                      '',
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
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  height: 180,
                                  width: double.infinity,
                                  child: Image(
                                    image: AssetImage(
                                      'assets/update_boxi.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                20,
                                30,
                                20,
                                0,
                              ),
                              child: Container(
                                child: Text(
                                  'Dear Kitani, \n\nWe’ve added a new Select All in Artboard command to the Edit menu so you can quickly grab all of the layers on any Artboard you’ve selected. We’ve also given the different Select All commands their sub-menu.',
                                  style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(
                                      0xFF000000,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                20,
                                320,
                                20,
                                30,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 50,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(
                                      0xFFFEBC52,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Update Now',
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
