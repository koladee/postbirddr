import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackPackage3 extends StatefulWidget {
  @override
  _TrackPackage3State createState() => _TrackPackage3State();
}

class _TrackPackage3State extends State<TrackPackage3> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(
        0xFFE8E8E8,
      ),
      appBar: AppBar(
        title: Text(
          'Track Order',
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
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
            top: 40,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                  20,
                  35,
                  20,
                  10,
                ),
                child: Image(
                  image: AssetImage(
                    'assets/search.png',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  20,
                  10,
                  20,
                  10,
                ),
                child: Container(
                  padding: EdgeInsets.only(
                    top: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'No. Oder',
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
                            hintText: 'ex. BXI-2314312',
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
                padding: const EdgeInsets.fromLTRB(
                  10,
                  30,
                  10,
                  10,
                ),
                child: Text(
                  'I do not have package\'s code',
                  style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(
                      0xFFFEBC52,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  20,
                  300,
                  20,
                  20,
                ),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(
                      0xFFFEBC52,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Track Order',
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
            ],
          ),
        ),
      ),
    );
  }
}
