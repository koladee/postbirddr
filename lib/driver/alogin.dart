// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:postbird/driver/home_online-swip_up.dart';
// import 'package:postbird/driver/home_online.dart';
// import 'package:postbird/driver/signup.dart';

// class Login extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: Color(
//         0xFFFEBC52,
//       ),
//       body: SafeArea(
//         child: ListView(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   height: height,
//                   child: Column(
//                     children: [
//                       Expanded(
//                         child: Container(
//                           width: double.infinity,
//                           color: Color(
//                             0xFFFEBC52,
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.only(
//                               top: 40,
//                               bottom: 140,
//                             ),
//                             child: Image(
//                               height: 20,
//                               width: 20,
//                               image: AssetImage(
//                                 'assets/Group.png',
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 2,
//                         child: Container(
//                           width: double.infinity,
//                           color: Color(
//                             0xFFF7F8FA,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     right: 20,
//                     left: 20,
//                     top: 180,
//                   ),
//                   child: Container(
//                     width: double.infinity,
//                     height: 330,
//                     decoration: BoxDecoration(
//                       color: Color(
//                         0xFFFFFFFF,
//                       ),
//                       borderRadius: BorderRadius.circular(8),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey,
//                           blurRadius: 5,
//                           offset: Offset(0, 5),
//                         ),
//                       ],
//                     ),
//                     padding: EdgeInsets.all(20),
//                     child: Column(
//                       children: [
//                         RichText(
//                           text: TextSpan(
//                             text: 'Login',
//                             style: GoogleFonts.aBeeZee(
//                               fontSize: 35,
//                               color: Color(
//                                 0xFF242A37,
//                               ),
//                               fontWeight: FontWeight.w600,
//                             ),
//                             children: [
//                               TextSpan(
//                                 text: 'with your phone number',
//                                 style: GoogleFonts.aBeeZee(
//                                   fontSize: 35,
//                                   color: Color(
//                                     0xFF242A37,
//                                   ),
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 30,
//                         ),
//                         Expanded(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                   border: Border.all(
//                                     color: Color(
//                                       0xFFDEDEDE,
//                                     ),
//                                   ),
//                                   borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(8),
//                                     bottomLeft: Radius.circular(8),
//                                   ),
//                                 ),
//                                 width: 92,
//                                 height: 62,
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.only(
//                                         left: 5,
//                                       ),
//                                       child: Image(
//                                         width: 42,
//                                         height: 26,
//                                         image: AssetImage(
//                                           'assets/Image2.png',
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 2,
//                                     ),
//                                     Icon(
//                                       Icons.arrow_drop_down,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 flex: 3,
//                                 child: Container(
//                                   width: 236,
//                                   child: TextFormField(
//                                     keyboardType: TextInputType.phone,
//                                     style: GoogleFonts.aBeeZee(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w700,
//                                       color: Color(
//                                         0xFF1B1B1B,
//                                       ),
//                                     ),
//                                     decoration: InputDecoration(
//                                       enabledBorder: OutlineInputBorder(
//                                         borderRadius: BorderRadius.only(
//                                           topRight: Radius.circular(8),
//                                           bottomRight: Radius.circular(8),
//                                         ),
//                                         borderSide: BorderSide(
//                                           color: Color(
//                                             0xFFDEDEDE,
//                                           ),
//                                         ),
//                                       ),
//                                       prefixText: '+234   ',
//                                       prefixStyle: GoogleFonts.aBeeZee(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w700,
//                                         color: Color(
//                                           0xFF1B1B1B,
//                                         ),
//                                       ),
//                                       suffixIcon: Padding(
//                                         padding: const EdgeInsets.all(15.0),
//                                         child: Image.asset(
//                                           'assets/close.png',
//                                           height: 5,
//                                           width: 5,
//                                         ),
//                                       ),
//                                       labelStyle: GoogleFonts.aBeeZee(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w700,
//                                         color: Color(
//                                           0xFF1B1B1B,
//                                         ),
//                                       ),
//                                       focusedBorder: OutlineInputBorder(
//                                         borderRadius: BorderRadius.only(
//                                           topRight: Radius.circular(8),
//                                           bottomRight: Radius.circular(8),
//                                         ),
//                                         borderSide: BorderSide(
//                                           color: Color(
//                                             0xFFFEBC52,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 40,
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.pushReplacement(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) {
//                                   return HomeOnlineSwipeUp();
//                                 },
//                               ),
//                             );
//                           },
//                           child: Container(
//                             width: double.infinity,
//                             height: 50,
//                             decoration: BoxDecoration(
//                               color: Color(
//                                 0xFF242A37,
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey,
//                                   blurRadius: 5,
//                                   offset: Offset(0, 5),
//                                 ),
//                               ],
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 'NEXT',
//                                 style: GoogleFonts.aBeeZee(
//                                   fontWeight: FontWeight.w700,
//                                   fontSize: 17,
//                                   color: Color(
//                                     0xFFFFFFFF,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: width * 0.25,
//                   bottom: 30,
//                   child: Center(
//                     child: Container(
//                       child: Center(
//                         child: Row(
//                           children: [
//                             Text(
//                               'Don\'t have an account? ',
//                               style: GoogleFonts.aBeeZee(
//                                 fontSize: 13,
//                                 fontWeight: FontWeight.w400,
//                                 color: Color(
//                                   0xFF242A37,
//                                 ),
//                               ),
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 Navigator.pushReplacement(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (contect) {
//                                       return Signup();
//                                     },
//                                   ),
//                                 );
//                               },
//                               child: Text(
//                                 'Sign Up',
//                                 style: GoogleFonts.aBeeZee(
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.w700,
//                                   color: Color(
//                                     0xFF242A37,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
