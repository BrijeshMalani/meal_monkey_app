import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utility/color.dart';

class DessertScreen extends StatefulWidget {
  @override
  _DessertScreenState createState() => _DessertScreenState();
}

class _DessertScreenState extends State<DessertScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: screenSize.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('arrow back buttons');
                      },
                      child: Icon(Icons.arrow_back_ios_sharp),
                    ),
                    SizedBox(width: screenSize.width * 0.03),
                    Text(
                      'Payment Details',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: GestureDetector(
                      onTap: () {
                        print('search Address');
                      },
                      child: Icon(Icons.search),
                    ),
                    hintText: 'Search Food',
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
              ),
              SizedBox(height: screenSize.height * 0.03),
              Image(
                image: AssetImage('assets/svg/Component 9 – 1.png'),
              ),
              Image(
                image: AssetImage('assets/svg/Component 9 – 2.png'),
              ),
              Image(
                image: AssetImage('assets/svg/Component 9 – 3.png'),
              ),
              Image(
                image: AssetImage('assets/svg/Component 9 – 4.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
