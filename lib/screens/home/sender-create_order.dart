import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SenderCreateOrder extends StatefulWidget {
  @override
  _SenderCreateOrderState createState() => _SenderCreateOrderState();
}

class _SenderCreateOrderState extends State<SenderCreateOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xFFE8E8E8,
      ),
      appBar: AppBar(
        title: Text(
          'Create Order',
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pick up Information',
                            style: GoogleFonts.aBeeZee(
                              color: Color(
                                0xFF000000,
                              ),
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Edit',
                            style: GoogleFonts.aBeeZee(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Container(
                        width: double.infinity,
                        height: 130,
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                          top: 20,
                          bottom: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
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
                          color: Color(
                            0xFFE8E8E8,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image(
                                  width: 15,
                                  height: 15,
                                  image: AssetImage('assets/user_icon.png'),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Kitani Sarasvati',
                                  style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(
                                      0xFF000000,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image(
                                  width: 15,
                                  height: 15,
                                  image: AssetImage('assets/call_icon.png'),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  '+23481-4567-535',
                                  style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(
                                      0xFF000000,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image(
                                  width: 15,
                                  height: 15,
                                  image: AssetImage('assets/map.png'),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  '24 Adetokunbo Ademola Street, Victor..',
                                  style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(
                                      0xFF000000,
                                    ),
                                  ),
                                ),
                              ],
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
                  top: 40.0,
                ),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Package Information',
                        style: GoogleFonts.aBeeZee(
                          color: Color(
                            0xFF000000,
                          ),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 20,
                          right: 20,
                          left: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Size',
                              style: GoogleFonts.aBeeZee(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 15,
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
                            SizedBox(
                              height: 23,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Fragile',
                                  style: GoogleFonts.aBeeZee(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                Icon(
                                  Icons.check_box,
                                  color: Color(
                                    0xFFFEBC52,
                                  ),
                                  size: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 230,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/sender-recipient_order',
                            );
                          },
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
