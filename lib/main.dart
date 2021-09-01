import 'package:flutter/material.dart';
import 'package:postbird/driver/My%20Account.dart';
import 'package:postbird/driver/history.dart';
import 'package:postbird/driver/home_oneline-booking_details-go_to_pickup.dart';
import 'package:postbird/driver/home_online-boooking_details.dart';
import 'package:postbird/driver/home_online-swip_up.dart';
import 'package:postbird/driver/home_online.dart';
import 'package:postbird/driver/invite_friends.dart';
import 'package:postbird/driver/invite_friends_list.dart';
import 'package:postbird/driver/alogin.dart';
import 'package:postbird/driver/login.dart';
import 'package:postbird/driver/message_detail.dart';
import 'package:postbird/driver/my_wallet.dart';
import 'package:postbird/driver/signup.dart';
import 'package:postbird/driver/vehicle_management.dart';
import 'package:postbird/driver/vehicle_management_add.dart';
import 'package:postbird/screens/account/change_password.dart';
import 'package:postbird/screens/account/edit_profile.dart';
import 'package:postbird/screens/account/help&FAQ.dart';
import 'package:postbird/screens/account/notification.dart';
import 'package:postbird/screens/account/track_package_1.dart';
import 'package:postbird/screens/account/track_package_2.dart';
import 'package:postbird/screens/account/track_package_3.dart';
import 'package:postbird/screens/home/guide_page.dart';
import 'package:postbird/screens/home/recipient_detail.dart';
import 'package:postbird/screens/home/select_date.dart';
import 'package:postbird/screens/home/sender-create_order.dart';
import 'package:postbird/screens/home/sender-recipient_detail.dart';
import 'package:postbird/screens/home/shipper_detail.dart';
import 'package:postbird/screens/home/start_shipment.dart';
import 'package:postbird/screens/inbox/chat.dart';
import 'package:postbird/screens/register/create_account.dart';
import 'package:postbird/screens/register/create_account_2.dart';
import 'package:postbird/screens/register/create_account_3.dart';
import 'package:postbird/screens/register/sign_up.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'driver/Account Edit.dart';
import 'driver/history_details.dart';
import 'driver/home_online-booking_detail-to_pick_up-full.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
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
      // profilepic = sharedPreferences.getString("profilepic");
      mainwallet = sharedPreferences.getString("balance");
    });
    // print(nameS);
   }

   

  @override
  void initState() {
    // TODO: implement initState
    getCredential();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: id == null ? Login() : HomeOnlineSwipeUp(),
      routes: {
        '/create_account': (context) => CreateAccount(),
        '/create_account_2': (context) => CreateAccount2(),
        '/create_account_3': (context) => CreateAccount3(),
        '/sign_up': (context) => SignUp(),
        '/logout': (context) => Login(),
        '/guide_page': (context) => GuidePage(),
        '/start_shipment': (context) => StartShipment(),
        '/select_date': (context) => SelectDate(),
        '/shipper_detail': (context) => ShiperDetail(),
        '/recipient_detail': (context) => RecipientDetail(),
        '/sender-create_order': (context) => SenderCreateOrder(),
        '/sender-recipient_order': (context) => SenderRecipientDetail(),
        '/chat': (context) => Chat(),
        '/change_password': (context) => ChangePassword(),
        '/edit_profile': (context) => EditProfile(),
        '/FAQ': (context) => FAQ(),
        '/help': (context) => Help(),
        '/notification': (context) => Notifications(),
        '/update': (context) => Update(),
        '/track_package_1': (context) => TrackPackage1(),
        '/track_package_2': (context) => TrackPackage2(),
        '/track_package_3': (context) => TrackPackage3(),
        '/history': (context) => History(),
        '/home_online': (context) => HomeOnlineSwipeUp(),
        '/invite_friends': (context) => InviteFriends(),
        '/invite_friends_list': (context) => InviteFriendsList(),
        '/vehicle_management': (context) => VehicleManagement(),
        '/vehicle_management_add': (context) => VehicleManagementAdd(),
        '/my_wallet': (context) => MyWallet(),
        '/home_online-booking_details': (context) => HomeOnlineBookingDetails(),
        '/message_detail': (context) => MessageDetail(),
        '/home_onlline-booking_details-go_to_pickup': (context) => HomeOnlineBookingDetailsGoToPickUp(),
        '/history_details': (context) => HistoryDetails(),
      },
    );
  }
}
