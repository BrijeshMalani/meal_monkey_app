import 'package:flutter/material.dart';

import '../common/common_btn.dart';
import '../utility/color.dart';
import 'checkout_screen.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  _MyOrderScreenState createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  bool icon = false;
  bool icon1 = false;
  bool isScroll = true;
  List<Map<String, dynamic>> catagories = [
    {
      'title': 'Beef Burger x1',
      'subtitle': '\$16',
      'color': PickColor.headingColor
    },
    {
      'title': 'Classic Burger x1',
      'subtitle': '\$14',
      'color': PickColor.headingColor
    },
    {
      'title': 'Cheese Chicken Burger x1',
      'subtitle': '\$17',
      'color': PickColor.headingColor
    },
    {
      'title': 'Chicken Legs Basket x1',
      'subtitle': '\$15',
      'color': PickColor.headingColor
    },
    {
      'title': 'French Fries Large x1',
      'subtitle': '\$6',
      'color': PickColor.headingColor
    },
    {
      'title': 'Delivery Instrusctions',
      'subtitle': '+ Add notes',
      'color': PickColor.mainColor
    },
    {
      'title': 'Sub Total1',
      'subtitle': '\$68',
      'color': PickColor.mainColor,
    },
    {
      'title': 'Delivery Cost',
      'subtitle': '\$2',
      'color': PickColor.mainColor,
    },
    {
      'title': 'Total',
      'subtitle': '\$70',
      'color': PickColor.mainColor,
    },
  ];
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: screenSize.height * 0.03),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      print('arrow back buttons');
                    },
                    child: Icon(Icons.arrow_back_ios_outlined),
                  ),
                  SizedBox(width: screenSize.width * 0.03),
                  Text(
                    'My Order',
                    style:
                        TextStyle(fontSize: 24, color: PickColor.headingColor),
                  ),
                  Switch(
                      value: isScroll,
                      onChanged: (isScroll) {
                        setState(() {
                          this.isScroll = isScroll;
                        });
                      })
                ],
              ),
              SizedBox(height: screenSize.height * 0.03),
              Row(
                children: [
                  Container(
                    height: screenSize.height * 0.1,
                    width: screenSize.width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/svg/ilya-mashkov-_qxbJUr9RqI-unsplash.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.03),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'King Burgers',
                        style: TextStyle(
                          color: PickColor.headingColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                icon = !icon;
                              });
                              print('Star buttons');
                            },
                            child: icon
                                ? Icon(
                                    Icons.star_border,
                                    color: PickColor.mainColor,
                                    size: 15,
                                  )
                                : Icon(
                                    Icons.star,
                                    color: PickColor.mainColor,
                                    size: 15,
                                  ),
                          ),
                          Text(
                            '4.9',
                            style: TextStyle(
                              color: PickColor.mainColor,
                              fontSize: 11,
                            ),
                          ),
                          Text(
                            '(124 ratings)',
                            style: TextStyle(
                              fontSize: 12,
                              color: PickColor.Placeholdercolor,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'BurgerWestern Food',
                        style: TextStyle(
                            color: PickColor.Placeholdercolor, fontSize: 12),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                icon1 = !icon;
                              });
                              print('location buttons');
                            },
                            child: icon1
                                ? Icon(
                                    Icons.location_on_outlined,
                                    color: PickColor.mainColor,
                                    size: 15,
                                  )
                                : Icon(
                                    Icons.location_on,
                                    color: PickColor.mainColor,
                                    size: 15,
                                  ),
                          ),
                          Text(
                            'No 03, 4th Lane, Newyork',
                            style: TextStyle(
                              color: PickColor.Placeholdercolor,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.03),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    physics: isScroll
                        ? BouncingScrollPhysics()
                        : NeverScrollableScrollPhysics(),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return Container(
                        height: screenSize.height * 0.06,
                        width: screenSize.width,
                        margin: EdgeInsets.all(1),
                        color: Colors.grey.withOpacity(0.2),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Text(
                                catagories[index]['title'],
                              ),
                              Spacer(),
                              Text(
                                catagories[index]['subtitle'],
                                style: TextStyle(
                                  color: catagories[index]['color'],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              RoundedButton(
                title: 'Checkout',
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckOutScreen(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
