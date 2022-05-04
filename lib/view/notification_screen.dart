import 'package:flutter/material.dart';

import '../utility/color.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<Map<String, dynamic>> catagories = [
    {'title': 'Your orders has been picked up', 'subtitle': 'Now'},
    {'title': 'Your order has been delivered', 'subtitle': '1 h ago'},
    {'title': 'Lorem ipsum dolor sit amet, consectetur', 'subtitle': '3 h ago'},
    {'title': 'Lorem ipsum dolor sit amet, consectetur', 'subtitle': '5 h ago'},
    {
      'title': 'Lorem ipsum dolor sit amet, consectetur ',
      'subtitle': '05 Sep 2020'
    },
    {
      'title': 'Lorem ipsum dolor sit amet, consectetur',
      'subtitle': '12 Aug 2020'
    },
    {
      'title': 'Lorem ipsum dolor sit amet, consectetur',
      'subtitle': '20 Jul 2020'
    },
    {
      'title': 'Lorem ipsum dolor sit amet, consectetur',
      'subtitle': '12 Jul 2020'
    },
  ];
  int selector = 0;
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
                    'Notification',
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
            Expanded(
              child: Container(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Container(
                      color: selector == index
                          ? Colors.grey.withOpacity(0.2)
                          : Colors.white,
                      margin: EdgeInsets.all(4),
                      child: ListTile(
                        onTap: () {
                          setState(() {
                            selector = index;
                          });
                        },
                        leading: Icon(
                          Icons.star,
                          color: PickColor.mainColor,
                        ),
                        title: Text(
                          catagories[index]['title'],
                        ),
                        subtitle: Text(
                          catagories[index]['subtitle'],
                        ),
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
