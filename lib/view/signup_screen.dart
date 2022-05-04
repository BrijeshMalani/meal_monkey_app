import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart' as dio;

import '../common/common_btn.dart';
import '../common/common_textfield.dart';
import '../utility/color.dart';
import 'login_screen.dart';
import 'package:http/http.dart' as http;

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _userName = TextEditingController();
  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _globalKey = GlobalKey<ScaffoldState>();

  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        print('image path ==>>${_image!.path}');
      } else {
        print('No image selected.');
      }
    });
  }

  Future<bool> userData(
      {String? firstName,
      String? lastName,
      String? userName,
      String? passWord,
      String? imgUrl}) async {
    Map<String, dynamic> reqBody = {
      'first_name': firstName,
      'last_name': lastName,
      'username': userName,
      'password': passWord,
      'avatar': imgUrl,
    };
    http.Response response = await http.post(
      Uri.parse('https://codelineinfotech.com/student_api/User/signup.php'),
      body: reqBody,
    );
    print('=========>>${jsonDecode(response.body)}');
    var result = jsonDecode(response.body);
    return result['status'];
  }

  /// upload image server
  Future<String> sendFile({File? avatar}) async {
    MultipartFile multipartFile = await MultipartFile.fromFile(avatar!.path);
    dio.FormData formData = new dio.FormData.fromMap({'avatar': multipartFile});

    Response response = await Dio().post(
        'https://codelineinfotech.com/student_api/User/user_avatar_upload.php',
        data: formData,
        options: Options(contentType: "form-data"));

    print("avatar response: ${response.data}");
    if (response.data['url'] != null) {
      return response.data['url'];
    } else {
      return "";
    }
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
            child: Column(
              children: [
                SizedBox(height: screenSize.height * 0.03),
                GestureDetector(
                  onTap: () {
                    getImage();
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                        // image: DecorationImage(
                        //   fit: BoxFit.cover,
                        //   image: NetworkImage(
                        //                         //       'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        // ),
                      ),
                      child: _image == null
                          ? Image.network(
                              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                              fit: BoxFit.cover,
                            )
                          : Image.file(
                              _image!,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 30,
                      color: PickColor.headingColor,
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.02),
                Text(
                  'Add your details to sign up',
                  style: TextStyle(color: PickColor.Secondarycolor),
                ),
                SizedBox(height: screenSize.height * 0.03),
                commontextfield(
                  text: 'first name',
                  controller: _firstName,
                  validator: (value) {
                    if (value.isEmpty) {
                      return '*****';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: screenSize.height * 0.03),
                commontextfield(
                  text: 'last name',
                  controller: _lastName,
                  validator: (value) {
                    if (value.isEmpty) {
                      return '*****';
                    } else {
                      return null;
                    }
                  },
                ),
                // commontextfield(),
                SizedBox(height: screenSize.height * 0.03),
                commontextfield(
                  text: 'username',
                  controller: _userName,
                  validator: (value) {
                    if (value.isEmpty) {
                      return '*****';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: screenSize.height * 0.03),
                commontextfield(
                  text: 'password',
                  controller: _password,
                  validator: (value) {
                    if (value.isEmpty) {
                      return '*****';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: screenSize.height * 0.03),
                RoundedButton(
                  onPress: () async {
                    if (_formKey.currentState!.validate()) {
                      String imgUrl = await sendFile(avatar: _image);

                      bool status = await userData(
                        firstName: _firstName.text,
                        lastName: _lastName.text,
                        userName: _userName.text,
                        passWord: _password.text,
                        imgUrl: imgUrl,
                      );

                      if (status == true) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(
                              SnackBar(
                                content: Text('Register Success'),
                              ),
                            )
                            .closed
                            .then(
                              (value) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              ),
                            );
                      } else {
                        _globalKey.currentState!.showSnackBar(
                          SnackBar(
                            content: Text('Register failed'),
                          ),
                        );
                      }
                    }
                  },
                  title: 'Sign Up',
                ),
                SizedBox(height: screenSize.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account?",
                      style: TextStyle(
                        fontSize: 14,
                        color: PickColor.Secondarycolor,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Log in',
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
    );
  }
}
