import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
          'Help',
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
              Text(
                'Frequently Asked Question',
                style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.w700,
                  fontSize: 21,
                  color: Color(
                    0xFF000000,
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
                        'How to send my package?',
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
                        'Can i change pick up location?',
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
                        'How i know exactly my package weight?',
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
                        'Can i send a fragile package?',
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
                        'Can i tracking my package?',
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

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
