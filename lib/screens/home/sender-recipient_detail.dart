import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SenderRecipientDetail extends StatefulWidget {
  @override
  _SenderRecipientDetailState createState() => _SenderRecipientDetailState();
}

class _SenderRecipientDetailState extends State<SenderRecipientDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xFFE8E8E8,
      ),
      appBar: AppBar(
        title: Text(
          'Recipient Details',
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              top: 20,
              bottom: 10,
            ),
            child: Container(
              padding: EdgeInsets.only(
                top: 20,
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
                        hintText: 'Full Name',
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
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              top: 5,
              bottom: 5,
            ),
            child: Container(
              padding: EdgeInsets.only(
                left: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address',
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
                        hintText: 'Shipping Destination',
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
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              top: 5,
              bottom: 5,
            ),
            child: Container(
              padding: EdgeInsets.only(
                left: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Postal Zip',
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
                        hintText: 'XXXXX',
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
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              top: 5,
              bottom: 5,
            ),
            child: Container(
              padding: EdgeInsets.only(
                left: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone Number',
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
                        hintText: 'XX-XXXX-XXXX',
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
            padding: EdgeInsets.only(
              bottom: 5,
              right: 20,
              left: 20,
              top: 5,
            ),
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
                        'Notes',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(
                            0xFF1B1B1B,
                          ),
                        ),
                      ),
                      Text(
                        '0/2000',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.grey[700],
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
                            hintText: 'You have note for shipper? put it here',
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
              top: 30,
              right: 20,
              left: 20,
            ),
            child: GestureDetector(
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(
                    0xFFFEBC52,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(
                        0,
                        0,
                        0,
                        0.07999999821186066,
                      ),
                      offset: Offset(
                        0,
                        18,
                      ),
                      blurRadius: 40,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Checkout',
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
    );
  }
}
