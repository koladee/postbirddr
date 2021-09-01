import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:postbird/driver/home_online-swip_up.dart';
import 'package:postbird/driver/strings.dart';
// import 'package:postbird/Screens/Home3.dart';
// import 'package:postbird/Screens/strings.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

enum LoginStatus { notSignIn, signIn }

class _LoginState extends State<Login> {
  bool obsureText = true;
  final RoundedLoadingButtonController _btnController1 =
      RoundedLoadingButtonController();

  final RoundedLoadingButtonController _btnController2 =
      RoundedLoadingButtonController();
  LoginStatus _loginStatus = LoginStatus.notSignIn;

  void _doSomething(RoundedLoadingButtonController controller) async {
    Timer(Duration(seconds: 3), () {
      check();
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => NavBar()));
    });
  }

  String email, password;

  final _key = new GlobalKey<FormState>();

  check() {
    final form = _key.currentState;
    if (form.validate()) {
      form.save();
      login();
    } else
      _btnController2.reset();
  }

  Future login() async {
    final response =
        await http.post(Uri.parse(Strings.BASE_URL + 'login'), body: {
      "email": email,
      "password": password,
    });

    final data = jsonDecode(response.body);
    print(data);
    // return data;

    int value = data['value'];
    String tokenAPI = data['token'];
    bool success = data['success'];
    if (success == false) loginToastfF();
    var user = data['data'];
    String message = data['message'];
    String emailAPI = user['email'];
    String fullnameAPI = user['name'];
    String roleAPI = user['roleid'];
    String userid = user['id'].toString();
    print(roleAPI);
    if (success == true && roleAPI == '1') {
      setState(() {
        _loginStatus = LoginStatus.signIn;
        savePref(value, emailAPI, fullnameAPI, userid, tokenAPI);
        _btnController2.success();
        Future.delayed(const Duration(milliseconds: 1500), () {
          Navigator.pushReplacement(
            context,
            new MaterialPageRoute(
                builder: (context) => new HomeOnlineSwipeUp()),
          );
        });
      });
      print(message);
      loginToast(message);
    } else {
      print("fail");
      print(message);
      loginToastf(message);
      _btnController2.reset();
    }
  }

  loginToast(String toast) {
    return Fluttertoast.showToast(
        msg: toast,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white);
  }

  loginToastf(String toast) {
    return Fluttertoast.showToast(
        msg: 'Something is Wrong',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }

  loginToastfF() {
    Fluttertoast.showToast(
        msg: 'Check Login Details',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white);
    _btnController2.reset();
  }

  savePref(
    int value,
    String email,
    String fullname,
    String userid,
    String token,
  ) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setInt("value", value);
      preferences.setString("name", fullname);
      preferences.setString("email", email);
      preferences.setString("id", userid);
      preferences.setString("token", token);
    });
  }

  var value;

  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      value = preferences.getInt("value");
      _loginStatus = value == 1 ? LoginStatus.signIn : LoginStatus.notSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    // _btnController2.reset();
    return Scaffold(
      backgroundColor: Color(
        0xFFFFFFFF,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Form(
              key: _key,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      'Welcome Back',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'aBeeZee',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(
                          0xFF000000,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontFamily: 'aBeeZee',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(
                          0xFF1B1B1B,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (e) {
                        if (e.isEmpty) {
                          return "Please Enter your email No";
                        }
                      },
                      onSaved: (e) => email = e,
                      onChanged: (String text) {
                        setState(() {
                          email = text;
                        });
                        print(email);
                      },
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color(
                              0xFFDEDEDE,
                            ),
                          ),
                        ),
                        labelStyle: TextStyle(
                          fontFamily: 'aBeeZee',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(
                            0xFF1B1B1B,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color(
                              0xFFFEBC52,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Password',
                      style: TextStyle(
                        fontFamily: 'aBeeZee',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(
                          0xFF1B1B1B,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (e) {
                        if (e.isEmpty) {
                          return "Please Enter your Phone No";
                        }
                      },
                      onSaved: (e) => password = e,
                      onChanged: (String text) {
                        setState(() {
                          password = text;
                        });
                      },
                      obscureText: obsureText,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (obsureText = false) return obsureText = true;

                              if (obsureText = true) return obsureText = false;
                            });
                          },
                          child: obsureText
                              ? Icon(
                                  Icons.visibility_outlined,
                                  color: Color(
                                    0xFF464646,
                                  ),
                                )
                              : Icon(
                                  Icons.visibility_off_outlined,
                                  color: Color(
                                    0xFF464646,
                                  ),
                                ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color(
                              0xFFDEDEDE,
                            ),
                          ),
                        ),
                        labelStyle: TextStyle(
                          fontFamily: 'aBeeZee',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(
                            0xFF1B1B1B,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color(
                              0xFFFEBC52,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    RoundedLoadingButton(
                      color: Color(0xFFFEBC52),
                      successColor: Color(0xFFFEBC52),
                      controller: _btnController2,
                      onPressed: () => _doSomething(_btnController2),
                      valueColor: Colors.black,
                      borderRadius: 10,
                      child: Text('Login',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'aBeeZee',
                              color: Colors.white)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontFamily: 'aBeeZee',
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Color(
                              0xFFFEBC52,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
