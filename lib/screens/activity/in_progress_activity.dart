import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InProgresActivity extends StatefulWidget {
  @override
  _InProgresActivityState createState() => _InProgresActivityState();
}

class _InProgresActivityState extends State<InProgresActivity> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Image(
          height: 240,
          width: 240,
          image: AssetImage(
            'assets/Rectangle.png',
          ),
        ),
        Text(
          'No Activity',
          style: GoogleFonts.aBeeZee(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Create some order for you ?',
          textAlign: TextAlign.center,
          style: GoogleFonts.aBeeZee(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontSize: 16,
            letterSpacing: 0,
            fontWeight: FontWeight.normal,
            height: 1,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          height: 50,
          width: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(
              0xFFFEBC52,
            ),
          ),
          child: Center(
            child: Text(
              'Send a Package',
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
      ],
    );
  }
}

class InProgressActivityTwo extends StatefulWidget {
  @override
  _InProgressActivityTwoState createState() => _InProgressActivityTwoState();
}

class _InProgressActivityTwoState extends State<InProgressActivityTwo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 30,
        left: 30,
      ),
      child: Container(
        padding: EdgeInsets.only(
          right: 20,
          top: 15,
          bottom: 15,
          left: 20,
        ),
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(
              0xFFE3E3E3,
            ),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'In Progress',
                  style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color(
                      0xFFFEBC52,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Kitani Sarasvati',
                  style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color(
                      0xFF000000,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '|',
                  style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.w200,
                    fontSize: 14,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '+234 81 855 48839',
                  style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '24 Adetokunbo Ademola Street, Victoria Island, Lagos',
              style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
