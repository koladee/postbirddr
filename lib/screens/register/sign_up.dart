import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool obsureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xFFFFFFFF,
      ),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
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
              'Create Account',
              style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.w700,
                fontSize: 28,
                color: Color(
                  0xFF000000,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Enter information below or logi with social account to get started',
              style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(
                  0xFF000000,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Email',
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
            SizedBox(
              height: 20,
            ),
            Text(
              'Password',
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
              obscureText: obsureText,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (obsureText = false) return obsureText = true;

                      if (obsureText = true) return obsureText = false;
                    });
                  },
                  child: obsureText
                      ? Icon(
                          Icons.visibility_outlined,
                          color: Color(
                            0xFF464646,
                          ),
                        )
                      : Icon(
                          Icons.visibility_off_outlined,
                          color: Color(
                            0xFF464646,
                          ),
                        ),
                ),
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
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Comfirmation Password',
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
              obscureText: obsureText,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (obsureText = false) return obsureText = true;

                      if (obsureText = true) return obsureText = false;
                    });
                  },
                  child: obsureText
                      ? Icon(
                          Icons.visibility_outlined,
                          color: Color(
                            0xFF464646,
                          ),
                        )
                      : Icon(
                          Icons.visibility_off_outlined,
                          color: Color(
                            0xFF464646,
                          ),
                        ),
                ),
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
                    'Register',
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
