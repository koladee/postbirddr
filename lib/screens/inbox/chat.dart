import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
                    padding:
                        const EdgeInsets.only(right: 20, left: 20, top: 20),
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
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: height / 1.162,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  'Felix Khan',
                                  style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  width: 1,
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
                          Container(
                            padding: EdgeInsets.fromLTRB(
                              20,
                              16,
                              20,
                              0,
                            ),
                            width: double.infinity,
                            height: 70,
                            child: Expanded(
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 17,
                                    backgroundImage: AssetImage(
                                      'assets/felix.png',
                                    ),
                                  ),
                                  Positioned(
                                    left: 40,
                                    child: Text(
                                      'User',
                                      style: GoogleFonts.aBeeZee(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Text(
                                      'Today, 12 Sep 2020',
                                      style: GoogleFonts.aBeeZee(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 40,
                                    top: 16,
                                    child: Text(
                                      'Felix Khan',
                                      style: GoogleFonts.aBeeZee(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color(
                                          0xFF000000,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Color(
                              0xFFE7E7E7,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              right: 20,
                              left: 20,
                              top: 20,
                            ),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 55,
                                  width: 170,
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(
                                    right: 18,
                                    left: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(
                                      0xFFFFFFFF,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(12),
                                      bottomLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                      topLeft: Radius.circular(0),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Hello, Kitani',
                                        style: GoogleFonts.aBeeZee(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Color(
                                            0xFF464646,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '12.05',
                                        style: GoogleFonts.aBeeZee(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(
                                            0xFF464646,
                                          ),
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: 55,
                                    width: 170,
                                    padding: EdgeInsets.only(
                                      right: 18,
                                      left: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(
                                        0xFFFEBC52,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(0),
                                        bottomLeft: Radius.circular(12),
                                        bottomRight: Radius.circular(12),
                                        topLeft: Radius.circular(12),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '12.06',
                                          style: GoogleFonts.aBeeZee(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color(
                                              0xFFFFFFFF,
                                            ),
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                        Text(
                                          'Oh, HI!',
                                          style: GoogleFonts.aBeeZee(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            color: Color(
                                              0xFFFFFFFF,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  height: 55,
                                  width: 300,
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(
                                    right: 18,
                                    left: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(
                                      0xFFFFFFFF,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(12),
                                      bottomLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                      topLeft: Radius.circular(0),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'i send you package, hope you like it\n.thank you Kitani.',
                                        style: GoogleFonts.aBeeZee(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Color(
                                            0xFF464646,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '12.05',
                                        style: GoogleFonts.aBeeZee(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(
                                            0xFF464646,
                                          ),
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: height / 16,
              color: Color(
                0xFFFFFFFF,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      width: width / 1.2,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.sentences,
                        decoration: InputDecoration(
                          hintText: 'Type a message',
                          hintStyle: GoogleFonts.aBeeZee(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(
                              0xFF000000,
                            ),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 15,
                    ),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(
                          0xFFFEBC52,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Color(0xFFFFFFFF),
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
