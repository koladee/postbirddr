import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:postbird/driver/drawer.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  DateTime selectedDate = DateTime.now();
  int currentDateSelectedIndex = 0;
  ScrollController scrollController = ScrollController();
  List<String> listOfMonths = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];

  List<String> listOfDays = [
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
    "Sun",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xFFF7F8FA,
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(
            0xFFFEBC52,
          ),
        ),
        title: Text(
          'History',
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
      body: ListView(
        children: [
          Container(
            height: 100,
            color: Color(
              0xFFFFFFFF,
            ),
            child: Center(
              child: ListView.separated(
                reverse: true,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(
                        () {
                          currentDateSelectedIndex = index;
                          selectedDate = DateTime.now().subtract(
                            Duration(days: index),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 15,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                          2,
                          10,
                          2,
                          10,
                        ),
                        height: 60,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: currentDateSelectedIndex == index
                              ? Border.all(
                                  color: Color(
                                    0xFFFEBC52,
                                  ),
                                  width: 1.5,
                                )
                              : null,
                          color: currentDateSelectedIndex == index
                              ? Color(
                                  0xFFFFFFFF,
                                )
                              : Color(
                                  0xFFF1F2F6,
                                ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              listOfDays[DateTime.now()
                                          .subtract(
                                            Duration(
                                              days: index,
                                            ),
                                          )
                                          .weekday -
                                      1]
                                  .toString(),
                              style: GoogleFonts.aBeeZee(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: currentDateSelectedIndex == index
                                    ? Color(
                                        0xFFFEBC52,
                                      )
                                    : Color(
                                        0xFFBEC2CE,
                                      ),
                              ),
                            ),
                            Text(
                              DateTime.now()
                                  .subtract(
                                    Duration(
                                      days: index,
                                    ),
                                  )
                                  .day
                                  .toString(),
                              style: GoogleFonts.aBeeZee(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: currentDateSelectedIndex == index
                                    ? Color(
                                        0xFFFEBC52,
                                      )
                                    : Color(
                                        0xFFBEC2CE,
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 0,
                  );
                },
                itemCount: 50,
                controller: scrollController,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 20,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                      20,
                      18,
                      2,
                      2,
                    ),
                    height: 80,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(
                        0xFFFEBC52,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/car_history.png',
                          height: 28,
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Jobs',
                              style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Color(
                                  0xFF242E42,
                                ),
                              ),
                            ),
                            Text(
                              '10',
                              style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(
                                  0xFF242E42,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                      20,
                      18,
                      2,
                      2,
                    ),
                    height: 75,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(
                        0xFFFEBC52,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 28,
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Earned',
                              style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Color(
                                  0xFF242E42,
                                ),
                              ),
                            ),
                            Text(
                              '\$53,043.00',
                              style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(
                                  0xFF242E42,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 230,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 50,
                    offset: Offset(0, -5),
                  ),
                ],
                color: Color(
                  0xFFFFFFFF,
                ),
                borderRadius: BorderRadius.circular(8),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 230,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 50,
                    offset: Offset(0, -5),
                  ),
                ],
                color: Color(
                  0xFFFFFFFF,
                ),
                borderRadius: BorderRadius.circular(8),
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
                                    'assets/callie.png',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 230,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 50,
                    offset: Offset(0, -5),
                  ),
                ],
                color: Color(
                  0xFFFFFFFF,
                ),
                borderRadius: BorderRadius.circular(8),
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
                                    'assets/earl.png',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
