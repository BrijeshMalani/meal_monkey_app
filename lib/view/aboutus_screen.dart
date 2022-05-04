import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utility/color.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: screenSize.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      print('arrow back buttons');
                    },
                    child: Icon(Icons.arrow_back_ios_sharp),
                  ),
                  SizedBox(width: screenSize.width * 0.03),
                  Text(
                    'About Us',
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
            SizedBox(height: screenSize.height * 0.04),
            Expanded(
              child: Container(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(
                        Icons.star,
                        color: PickColor.mainColor,
                      ),
                      title: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                        textAlign: TextAlign.justify,
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
