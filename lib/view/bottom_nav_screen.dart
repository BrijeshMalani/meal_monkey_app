import 'package:flutter/material.dart';
import 'package:meal_monkey_app/view/profile_screen.dart';

import '../utility/color.dart';
import 'dessert_screen.dart';
import 'latestoffer_screen.dart';
import 'menu_screen.dart';
import 'morescreen.dart';
import 'myorder_screen.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int bottomSelect = 0;

  List screens = [
    MenuScreen(),
    LatestOffer(),
    DessertScreen(),
    ProfileScreen(),
    MoreScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: screens[bottomSelect],
      floatingActionButton: FloatingActionButton(
        backgroundColor: bottomSelect == 2 ? PickColor.mainColor : Colors.grey,
        onPressed: () {
          setState(() {
            bottomSelect = 2;
          });
        },
        child: Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        notchMargin: 5,
        child: Container(
          height: screenSize.height * 0.1,
          // width: screenSize.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              bottomNavWidget(
                  index: 0,
                  icon: Icons.apps,
                  onTap: () {
                    setState(() {
                      bottomSelect = 0;
                    });
                  },
                  screenSize: screenSize,
                  title: 'Menu'),
              bottomNavWidget(
                  index: 1,
                  icon: Icons.shopping_bag,
                  onTap: () {
                    setState(() {
                      bottomSelect = 1;
                    });
                  },
                  screenSize: screenSize,
                  title: 'Offers'),
              bottomNavWidget(
                  index: 3,
                  icon: Icons.person,
                  onTap: () {
                    setState(() {
                      bottomSelect = 3;
                    });
                  },
                  screenSize: screenSize,
                  title: 'Profile'),
              bottomNavWidget(
                  index: 4,
                  icon: Icons.more_time,
                  onTap: () {
                    setState(() {
                      bottomSelect = 4;
                    });
                  },
                  screenSize: screenSize,
                  title: 'More'),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomNavWidget(
      {required int index,
      required Size screenSize,
      required IconData icon,
      required String title,
      required GestureTapCallback onTap}) {
    return Column(
      children: [
        SizedBox(height: screenSize.height * 0.03),
        GestureDetector(
          onTap: onTap,
          child: Icon(
            icon,
            color:
                bottomSelect == index ? PickColor.mainColor : Color(0xffB6B7B7),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color:
                bottomSelect == index ? PickColor.mainColor : Color(0xffB6B7B7),
          ),
        ),
      ],
    );
  }
}
