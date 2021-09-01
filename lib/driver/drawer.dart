import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:postbird/driver/strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerClass extends StatefulWidget {
  @override
  _DrawerClassState createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  String nameful = '';
  String profilepic = '';
  String phone = '';
  String emailo = '';

  SharedPreferences sharedPreferences;
  String token = "",
      userpin = "",
      nameS = "",
      email = "",
      usernameS = "",
      id = "",
      // profilepic = "",
      mainwallet = "";
  getCredential() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      token = sharedPreferences.getString("token");
      nameS = sharedPreferences.getString("name");
      usernameS = sharedPreferences.getString("usernamea");
      email = sharedPreferences.getString("email");
      id = sharedPreferences.getString("id");
      profilepic = sharedPreferences.getString("profilepic");
      mainwallet = sharedPreferences.getString("balance");
    });
    // print(nameS);
    fetchUserDetails();
  }

  fetchUserDetails() async {
    var response = await http.post(
      Uri.encodeFull(Strings.BASE_URL + 'userProfile'),
      headers: {
        "accept": "application/json",
        "Authorization": "Bearer " + token,
      },
    );
    var res = jsonDecode(response.body);
    var datasa = res;
    setState(() {
      nameful = datasa['name'];
      phone = datasa['phone'];
      emailo = datasa['email'];
      profilepic = datasa['profilepic'];
    });
    print(datasa);
    return datasa;
  }

  signOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setInt("token", null);
      preferences.setString("name", null);
      preferences.setString("usernamea", null);
      preferences.setString("email", null);
      preferences.setString("id", null);
      preferences.commit();
      // _loginStatus = LoginStatus.notSignIn;
      Navigator.pushReplacementNamed(context, '/logout');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getCredential();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Color(
                  0xFFFEBC52,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        30,
                        70,
                        20,
                        10,
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(
                              0xFFFFFFFF,
                            ),
                            backgroundImage: AssetImage(
                              'assets/callie.png',
                            ),
                            radius: 35,
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${nameS}',
                                style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 20,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Color(
                                    0xFFFFFFFF,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Color(
                                          0xFFFEBC52,
                                        ),
                                      ),
                                      Text(
                                        'Driver Acc ',
                                        style: GoogleFonts.aBeeZee(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(
                                            0xFFFEBC52,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //     horizontal: 16,
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Column(
                    //         children: [
                    //           Image.asset(
                    //             'assets/clock.png',
                    //             color: Colors.black,
                    //             height: 30,
                    //             width: 30,
                    //           ),
                    //           SizedBox(
                    //             height: 8,
                    //           ),
                    //           Text(
                    //             '40',
                    //             style: GoogleFonts.aBeeZee(
                    //               fontWeight: FontWeight.bold,
                    //               fontSize: 18,
                    //               color: Color(
                    //                 0xFF242E42,
                    //               ),
                    //             ),
                    //           ),
                    //           Text(
                    //             'Hours online',
                    //             style: GoogleFonts.aBeeZee(
                    //               fontWeight: FontWeight.w400,
                    //               fontSize: 13,
                    //               color: Color(
                    //                 0xFF242E42,
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //       Column(
                    //         children: [
                    //           Image.asset(
                    //             'assets/speed_meter.png',
                    //             color: Color(
                    //               0xFFFFFFFF,
                    //             ),
                    //             height: 30,
                    //             width: 30,
                    //           ),
                    //           SizedBox(
                    //             height: 8,
                    //           ),
                    //           Text(
                    //             '30 KM',
                    //             style: GoogleFonts.aBeeZee(
                    //               fontWeight: FontWeight.bold,
                    //               fontSize: 18,
                    //               color: Color(
                    //                 0xFF242E42,
                    //               ),
                    //             ),
                    //           ),
                    //           Text(
                    //             'Total Distance',
                    //             style: GoogleFonts.aBeeZee(
                    //               fontWeight: FontWeight.w400,
                    //               fontSize: 13,
                    //               color: Color(
                    //                 0xFF242E42,
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //       Column(
                    //         children: [
                    //           Container(
                    //             height: 30,
                    //           ),
                    //           SizedBox(
                    //             height: 8,
                    //           ),
                    //           Text(
                    //             '20',
                    //             style: GoogleFonts.aBeeZee(
                    //               fontWeight: FontWeight.bold,
                    //               fontSize: 18,
                    //               color: Color(
                    //                 0xFF242E42,
                    //               ),
                    //             ),
                    //           ),
                    //           Text(
                    //             'Total Jobs',
                    //             style: GoogleFonts.aBeeZee(
                    //               fontWeight: FontWeight.w400,
                    //               fontSize: 13,
                    //               color: Color(
                    //                 0xFF242E42,
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Color(
                  0xFFFFFFFF,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    30,
                    60,
                    10,
                    10,
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, '/home_online');
                        },
                        child: Container(
                          height: 60,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/home_drawer_icon.png',
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Home',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/my_wallet');
                        },
                        child: Container(
                          height: 60,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/wallet_drawer_icon.png',
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'My Wallet',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                            context,
                            '/history',
                          );
                        },
                        child: Container(
                          height: 60,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/history_drawer_icon.png',
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'History',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/notification_drawer_icon.png',
                              height: 35,
                              width: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Notifications',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                            context,
                            '/invite_friends',
                          );
                        },
                        child: Container(
                          height: 70,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/invitefriends_drawer_icons.png',
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Invite Friends',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                          height: 70,
                          child: GestureDetector(
                            onTap: () {
                              signOut();
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/logout_drawer_icon.png',
                                  height: 35,
                                  width: 35,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Logout',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
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
