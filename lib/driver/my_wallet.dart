import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:postbird/driver/drawer.dart';
import 'package:http/http.dart' as http;
import 'package:postbird/driver/strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyWallet extends StatefulWidget {
  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  bool toggleCash = true;
  bool toggleHistory = false;
  String nameful = '';
  String balance = '';
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
      mainwallet = sharedPreferences.getString("balance");
    });
    print(token);
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
      balance = datasa['credit_balance'];
    });
    print(datasa);
    // return datasa;
  }

  @override
  void initState() {
    // TODO: implement initState
    getCredential();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(
            0xFF242A37,
          ),
        ),
        title: Text(
          'My Wallet',
          style: GoogleFonts.aBeeZee(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Color(
              0xFF242A37,
            ),
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(
          0xFFFEBC52,
        ),
      ),
      drawer: DrawerClass(),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Color(
                      0xFFFEBC52,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    color: Color(
                      0xFFF7F8FA,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 17,
              vertical: 15,
            ),
            child: Container(
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color(
                    0xFF242A37,
                  ),
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          toggleCash = true;
                          toggleHistory = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                          color: toggleCash
                              ? Color(
                                  0xFF242A37,
                                )
                              : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            'Cash',
                            style: toggleCash
                                ? GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Color(
                                      0xFFFEBC52,
                                    ),
                                  )
                                : GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Color(
                                      0xFF242A37,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          toggleCash = false;
                          toggleHistory = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                          color: toggleHistory
                              ? Color(
                                  0xFF242A37,
                                )
                              : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            'History',
                            style: toggleHistory
                                ? GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Color(
                                      0xFFFEBC52,
                                    ),
                                  )
                                : GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Color(
                                      0xFF242A37,
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
          toggleCash
              ? Padding(
                  padding: EdgeInsets.fromLTRB(
                    17,
                    100,
                    17,
                    10,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          '${balance}',
                          style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.w700,
                            fontSize: 40,
                            color: Color(
                              0xFF242A37,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'total earn '.toUpperCase(),
                          style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Color(
                              0xFF242A37,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          '(2021)'.toUpperCase(),
                          style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            color: Color(
                              0xFF242A37,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 550,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(
                              0xFFFFFFFF,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[100],
                                blurRadius: 10,
                                offset: Offset(
                                  0,
                                  5,
                                ),
                              ),
                              BoxShadow(
                                color: Colors.grey[700],
                                blurRadius: 10,
                                offset: Offset(
                                  0,
                                  -2,
                                ),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 20,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          backgroundImage: AssetImage(
                                            'assets/elva.png',
                                          ),
                                          radius: 25,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Elva Barnett',
                                              style: GoogleFonts.aBeeZee(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                                color: Color(
                                                  0xFF242A37,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '#740136',
                                              style: GoogleFonts.aBeeZee(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(
                                                  0xFFBEC2CE,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '',
                                        style: GoogleFonts.aBeeZee(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      Text(
                                        '\$25.00',
                                        style: GoogleFonts.aBeeZee(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Color(
                                            0xFF242A37,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 15,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 1,
                                  color: Color(
                                    0xFFF1F2F6,
                                  ),
                                ),
                              ),
                              
                            
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : toggleHistory
                  ? Container()
                  : Container(),
        ],
      ),
    );
  }
}
