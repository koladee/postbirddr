import 'package:postbird/screens/activity/complete_activity.dart';
import 'package:postbird/screens/activity/in_progress_activity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  bool inProgressIsSelected = true;
  bool completeIsSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xFFFEBC52,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 20,
              ),
              child: Center(
                child: Text(
                  'My Activity',
                  style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Color(
                      0xFFFFFFFF,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.791,
                decoration: BoxDecoration(
                  color: Color(
                    0xFFFFFFFF,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 60,
                        left: 60,
                        top: 40,
                        bottom: 40,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                inProgressIsSelected = true;
                                completeIsSelected = false;
                              });
                            },
                            child: Text(
                              'In Progress',
                              style: GoogleFonts.aBeeZee(
                                color: inProgressIsSelected
                                    ? Color(
                                        0xFFFEBC52,
                                      )
                                    : Color(
                                        0xFF464646,
                                      ),
                                fontWeight: inProgressIsSelected
                                    ? FontWeight.w700
                                    : FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                inProgressIsSelected = false;
                                completeIsSelected = true;
                              });
                            },
                            child: Text(
                              'Complete',
                              style: GoogleFonts.aBeeZee(
                                color: completeIsSelected
                                    ? Color(
                                        0xFFFEBC52,
                                      )
                                    : Color(
                                        0xFF464646,
                                      ),
                                fontWeight: completeIsSelected
                                    ? FontWeight.w700
                                    : FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    inProgressIsSelected
                        ? InProgressActivityTwo()
                        : CompleteActivity(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
