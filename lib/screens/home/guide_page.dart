import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GuidePage extends StatefulWidget {
  @override
  _GuidePageState createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        height: 190,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1/4',
              style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(
                  0xFF000000,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Start make your order here.',
              style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Color(
                  0xFF000000,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'We believe that a connected world is a better world, and that belief guides.',
              style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(
                  0xFF000000,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Skip',
                    style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(
                        0xFF1B1B1B,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Color(
                      0xFFFEBC52,
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text(
                      'Next',
                      style: GoogleFonts.aBeeZee(
                        color: Color(
                          0xFFFFFFFF,
                        ),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
