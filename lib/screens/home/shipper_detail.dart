import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShiperDetail extends StatefulWidget {
  @override
  _ShiperDetailState createState() => _ShiperDetailState();
}

class _ShiperDetailState extends State<ShiperDetail> {
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
                      'Shipper',
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
                    top: 4,
                    child: Image(
                      height: 25,
                      width: 25,
                      image: AssetImage(
                        'assets/Path.png',
                      ),
                    ),
                  ),
                  Positioned(
                    left: 90,
                    top: 5,
                    child: Text(
                      '24 Adetokunbo Ademola Str..',
                      style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Color(
                          0xFF1B1B1B,
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
                'Shipper phone number',
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 25,
              ),
              child: Text(
                'Item type',
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
                left: 20,
                top: 10,
                right: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(
                      0xFFDEDEDE,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                width: double.infinity,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                            ),
                            child: Image(
                              height: 20,
                              width: 15,
                              image: AssetImage('assets/file.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5,
                            ),
                            child: Text(
                              'Document',
                              style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.expand_more,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                      ),
                      child: Text(
                        'Package Size',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(
                            0xFF1B1B1B,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(
                                0xFFFEBC52,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: 100,
                          height: 120,
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 20,
                                bottom: 10,
                              ),
                              child: Column(
                                children: [
                                  Image(
                                    height: 50,
                                    width: 50,
                                    image: AssetImage(
                                      'assets/package_one.png',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '< 1kg',
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
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(
                                0xFFDEDEDE,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: 100,
                          height: 120,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                bottom: 10,
                              ),
                              child: Column(
                                children: [
                                  Image(
                                    height: 50,
                                    width: 50,
                                    image: AssetImage(
                                      'assets/package_two.png',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '3kg to 10kg',
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
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(
                                0xFFDEDEDE,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: 100,
                          height: 120,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                bottom: 10,
                              ),
                              child: Column(
                                children: [
                                  Image(
                                    height: 50,
                                    width: 50,
                                    image: AssetImage(
                                      'assets/package_three.png',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '> 10kg',
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
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
                      'Package Detail',
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
                          hintText: 'Notes',
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
              padding: const EdgeInsets.only(
                top: 90,
                right: 25,
                left: 25,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
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
