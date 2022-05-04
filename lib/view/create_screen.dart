import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey_app/view/signup_screen.dart';

import '../common/common_btn.dart';
import '../utility/color.dart';
import 'login_screen.dart';

class CreateScreen extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                child: SvgPicture.asset(
                  'assets/svg/Organe top shape.svg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 15,
                left: 125,
                child: SvgPicture.asset('assets/svg/Logo.svg'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Meal',
                style: TextStyle(
                  fontSize: 34,
                  color: PickColor.mainColor,
                ),
              ),
              Text(
                'Monkey',
                style: TextStyle(
                  fontSize: 34,
                  color: PickColor.headingColor,
                ),
              ),
            ],
          ),
          SizedBox(height: screenSize.height * 0.01),
          Text(
            'Food Delivery',
            style: TextStyle(
              color: PickColor.headingColor,
              fontSize: 10,
            ),
          ),
          SizedBox(height: screenSize.height * 0.04),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Discover the best foods from over 1,000\n restaurants and fast delivery to your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: PickColor.Secondarycolor,
                fontSize: 13,
              ),
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
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              title: 'Log in',
            ),
          ),
          SizedBox(height: screenSize.height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              minWidth: double.infinity,
              height: 50,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: PickColor.mainColor,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ),
                );
              },
              child: Text(
                'Create an Account',
                style: TextStyle(color: PickColor.mainColor, fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
