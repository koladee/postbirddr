import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Icon(
              Icons.arrow_back,
              color: Colors.orange,
            ),
            actions: [
              Text(
                'Edit',
                style: TextStyle(
                    fontFamily: 'aBeeZee',
                    fontWeight: FontWeight.w700,
                    color: Colors.orange),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: ListView(children: [
              Container(
                width: screenWidth,
                height: screenHeight * 0.3,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/Avatar.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                      child: Text(
                        'Martha Banks',
                        style: TextStyle(
                            fontFamily: 'aBeeZee',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Text(
                        'Gold Member',
                        style: TextStyle(
                            fontFamily: 'aBeeZee',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
                child: Text(
                  'INFORMATIONS',
                  style: TextStyle(
                      fontFamily: 'aBeeZee',
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Container(
                width: screenWidth,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 15, 8, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'UserName',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'aBeeZee',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Martha Banks',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'aBeeZee',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[400],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                ),
                              ],
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
                      padding: const EdgeInsets.fromLTRB(8.0, 15, 8, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Phone Number',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'aBeeZee',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '584-490-9153',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'aBeeZee',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[400],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                ),
                              ],
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
                      padding: const EdgeInsets.fromLTRB(8.0, 15, 8, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'aBeeZee',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'freeslab88@gmail.com',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'aBeeZee',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[400],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                ),
                              ],
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
                      padding: const EdgeInsets.fromLTRB(8.0, 15, 8, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Gender',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'aBeeZee',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Female',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'aBeeZee',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[400],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                ),
                              ],
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
                      padding: const EdgeInsets.fromLTRB(8.0, 15, 8, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Birthday',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'aBeeZee',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'April 16, 1988',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'aBeeZee',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[400],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          )),
    );
  }
}
