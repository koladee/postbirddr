import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InviteFriendsList extends StatefulWidget {
  @override
  _InviteFriendsListState createState() => _InviteFriendsListState();
}

class _InviteFriendsListState extends State<InviteFriendsList> {
  bool _jacksoncheck = true;
  bool _nelliecheck = false;
  bool _shanecheck = false;
  bool _sophiecheck = true;
  bool _rhodacheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xFFFFFFFF,
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(
            0xFFFEBC52,
          ),
        ),
        title: Text(
          'Invite Friends',
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
          0xFFFFFFFF,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              0,
              15,
              20,
              0,
            ),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Next',
                style: GoogleFonts.aBeeZee(
                  color: Color(
                    0xFFFEBC52,
                  ),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
              16,
              10,
              16,
              20,
            ),
            child: Container(
              padding: EdgeInsets.only(
                right: 15,
              ),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(
                  0xFFF1F1F2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      0,
                      0,
                      0,
                    ),
                    height: 38,
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/mic.png',
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Color(
              0xfF8E8E93,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jackson Daniel',
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color(
                                0xFF242A37,
                              ),
                            ),
                          ),
                          Text(
                            '5 mutual friends',
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Color(
                                0xFF242A37,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(
                        () {
                          _jacksoncheck = !_jacksoncheck;
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _jacksoncheck
                            ? Color(
                                0xFFFEBC52,
                              )
                            : Colors.white,
                      ),
                      child: _jacksoncheck
                          ? Icon(
                              Icons.check,
                              color: Colors.white,
                            )
                          : Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color(
                                    0xFFFEBC52,
                                  ),
                                  width: 2,
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
            padding: const EdgeInsets.fromLTRB(
              60,
              10,
              0,
              10,
            ),
            child: Container(
              height: 1,
              width: double.infinity,
              color: Color(
                0xFFF1F2F6,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          'assets/isaiah.png',
                        ),
                        radius: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nellie Scott',
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color(
                                0xFF242A37,
                              ),
                            ),
                          ),
                          Text(
                            '5 mutual friends',
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Color(
                                0xFF242A37,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(
                        () {
                          _nelliecheck = !_nelliecheck;
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _nelliecheck
                            ? Color(
                                0xFFFEBC52,
                              )
                            : Colors.white,
                      ),
                      child: _nelliecheck
                          ? Icon(
                              Icons.check,
                              color: Colors.white,
                            )
                          : Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color(
                                    0xFFFEBC52,
                                  ),
                                  width: 2,
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
            padding: const EdgeInsets.fromLTRB(
              60,
              10,
              0,
              10,
            ),
            child: Container(
              height: 1,
              width: double.infinity,
              color: Color(
                0xFFF1F2F6,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          'assets/lula.png',
                        ),
                        radius: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shane Morales',
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color(
                                0xFF242A37,
                              ),
                            ),
                          ),
                          Text(
                            '5 mutual friends',
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Color(
                                0xFF242A37,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(
                        () {
                          _shanecheck = !_shanecheck;
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _shanecheck
                            ? Color(
                                0xFFFEBC52,
                              )
                            : Colors.white,
                      ),
                      child: _shanecheck
                          ? Icon(
                              Icons.check,
                              color: Colors.white,
                            )
                          : Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color(
                                    0xFFFEBC52,
                                  ),
                                  width: 2,
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
            padding: const EdgeInsets.fromLTRB(
              60,
              10,
              0,
              10,
            ),
            child: Container(
              height: 1,
              width: double.infinity,
              color: Color(
                0xFFF1F2F6,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          'assets/ray.png',
                        ),
                        radius: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sophie Bell',
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color(
                                0xFF242A37,
                              ),
                            ),
                          ),
                          Text(
                            '5 mutual friends',
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Color(
                                0xFF242A37,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(
                        () {
                          _sophiecheck = !_sophiecheck;
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _sophiecheck
                            ? Color(
                                0xFFFEBC52,
                              )
                            : Colors.white,
                      ),
                      child: _sophiecheck
                          ? Icon(
                              Icons.check,
                              color: Colors.white,
                            )
                          : Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color(
                                    0xFFFEBC52,
                                  ),
                                  width: 2,
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
            padding: const EdgeInsets.fromLTRB(
              60,
              10,
              0,
              10,
            ),
            child: Container(
              height: 1,
              width: double.infinity,
              color: Color(
                0xFFF1F2F6,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          'assets/betty.png',
                        ),
                        radius: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rhoda Palmer',
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color(
                                0xFF242A37,
                              ),
                            ),
                          ),
                          Text(
                            '5 mutual friends',
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Color(
                                0xFF242A37,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(
                        () {
                          _rhodacheck = !_rhodacheck;
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _rhodacheck
                            ? Color(
                                0xFFFEBC52,
                              )
                            : Colors.white,
                      ),
                      child: _rhodacheck
                          ? Icon(
                              Icons.check,
                              color: Colors.white,
                            )
                          : Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color(
                                    0xFFFEBC52,
                                  ),
                                  width: 2,
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
            padding: const EdgeInsets.fromLTRB(
              60,
              10,
              0,
              10,
            ),
            child: Container(
              height: 1,
              width: double.infinity,
              color: Color(
                0xFFF1F2F6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
