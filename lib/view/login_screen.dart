import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:meal_monkey_app/view/resetpassword_screen.dart';
import 'package:meal_monkey_app/view/signup_screen.dart';

import '../common/common_btn.dart';
import '../common/common_textfield.dart';
import '../utility/color.dart';
import 'catagories_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userName = TextEditingController();
  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _globalKey = GlobalKey<ScaffoldState>();

  Future<bool> logIn({
    String? userName,
    String? passWord,
  }) async {
    Map<String, dynamic> reqBody = {
      'username': userName,
      'password': passWord,
    };
    http.Response response = await http.post(
      Uri.parse('https://codelineinfotech.com/student_api/User/login.php'),
      body: reqBody,
    );
    print('===>${response.body}');
    var result = jsonDecode(response.body);
    return result['status'];
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _globalKey,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: screenSize.height * 0.03),
                  Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: PickColor.headingColor,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  Text(
                    'Add your details to login',
                    style: TextStyle(
                      fontSize: 14,
                      color: PickColor.Secondarycolor,
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.04),
                  commontextfield(
                    controller: _userName,
                    validator: (value) {
                      if (value.isEmpty) {
                        return '***';
                      } else {
                        return null;
                      }
                    },
                    text: 'username',
                  ),
                  SizedBox(height: screenSize.height * 0.03),
                  commontextfield(
                    controller: _password,
                    validator: (value) {
                      if (value.isEmpty) {
                        return '***';
                      } else {
                        return null;
                      }
                    },
                    text: 'Password',
                  ),
                  SizedBox(height: screenSize.height * 0.03),
                  RoundedButton(
                    title: 'Log in',
                    onPress: () async {
                      if (_formKey.currentState!.validate()) {
                        bool status = await logIn(
                          userName: _userName.text,
                          passWord: _password.text,
                        );
                        if (status == true) {
                          _globalKey.currentState!
                              .showSnackBar(
                                SnackBar(
                                  content: Text('Successful Login'),
                                ),
                              )
                              .closed
                              .then(
                                (value) => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CatagoriesScreen(),
                                  ),
                                ),
                              );
                        } else {
                          _globalKey.currentState?.showSnackBar(
                            SnackBar(
                              content: Text('login unsuccess'),
                            ),
                          );
                        }
                      }
                      print('log in button');
                    },
                  ),
                  SizedBox(height: screenSize.height * 0.03),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPassword(),
                        ),
                      );
                    },
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                          color: PickColor.Secondarycolor, fontSize: 14),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.05),
                  Text(
                    'or Login With',
                    style: TextStyle(
                        color: PickColor.Secondarycolor, fontSize: 14),
                  ),
                  SizedBox(height: screenSize.height * 0.03),
                  FlatButton(
                    color: Color(0xff367FC0),
                    minWidth: double.infinity,
                    height: 50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {
                      print('Facebook buttons');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset('assets/svg/facebook-letter-logo.svg'),
                        SizedBox(width: screenSize.width * 0.09),
                        Text(
                          'Login with Facebook',
                          style: TextStyle(
                            fontSize: 16,
                            color: PickColor.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.03),
                  FlatButton(
                    color: Color(0xffDD4B39),
                    minWidth: double.infinity,
                    height: 50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {
                      print('Google buttons');
                    },
                    child: Row(
                      children: [
                        SizedBox(width: screenSize.width * 0.13),
                        SvgPicture.asset('assets/svg/google-plus-logo.svg'),
                        SizedBox(width: screenSize.width * 0.06),
                        Text(
                          'Login with Google',
                          style: TextStyle(
                            fontSize: 16,
                            color: PickColor.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account?",
                        style: TextStyle(
                          fontSize: 14,
                          color: PickColor.Secondarycolor,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );

                          print('Sign Up buttons');
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: PickColor.mainColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
