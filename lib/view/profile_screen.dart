import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common/common_btn.dart';
import '../common/common_textfield.dart';
import '../utility/color.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: screenSize.height * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 24,
                        color: PickColor.headingColor,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        print('Cart button');
                      },
                      child: Icon(Icons.shopping_cart),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height * 0.02),
              Image(
                image: AssetImage("assets/svg/Profile picture.png"),
              ),
              SizedBox(height: screenSize.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      print('edit buttons');
                    },
                    child: Icon(
                      Icons.edit,
                      color: PickColor.mainColor,
                      size: 15,
                    ),
                  ),
                  Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: PickColor.mainColor,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.02),
              Text(
                'Hi there Emilia!',
                style: TextStyle(
                  fontSize: 16,
                  color: PickColor.headingColor,
                ),
              ),
              SizedBox(height: screenSize.height * 0.01),
              Text(
                'Sign Out',
                style: TextStyle(
                  fontSize: 11,
                  color: PickColor.Secondarycolor,
                ),
              ),
              SizedBox(height: screenSize.height * 0.04),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: commontextfield(text: 'Name'),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: commontextfield(text: 'Email'),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: commontextfield(text: 'Mobile no'),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: commontextfield(text: 'Address'),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: commontextfield(text: 'Password'),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: commontextfield(text: 'Confirm Password'),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: RoundedButton(
                  onPress: () {},
                  title: 'Save',
                ),
              ),
              SizedBox(height: screenSize.height * 0.06),
            ],
          ),
        ),
      ),
    );
  }
}
