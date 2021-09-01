import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageDetail extends StatefulWidget {
  @override
  _MessageDetailState createState() => _MessageDetailState();
}

class _MessageDetailState extends State<MessageDetail> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(
        0xFFF7F8FA,
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(
            0xFFFEBC52,
          ),
        ),
        title: Text(
          'Esther Berry',
          style: GoogleFonts.aBeeZee(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Color(
              0xFF242A37,
            ),
          ),
        ),
        leading: BackButton(),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(
          0xFFFFFFFF,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: ListView(
                children: [
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Center(
                    child: Text(
                      'Today at 5:03 PM',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 13,
                        color: Color(
                          0xFFBEC2CE,
                        ),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 180,
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      height: height * 0.07,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'hello are you nearby?',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 140,
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      height: height * 0.07,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Color(
                          0xFFFEBC52,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'I\'ll be there in a few minutes',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 180,
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      height: height * 0.075,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Okay, i am waiting at vinmark store',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Center(
                    child: Text(
                      '5:33 PM',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 13,
                        color: Color(
                          0xFFBEC2CE,
                        ),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 140,
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      height: height * 0.09,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Color(
                          0xFFFEBC52,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Sorry, I\'m stuck in a traffic. Please give me a moment.',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            height: height * 0.08,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width * 0.8,
                  child: TextField(
                    cursorColor: Color(
                      0xFFFEBC52,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      hintStyle: GoogleFonts.aBeeZee(
                        fontSize: 15,
                        color: Color(
                          0xFFBEC2CE,
                        ),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/send_chat.png',
                  height: 30,
                  width: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
