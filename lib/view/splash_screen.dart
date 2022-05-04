import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utility/color.dart';
import 'create_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future navigate() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => CreateScreen(),
      ),
    );
  }

  @override
  void initState() {
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenSize.height,
            width: screenSize.width,
            child: SvgPicture.asset(
              'assets/svg/splash_bg.svg',
            ),
          ),
          Container(
            height: screenSize.height,
            width: screenSize.width,
            color: Colors.white.withOpacity(0.8),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/svg/Logo.svg',
                  height: 150,
                  width: 150,
                ),
                SizedBox(
                  height: screenSize.width * 0.09,
                ),
                RichText(
                  text: TextSpan(
                    text: 'MEAL',
                    style: TextStyle(
                        color: PickColor.mainColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: 'MONKEY',
                        style: TextStyle(
                            color: PickColor.headingColor,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Text(
                  'FOOD DELIVERY',
                  style: TextStyle(
                      letterSpacing: 5, color: PickColor.headingColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
