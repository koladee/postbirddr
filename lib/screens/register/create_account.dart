import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
              'Enter your Name',
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
            Text(
              'Full Name',
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
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Color(
                      0xFFDEDEDE,
                    ),
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
            SizedBox(
              height: 150,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/create_account_2');
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
                    'Next',
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
