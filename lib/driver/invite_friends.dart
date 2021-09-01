import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:postbird/driver/drawer.dart';

class InviteFriends extends StatefulWidget {
  @override
  _InviteFriendsState createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
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
      ),
      drawer: DrawerClass(),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Color(
                  0xFFFEBC52,
                ),
                borderRadius: BorderRadiusDirectional.circular(100),
              ),
              child: Center(
                child: Image.asset(
                  'assets/invitefriends_icon.png',
                  height: 90,
                  width: 120,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              35,
              40,
              35,
              10,
            ),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Invite Friends ',
                    style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Color(
                        0xFF242A37,
                      ),
                    ),
                  ),
                  Container(
                    child: RichText(
                      text: TextSpan(
                        text: 'Earn up to ',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w400,
                          fontSize: 30,
                          color: Color(
                            0xFF242A37,
                          ),
                        ),
                        children: [
                          TextSpan(
                            text: '\$100 ',
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                              color: Color(
                                0xFF242A37,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: 'a day ',
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.w400,
                              fontSize: 36,
                              color: Color(
                                0xFF242A37,
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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'When your friend sign up with your referral code, you can receive up to \$150 a day.',
                    style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Color(
                        0xFF242A37,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'share your invite code'.toUpperCase(),
                style: GoogleFonts.aBeeZee(
                  color: Color(
                    0xFFBEC2CE,
                  ),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 15,
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/vehicle_management');
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(
                    0xFFF7F8FA,
                  ),
                ),
                child: Center(
                  child: Text(
                    '0905070017',
                    style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: Color(
                        0xFF242A37,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 15,
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/invite_friends_list',
                );
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(
                    0xFFFEBC52,
                  ),
                ),
                child: Center(
                  child: Text(
                    'invite'.toUpperCase(),
                    style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
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
    );
  }
}
