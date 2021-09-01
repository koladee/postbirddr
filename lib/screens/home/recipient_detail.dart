import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipientDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xFFE8E8E8,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 70,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
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
                    Text(
                      'Recipient',
                      style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Color(
                          0xFF000000,
                        ),
                      ),
                    ),
                    Image(
                      height: 20,
                      width: 20,
                      image: AssetImage(
                        'assets/map.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 68,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(
                  0xFFE8E8E8,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 40,
                    top: 10,
                    child: Image(
                      height: 25,
                      width: 25,
                      image: AssetImage(
                        'assets/circle.png',
                      ),
                    ),
                  ),
                  Positioned(
                    left: 90,
                    top: 5,
                    child: Container(
                      height: 40,
                      width: 200,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          hintText: 'Put Destination',
                          hintStyle: GoogleFonts.aBeeZee(
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
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 87,
                    top: 40,
                    child: Container(
                      height: 0.5,
                      width: 270,
                      color: Color(
                        0xFF464646,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 15,
              ),
              child: Text(
                'Receipient phone number',
                style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(
                    0xFF1B1B1B,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Row(
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
                          Icons.expand_more,
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.only(
                  top: 5,
                  left: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Receipient Name',
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
                    Container(
                      width: double.infinity,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Color(
                                0xFFDEDEDE,
                              ),
                            ),
                          ),
                          hintText: 'Names',
                          hintStyle: GoogleFonts.aBeeZee(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[700],
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
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.only(
                  top: 0,
                  left: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Additional Notes',
                          style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(
                              0xFF1B1B1B,
                            ),
                          ),
                        ),
                        Text(
                          '14/2000',
                          style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(
                              0xFF1B1B1B,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(
                            0xFFDEDEDE,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      width: double.infinity,
                      height: 200,
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              hintText: 'Please Confirm',
                              hintStyle: GoogleFonts.aBeeZee(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[700],
                              ),
                              labelStyle: GoogleFonts.aBeeZee(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(
                                  0xFF1B1B1B,
                                ),
                              ),
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 110,
                              left: 300,
                            ),
                            child: Image(
                              height: 25,
                              width: 25,
                              image: AssetImage(
                                'assets/check.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 120,
                right: 25,
                left: 25,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/sender-create_order',
                  );
                },
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(
                      0xFFFEBC52,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Continue',
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
    );
  }
}
