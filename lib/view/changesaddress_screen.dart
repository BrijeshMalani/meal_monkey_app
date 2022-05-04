import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utility/color.dart';

class ChangesOrderScreen extends StatefulWidget {
  const ChangesOrderScreen({Key? key}) : super(key: key);

  @override
  _ChangesOrderScreenState createState() => _ChangesOrderScreenState();
}

class _ChangesOrderScreenState extends State<ChangesOrderScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: screenSize.height * 0.02),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    print('arrow back button');
                  },
                  child: Icon(Icons.arrow_back_ios_outlined),
                ),
                SizedBox(width: screenSize.width * 0.04),
                Text(
                  'Change Address',
                  style: TextStyle(
                    fontSize: 24,
                    color: PickColor.headingColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenSize.height * 0.04),
            Container(
              height: screenSize.height * 0.7,
              width: screenSize.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/svg/Capture.png'),
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: GestureDetector(
                  onTap: () {
                    print('search Address');
                  },
                  child: Icon(Icons.search),
                ),
                hintText: 'Search Address',
                hintStyle: TextStyle(
                  color: Color(0xffB6B7B7),
                ),
                filled: true,
                fillColor: Color(0xffF2F2F2),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.star, color: PickColor.mainColor),
                ),
                SizedBox(width: screenSize.width * 0.03),
                Text('Choose a saved place'),
                Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
