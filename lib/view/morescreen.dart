import 'package:flutter/material.dart';
import 'package:meal_monkey_app/view/paymentdetail_screen.dart';

import '../utility/color.dart';
import 'aboutus_screen.dart';
import 'myorder_screen.dart';
import 'notification_screen.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  List<Map<String, dynamic>> catagories = [
    {'image': 'assets/svg/002-income.png', 'text': 'Payment Details'},
    {'image': 'assets/svg/shopping-bag.png', 'text': 'My Orders'},
    {'image': 'assets/svg/Group 8081.png', 'text': 'Notifications'},
    {'image': 'assets/svg/004-inbox-mail.png', 'text': 'Inbox'},
    {'image': 'assets/svg/005-info.png', 'text': 'About Us'},
  ];
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          height: screenSize.height * 0.14,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'More',
                    style: TextStyle(
                      color: PickColor.headingColor,
                      fontSize: 24,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      print('GestureDetector');
                    },
                    child: Icon(Icons.shopping_cart),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentScreen(),
                ),
              );
            },
            child: Container(
              height: screenSize.height * 0.1,
              width: screenSize.width,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(width: screenSize.width * 0.05),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    child: Image(
                      image: AssetImage(
                        "assets/svg/002-income.png",
                      ),
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.05),
                  Text(
                    "'Payment Details",
                    style: TextStyle(
                      fontSize: 14,
                      color: PickColor.headingColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyOrderScreen(),
                ),
              );
            },
            child: Container(
              height: screenSize.height * 0.1,
              width: screenSize.width,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(width: screenSize.width * 0.05),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    child: Image(
                      image: AssetImage(
                        "assets/svg/shopping-bag.png",
                      ),
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.05),
                  Text(
                    "My Orders",
                    style: TextStyle(
                      fontSize: 14,
                      color: PickColor.headingColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationScreen(),
                ),
              );
            },
            child: Container(
              height: screenSize.height * 0.1,
              width: screenSize.width,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(width: screenSize.width * 0.05),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    child: Image(
                      image: AssetImage(
                        'assets/svg/Group 8081.png',
                      ),
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.05),
                  Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: 14,
                      color: PickColor.headingColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationScreen(),
                ),
              );
            },
            child: Container(
              height: screenSize.height * 0.1,
              width: screenSize.width,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(width: screenSize.width * 0.05),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    child: Image(
                      image: AssetImage(
                        'assets/svg/004-inbox-mail.png',
                      ),
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.05),
                  Text(
                    "Inbox",
                    style: TextStyle(
                      fontSize: 14,
                      color: PickColor.headingColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutUsScreen(),
                ),
              );
            },
            child: Container(
              height: screenSize.height * 0.1,
              width: screenSize.width,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(width: screenSize.width * 0.05),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    child: Image(
                      image: AssetImage(
                        'assets/svg/005-info.png',
                      ),
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.05),
                  Text(
                    "About Us",
                    style: TextStyle(
                      fontSize: 14,
                      color: PickColor.headingColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
