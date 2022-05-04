import 'package:flutter/material.dart';
import 'package:meal_monkey_app/view/successful.dart';

import '../common/common_btn.dart';
import '../common/common_textfield.dart';
import '../utility/color.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  _NewPasswordScreenState createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: screenSize.height * 0.05),
              Center(
                child: Text(
                  'New Password',
                  style: TextStyle(
                    fontSize: 30,
                    color: PickColor.headingColor,
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.02),
              Text(
                'Please enter your email to receive a\nlink to  create a new password via email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: PickColor.Secondarycolor,
                ),
              ),
              SizedBox(height: screenSize.height * 0.06),
              commontextfield(text: 'New Password'),
              SizedBox(height: screenSize.height * 0.04),
              commontextfield(text: 'Confirm Password'),
              SizedBox(height: screenSize.height * 0.04),
              RoundedButton(
                  title: 'Next',
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Success(),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
