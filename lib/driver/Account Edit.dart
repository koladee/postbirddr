import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountEdit extends StatefulWidget {
  @override
  _AccountEditState createState() => _AccountEditState();
}

class _AccountEditState extends State<AccountEdit> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Text(
              'Cancel',
              style: TextStyle(
                  fontFamily: 'aBeeZee',
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.orange),
            ),
            actions: [
              Text(
                'Done',
                style: TextStyle(
                  fontFamily: 'aBeeZee',
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                ),
              ),
              Text('  '),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: ListView(children: [
              Container(
                width: screenWidth,
                height: screenHeight * 0.3,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // borderRadius: BorderRadius.circular(20)
                            ),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/Avatar.png')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              width: screenWidth * 0.55,
                              //height: screenHeight*0.3,
                              child: Column(
                                children: [
                                  Container(
                                    child: TextFormField(
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                        labelText: 'First name',
                                        labelStyle: GoogleFonts.aBeeZee(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: TextFormField(
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                        labelText: 'Last name',
                                        labelStyle: GoogleFonts.aBeeZee(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12, top: 10.0),
                        child: Text(
                          'Edit photo',
                          style: TextStyle(
                            fontFamily: 'aBeeZee',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: screenWidth,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        8.0,
                        15,
                        8,
                        0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 20,
                            ),
                            child: Text(
                              'Phone Number',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'aBeeZee',
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            height: 35,
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                bottom: 7,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                ),
                                child: TextField(
                                  textCapitalization: TextCapitalization.words,
                                  keyboardType: TextInputType.number,
                                  cursorColor: Color(
                                    0xFFFEBC52,
                                  ),
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'aBeeZee',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[400],
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'aBeeZee',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[400],
                                    ),
                                    hintText: '584-490-9153',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Colors.grey[400],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        8.0,
                        15,
                        8,
                        0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 20,
                            ),
                            child: Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'aBeeZee',
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            height: 35,
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                bottom: 7,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                ),
                                child: TextField(
                                  textCapitalization: TextCapitalization.words,
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor: Color(
                                    0xFFFEBC52,
                                  ),
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'aBeeZee',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[400],
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'aBeeZee',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[400],
                                    ),
                                    hintText: 'freeslab88@gmail.com',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Colors.grey[400],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        8.0,
                        15,
                        8,
                        0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 20,
                            ),
                            child: Text(
                              'Gender',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'aBeeZee',
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            height: 35,
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                bottom: 7,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                ),
                                child: TextField(
                                  textCapitalization: TextCapitalization.words,
                                  keyboardType: TextInputType.name,
                                  cursorColor: Color(
                                    0xFFFEBC52,
                                  ),
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'aBeeZee',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[400],
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'aBeeZee',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[400],
                                    ),
                                    hintText: 'Female',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Colors.grey[400],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        8.0,
                        15,
                        8,
                        0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 20,
                            ),
                            child: Text(
                              'Birthday',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'aBeeZee',
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            height: 35,
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                bottom: 7,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                ),
                                child: TextField(
                                  textCapitalization: TextCapitalization.words,
                                  keyboardType: TextInputType.datetime,
                                  cursorColor: Color(
                                    0xFFFEBC52,
                                  ),
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'aBeeZee',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[400],
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'aBeeZee',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[400],
                                    ),
                                    hintText: 'April 16, 1988',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
