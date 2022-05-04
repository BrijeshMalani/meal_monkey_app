import 'package:flutter/material.dart';

import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../common/common_btn.dart';
import '../utility/color.dart';
import 'newpassword_screen.dart';

class OtpSentScreen extends StatefulWidget {
  const OtpSentScreen({Key? key}) : super(key: key);

  @override
  _OtpSentScreenState createState() => _OtpSentScreenState();
}

class _OtpSentScreenState extends State<OtpSentScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: screenSize.height * 0.06),
          Center(
            child: Text(
              'We have sent an OTP to\nyour Mobile',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: PickColor.headingColor,
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.03),
          Center(
            child: Text(
              'Please check your mobile number 071*****12\ncontinue to reset your password',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: PickColor.Secondarycolor,
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.03),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 40,
              style: TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceBetween,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
          ),
          SizedBox(height: screenSize.height * 0.04),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RoundedButton(
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewPasswordScreen(),
                  ),
                );
              },
              title: 'Next',
            ),
          ),
          SizedBox(height: screenSize.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Didn't Receive? ",
                style: TextStyle(
                  fontSize: 14,
                  color: PickColor.Secondarycolor,
                ),
              ),
              InkWell(
                onTap: () {
                  print('Sign Up buttons');
                },
                child: Text(
                  'Click Here',
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
      )),
    );
  }
}
