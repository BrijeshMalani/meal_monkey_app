import 'package:flutter/material.dart';

import '../common/common_btn.dart';
import '../common/common_textfield.dart';
import '../utility/color.dart';
import 'otpsent_screen.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: screenSize.height * 0.04),
              Center(
                child: Text(
                  'Reset Password',
                  style: TextStyle(
                    color: PickColor.headingColor,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.02),
              Text(
                'Please enter your email to receive a \nlink to  create a new password via email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: PickColor.Secondarycolor,
                ),
              ),
              SizedBox(height: screenSize.height * 0.04),
              commontextfield(text: 'Email'),
              SizedBox(height: screenSize.height * 0.04),
              RoundedButton(
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtpSentScreen(),
                    ),
                  );
                },
                title: 'send',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
