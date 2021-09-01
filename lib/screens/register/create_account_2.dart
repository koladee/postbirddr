import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount2 extends StatefulWidget {
  @override
  _CreateAccount2State createState() => _CreateAccount2State();
}

class _CreateAccount2State extends State<CreateAccount2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xFFFFFFFF,
      ),
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: Text(
          'Create Account',
          style: GoogleFonts.aBeeZee(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color(
              0xFF000000,
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(
          0xFFFFFFFF,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              'Enter your Phone Number',
              style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Color(
                  0xFF000000,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'we believe that a connected world is a better world, and that belief guides.',
              style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(
                  0xFF000000,
                ),
              ),
            ),
            SizedBox(
              height: 30,
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
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: 92,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                Container(
                  width: 236,
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(
                            0xFFDEDEDE,
                          ),
                        ),
                      ),
                      prefixText: '+234   ',
                      prefixStyle: GoogleFonts.aBeeZee(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0xFF1B1B1B,
                        ),
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
                      suffixIcon: Icon(
                        Icons.check,
                        color: Color(
                          0xFF05944F,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Text(
              'by clicking ‘Continue’, you have read and agree with our ',
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                  color: Color(
                    0xFF000000,
                  ),
                  fontSize: 12,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                  height: 1),
            ),
            SizedBox(
              height: 3,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Terms',
                  style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(
                      0xFFFEBC52,
                    ),
                  ),
                  children: [
                    TextSpan(
                      text: ' and ',
                      style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(
                          0xFF000000,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: 'Condition',
                      style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(
                          0xFFFEBC52,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/create_account_3');
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(
                    0xFFFEBC52,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Continue',
                    style: GoogleFonts.aBeeZee(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
