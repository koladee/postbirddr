import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:postbird/driver/drawer.dart';
import 'package:postbird/driver/home_online-boooking_details.dart';
import 'package:postbird/driver/strings.dart';
import 'package:postbird/models/pendingrides.dart';
import 'package:http/http.dart' as http;

class HomeOnlineSwipeUp extends StatefulWidget {
  @override
  _HomeOnlineSwipeUpState createState() => _HomeOnlineSwipeUpState();
}

class _HomeOnlineSwipeUpState extends State<HomeOnlineSwipeUp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool switchOnAndOff = true;

  void _openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final exploreList = Container(
      child: FutureBuilder(
        future: gettTrackdetails(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Center(
              child: Container(
                child: Center(
                  child: Container(
                      child: Center(
                    child: new Image(
                      // height: 120.0,
                      // width: 120.0,
                      image: new AssetImage("assets/anim.gif"),
                      fit: BoxFit.fill,
                    ),
                  )),
                ),
              ),
            );
          } else {
            if (snapshot.data.length < 1) {
              return Container(
                child: Center(
                  child: Text(
                    'No Data ',
                    style: TextStyle(
                        color: Color.fromRGBO(7, 29, 54, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 32),
                  ),
                ),
              );
            } else {
              return Container(
                height: 650,
                // width: screenWidth,
                child: ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    Pendingpacakage pendingpacakage = snapshot.data[index];
                    return Container(
                      width: double.infinity,
                      height: 305,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            offset: Offset(5, 0),
                          ),
                        ],
                        color: Color(
                          0xFFFFFFFF,
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            width: double.infinity,
                            height: 70,
                            color: Color(
                              0xFFF7F7F7,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 45,
                                        width: 45,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Image(
                                          image: NetworkImage(
                                            'https://ui-avatars.com/api/?background=random&name=${pendingpacakage.sendername}',
                                          ),
                                          width: 45,
                                          height: 45,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 10,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${pendingpacakage.sendername}',
                                              style: GoogleFonts.aBeeZee(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                                color: Color(
                                                  0xFF242A37,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 16,
                                                  width: 110,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    color: Color(
                                                      0xFFFEBC52,
                                                    ),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Item Size: ${pendingpacakage.packsize}',
                                                      style:
                                                          GoogleFonts.aBeeZee(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Color(
                                                          0xFF242A37,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image(
                                                  image: AssetImage(
                                                    'assets/cup.png',
                                                  ),
                                                  height: 14,
                                                  width: 14,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '₦ ${pendingpacakage.amount}',
                                        style: GoogleFonts.aBeeZee(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Color(
                                            0xFF242A37,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '2.2 km',
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
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 70,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Pick up'.toUpperCase(),
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Color(
                                        0xFFBEC2CE,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    ' ${pendingpacakage.detination}',
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color(
                                        0xFF242A37,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Container(
                              height: 1,
                              width: double.infinity,
                              color: Color(
                                0xFFEFEFF4,
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 70,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Drop off'.toUpperCase(),
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Color(
                                        0xFFBEC2CE,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    '${pendingpacakage.recipientaddress}',
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color(
                                        0xFF242A37,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              20,
                              0,
                              20,
                              10,
                            ),
                            child: Container(
                              height: 1,
                              width: double.infinity,
                              color: Color(
                                0xFFEFEFF4,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              var fromad = '${pendingpacakage.detination}';
                              var toad = '${pendingpacakage.recipientaddress}';
                              var note = '${pendingpacakage.packagedetails}';
                              var amt = '${pendingpacakage.amount}';
                              var name = '${pendingpacakage.sendername}';
                              var sphone = '${pendingpacakage.senderphone}';
                              var rphone = '${pendingpacakage.recipientphone}';
                              var size = '${pendingpacakage.packsize}';
                              var latf = '${pendingpacakage.frmlt}';
                              var lonf = '${pendingpacakage.frmlt}';
                              var latto = '${pendingpacakage.tolt}';
                              var longto = '${pendingpacakage.tolg}';
                          
                              // Navigator.pushNamed(
                              //   context,
                              //   '/home_online-booking_details',
                              // );
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      HomeOnlineBookingDetails(
                                        fromad: fromad,
                                        toad: toad,
                                        note: note,
                                        amt: amt,
                                        name: name,
                                        sphone: sphone,
                                        rphone: rphone,
                                        size: size,
                                        latf: latf,
                                        lonf: lonf,
                                        latto: latto,
                                        longto: longto,
                                      )));
                            },
                            child: Container(
                              width: double.infinity,
                              height: 70,
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              child: Container(
                                height: 45,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(
                                    0xFFFEBC52,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Accept',
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
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
                  },
                ),
              );
            }
          }
        },
      ),
    );

    return  Scaffold(
      key: _scaffoldKey,
            backgroundColor: Color(
              0xFFF7F8FA,
            ),
                      appBar: AppBar(
              title: Text(
                'Online',
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
              leading: GestureDetector(
                onTap: () {
                  _openDrawer();
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'assets/drawer_icon.png',
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      switchOnAndOff = !switchOnAndOff;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    child: switchOnAndOff
                        ? Image.asset(
                            'assets/switcher_on.png',
                          )
                        : Image.asset(
                            'assets/switcher_off.png',
                          ),
                  ),
                ),
              ],
            ),
            drawer: DrawerClass(),
            // appBar: AppBar(
            //   title: Text(
            //     'Online',
            //     style: GoogleFonts.aBeeZee(
            //       fontSize: 17,
            //       fontWeight: FontWeight.bold,
            //       color: Color(
            //         0xFF242A37,
            //       ),
            //     ),
            //   ),
            //   elevation: 0,
            //   centerTitle: true,
            //   backgroundColor: Color(
            //     0xFFFEBC52,
            //   ),
            //   actions: [
            //     Padding(
            //       padding: const EdgeInsets.symmetric(
            //         horizontal: 20,
            //       ),
            //       child: Image.asset(
            //         'assets/switcher_on.png',
            //         height: 20,
            //         width: 40,
            //       ),
            //     ),
            //   ],
            // ),
            // drawer: DrawerClass(),
            body: switchOnAndOff == true
             ? ListView(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  height: 45,
                  width: double.infinity,
                  color: Color(
                    0xFFFEBC52,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'You have 10 new requests',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(
                              0xFF242A37,
                            ),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
                exploreList,
                SizedBox(
                  height: 15,
                ),
              ],
            ) :
             ListView(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  height: 45,
                  width: double.infinity,
                  color: Color(
                    0xFFFEBC52,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'You have 10 new requests',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(
                              0xFF242A37,
                            ),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 230,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        offset: Offset(5, 0),
                      ),
                    ],
                    color: Color(
                      0xFFFFFFFF,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        width: double.infinity,
                        height: 70,
                        color: Color(
                          0xFFF7F7F7,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Image(
                                      image: AssetImage(
                                        'assets/esther.png',
                                      ),
                                      width: 45,
                                      height: 45,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Esther Berry',
                                          style: GoogleFonts.aBeeZee(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Color(
                                              0xFF242A37,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 16,
                                              width: 110,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Color(
                                                  0xFFFEBC52,
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Item Size: 3kg - 10kg',
                                                  style: GoogleFonts.aBeeZee(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(
                                                      0xFF242A37,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Image(
                                              image: AssetImage(
                                                'assets/cup.png',
                                              ),
                                              height: 14,
                                              width: 14,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '₦325.00',
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Color(
                                        0xFF242A37,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '2.2 km',
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
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Pick up'.toUpperCase(),
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xFFBEC2CE,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                '7958 Swift Village',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Color(
                                    0xFF242A37,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Container(
                          height: 1,
                          width: double.infinity,
                          color: Color(
                            0xFFEFEFF4,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Drop off'.toUpperCase(),
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xFFBEC2CE,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                '105 William St, Chicago, US',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
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
                SizedBox(
                  height: 15,
                ),
               ],
            ),
          );
          // )
        // : Scaffold(
        //     key: _scaffoldKey,
        //     backgroundColor: Color(
        //       0xFFF7F8FA,
        //     ),
            // appBar: AppBar(
            //   title: Text(
            //     'Online',
            //     style: GoogleFonts.aBeeZee(
            //       fontSize: 17,
            //       fontWeight: FontWeight.bold,
            //       color: Color(
            //         0xFF242A37,
            //       ),
            //     ),
            //   ),
            //   elevation: 0,
            //   centerTitle: true,
            //   backgroundColor: Color(
            //     0xFFFFFFFF,
            //   ),
            //   leading: GestureDetector(
            //     onTap: () {
            //       _openDrawer();
            //     },
            //     child: Padding(
            //       padding: const EdgeInsets.all(15.0),
            //       child: Image.asset(
            //         'assets/drawer_icon.png',
            //         height: 24,
            //         width: 24,
            //       ),
            //     ),
            //   ),
            //   actions: [
            //     GestureDetector(
            //       onTap: () {
            //         setState(() {
            //           switchOnAndOff = !switchOnAndOff;
            //         });
            //       },
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(
            //           horizontal: 20,
            //           vertical: 15,
            //         ),
            //         child: switchOnAndOff
            //             ? Image.asset(
            //                 'assets/switcher_on.png',
            //               )
            //             : Image.asset(
            //                 'assets/switcher_off.png',
            //               ),
            //       ),
            //     ),
            //   ],
            // ),
            // drawer: DrawerClass(),
        //     body: ListView(
        //       children: [
        //         Container(
        //           padding: EdgeInsets.symmetric(
        //             horizontal: 20,
        //           ),
        //           height: 45,
        //           width: double.infinity,
        //           color: Color(
        //             0xFFFEBC52,
        //           ),
        //           child: Center(
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               children: [
        //                 Text(
        //                   'You have 10 new requests',
        //                   style: GoogleFonts.aBeeZee(
        //                     fontSize: 15,
        //                     fontWeight: FontWeight.bold,
        //                     color: Color(
        //                       0xFF242A37,
        //                     ),
        //                   ),
        //                   textAlign: TextAlign.left,
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //         Container(
        //           width: double.infinity,
        //           height: 230,
        //           decoration: BoxDecoration(
        //             boxShadow: [
        //               BoxShadow(
        //                 color: Colors.black12,
        //                 blurRadius: 5,
        //                 offset: Offset(5, 0),
        //               ),
        //             ],
        //             color: Color(
        //               0xFFFFFFFF,
        //             ),
        //           ),
        //           child: Column(
        //             children: [
        //               Container(
        //                 padding: const EdgeInsets.symmetric(
        //                   horizontal: 20,
        //                 ),
        //                 width: double.infinity,
        //                 height: 70,
        //                 color: Color(
        //                   0xFFF7F7F7,
        //                 ),
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     Container(
        //                       child: Row(
        //                         children: [
        //                           Container(
        //                             height: 45,
        //                             width: 45,
        //                             decoration: BoxDecoration(
        //                               borderRadius: BorderRadius.circular(8),
        //                             ),
        //                             child: Image(
        //                               image: AssetImage(
        //                                 'assets/esther.png',
        //                               ),
        //                               width: 45,
        //                               height: 45,
        //                             ),
        //                           ),
        //                           SizedBox(
        //                             width: 15,
        //                           ),
        //                           Padding(
        //                             padding: const EdgeInsets.only(
        //                               top: 10,
        //                             ),
        //                             child: Column(
        //                               crossAxisAlignment:
        //                                   CrossAxisAlignment.start,
        //                               children: [
        //                                 Text(
        //                                   'Esther Berry',
        //                                   style: GoogleFonts.aBeeZee(
        //                                     fontSize: 17,
        //                                     fontWeight: FontWeight.bold,
        //                                     color: Color(
        //                                       0xFF242A37,
        //                                     ),
        //                                   ),
        //                                 ),
        //                                 SizedBox(
        //                                   height: 7,
        //                                 ),
        //                                 Row(
        //                                   children: [
        //                                     Container(
        //                                       height: 16,
        //                                       width: 110,
        //                                       decoration: BoxDecoration(
        //                                         borderRadius:
        //                                             BorderRadius.circular(8),
        //                                         color: Color(
        //                                           0xFFFEBC52,
        //                                         ),
        //                                       ),
        //                                       child: Center(
        //                                         child: Text(
        //                                           'Item Size: 3kg - 10kg',
        //                                           style: GoogleFonts.aBeeZee(
        //                                             fontSize: 10,
        //                                             fontWeight: FontWeight.w600,
        //                                             color: Color(
        //                                               0xFF242A37,
        //                                             ),
        //                                           ),
        //                                         ),
        //                                       ),
        //                                     ),
        //                                     SizedBox(
        //                                       width: 10,
        //                                     ),
        //                                     Image(
        //                                       image: AssetImage(
        //                                         'assets/cup.png',
        //                                       ),
        //                                       height: 14,
        //                                       width: 14,
        //                                     ),
        //                                   ],
        //                                 ),
        //                               ],
        //                             ),
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                     Padding(
        //                       padding: const EdgeInsets.only(
        //                         top: 10,
        //                       ),
        //                       child: Column(
        //                         crossAxisAlignment: CrossAxisAlignment.end,
        //                         children: [
        //                           Text(
        //                             '₦325.00',
        //                             style: GoogleFonts.aBeeZee(
        //                               fontSize: 17,
        //                               fontWeight: FontWeight.bold,
        //                               color: Color(
        //                                 0xFF242A37,
        //                               ),
        //                             ),
        //                           ),
        //                           SizedBox(
        //                             height: 5,
        //                           ),
        //                           Text(
        //                             '2.2 km',
        //                             style: GoogleFonts.aBeeZee(
        //                               fontSize: 15,
        //                               fontWeight: FontWeight.bold,
        //                               color: Color(
        //                                 0xFFBEC2CE,
        //                               ),
        //                             ),
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               Container(
        //                 width: double.infinity,
        //                 height: 70,
        //                 child: Padding(
        //                   padding: const EdgeInsets.symmetric(
        //                     horizontal: 20,
        //                   ),
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     children: [
        //                       Text(
        //                         'Pick up'.toUpperCase(),
        //                         style: GoogleFonts.aBeeZee(
        //                           fontSize: 11,
        //                           fontWeight: FontWeight.bold,
        //                           color: Color(
        //                             0xFFBEC2CE,
        //                           ),
        //                         ),
        //                       ),
        //                       SizedBox(
        //                         height: 6,
        //                       ),
        //                       Text(
        //                         '7958 Swift Village',
        //                         style: GoogleFonts.aBeeZee(
        //                           fontSize: 17,
        //                           fontWeight: FontWeight.w500,
        //                           color: Color(
        //                             0xFF242A37,
        //                           ),
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //               Padding(
        //                 padding: const EdgeInsets.symmetric(
        //                   horizontal: 20,
        //                 ),
        //                 child: Container(
        //                   height: 1,
        //                   width: double.infinity,
        //                   color: Color(
        //                     0xFFEFEFF4,
        //                   ),
        //                 ),
        //               ),
        //               Container(
        //                 width: double.infinity,
        //                 height: 70,
        //                 child: Padding(
        //                   padding: const EdgeInsets.symmetric(
        //                     horizontal: 20,
        //                   ),
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     children: [
        //                       Text(
        //                         'Drop off'.toUpperCase(),
        //                         style: GoogleFonts.aBeeZee(
        //                           fontSize: 11,
        //                           fontWeight: FontWeight.bold,
        //                           color: Color(
        //                             0xFFBEC2CE,
        //                           ),
        //                         ),
        //                       ),
        //                       SizedBox(
        //                         height: 6,
        //                       ),
        //                       Text(
        //                         '105 William St, Chicago, US',
        //                         style: GoogleFonts.aBeeZee(
        //                           fontSize: 17,
        //                           fontWeight: FontWeight.w500,
        //                           color: Color(
        //                             0xFF242A37,
        //                           ),
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //         SizedBox(
        //           height: 15,
        //         ),
        //        ],
        //     ),
        //   );
  }

  Future<List<Pendingpacakage>> gettTrackdetails() async {
    String url = Strings.BASE_URL + 'getpackageorder';
    final response = await http.get(Uri.parse(url));
    // print(response.body);
    return pendingpacakageFromJson(response.body);
  }
}
