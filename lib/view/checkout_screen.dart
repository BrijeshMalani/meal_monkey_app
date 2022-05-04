import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/common_btn.dart';
import '../common/common_textfield.dart';
import '../utility/color.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  List<Map<String, dynamic>> catagories = [
    {
      'image': 'assets/svg/cod-removebg-preview.png',
      'title': 'Cash on delivery'
    },
    {'image': 'assets/svg/NoPath - Copy.png', 'title': '**** **** **** 2187'},
    {'image': 'assets/svg/NoPath - Copy (2).png', 'title': 'johndoe@email.com'},
  ];
  List<Map<String, dynamic>> catagories1 = [
    {'title': 'Sub Total', 'subtitle': '\$68', 'color': PickColor.headingColor},
    {
      'title': 'Delivery Cost',
      'subtitle': '\$2',
      'color': PickColor.headingColor
    },
    {'title': 'Discount', 'subtitle': '\$-4', 'color': PickColor.headingColor},
    {'title': 'Total', 'subtitle': '\$66', 'color': PickColor.headingColor},
  ];
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenSize.height * 0.02),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      print('arrow back buttons');
                    },
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: PickColor.mainColor,
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.03),
                  Text(
                    'CheckOut',
                    style:
                        TextStyle(fontSize: 24, color: PickColor.headingColor),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.03),
              Text(
                'Delivery Address',
                style: TextStyle(
                  fontSize: 13,
                  color: PickColor.Secondarycolor,
                ),
              ),
              SizedBox(height: screenSize.height * 0.02),
              Row(
                children: [
                  Text(
                    '653 Nostrand Ave.,\nBrooklyn, NY 11216',
                    style: TextStyle(
                      fontSize: 15,
                      color: PickColor.headingColor,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      print('change button');
                    },
                    child: Text(
                      'Change',
                      style: TextStyle(
                        color: PickColor.mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.05),
              Row(
                children: [
                  Text(
                    'Payment method',
                    style: TextStyle(
                      fontSize: 13,
                      color: PickColor.Secondarycolor,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    child: Icon(
                      Icons.add,
                      color: PickColor.mainColor,
                    ),
                    onTap: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    child: GestureDetector(
                                      child: Icon(
                                        Icons.clear,
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                        print('clear buttons');
                                      },
                                    ),
                                    alignment: Alignment.bottomRight,
                                  ),
                                  Text(
                                    'Add Credit/Debit Card',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: PickColor.headingColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: screenSize.height * 0.03),
                                  commontextfield(text: 'Card Number'),
                                  SizedBox(height: screenSize.height * 0.03),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Expiry',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: PickColor.headingColor,
                                        ),
                                      ),
                                      Container(
                                        height: screenSize.height * 0.07,
                                        width: screenSize.width * 0.20,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              hintText: 'MM',
                                              contentPadding:
                                                  EdgeInsets.all(20)),
                                        ),
                                      ),
                                      Container(
                                        height: screenSize.height * 0.07,
                                        width: screenSize.width * 0.20,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              hintText: 'MM',
                                              contentPadding:
                                                  EdgeInsets.all(20)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: screenSize.height * 0.03),
                                  commontextfield(text: 'Security Code'),
                                  SizedBox(height: screenSize.height * 0.02),
                                  commontextfield(text: 'First name'),
                                  SizedBox(height: screenSize.height * 0.02),
                                  commontextfield(text: 'Last name'),
                                  SizedBox(height: screenSize.height * 0.04),
                                  Row(
                                    children: [
                                      Text(
                                        'You can Remove this Card',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: PickColor.headingColor,
                                        ),
                                      ),
                                      Spacer(),
                                      Switch(
                                        value: isSwitched,
                                        onChanged: (value) {
                                          setState(() {
                                            isSwitched = value;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: screenSize.height * 0.02),
                                  MaterialButton(
                                    color: PickColor.mainColor,
                                    minWidth: screenSize.width,
                                    height: screenSize.height * 0.07,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    onPressed: () {
                                      print('Add another card');
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          child: Icon(
                                            Icons.add,
                                            color: PickColor.whiteColor,
                                          ),
                                          onTap: () {
                                            print('add buttons');
                                          },
                                        ),
                                        SizedBox(
                                            width: screenSize.width * 0.04),
                                        Text(
                                          'Add Card',
                                          style: TextStyle(
                                            color: PickColor.whiteColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                      print('add buttons');
                    },
                  ),
                  Text(
                    'Add Card',
                    style: TextStyle(
                      fontSize: 13,
                      color: PickColor.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.03),
              Container(
                height: screenSize.height * 0.31,
                width: screenSize.width,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 3,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      height: screenSize.height * 0.08,
                      width: screenSize.width,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Container(
                              height: screenSize.height * 0.7,
                              width: screenSize.width * 0.2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    catagories[index]['image'],
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              catagories[index]['title'],
                            ),
                            Spacer(),
                            Container(
                              height: screenSize.height * 0.03,
                              width: screenSize.width * 0.06,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                border: Border.all(color: PickColor.mainColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        height: screenSize.height * 0.06,
                        width: screenSize.width,
                        margin: EdgeInsets.all(1),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Text(
                                catagories1[index]['title'],
                              ),
                              Spacer(),
                              Text(
                                catagories1[index]['subtitle'],
                                style: TextStyle(
                                  color: catagories1[index]['color'],
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
                title: 'Send Order',
                onPress: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: screenSize.height * 0.02),
                              Align(
                                child: InkWell(
                                  child: Icon(Icons.clear),
                                  onTap: () {
                                    Navigator.pop(context);
                                    print('clean');
                                  },
                                ),
                                alignment: Alignment.bottomRight,
                              ),
                              Image(
                                image: AssetImage('assets/svg/Group 8168.png'),
                              ),
                              SizedBox(height: screenSize.height * 0.02),
                              Text(
                                'Thank You!',
                                style: TextStyle(
                                  fontSize: 26,
                                  color: PickColor.headingColor,
                                ),
                              ),
                              Text(
                                'for your order',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: PickColor.headingColor,
                                ),
                              ),
                              SizedBox(height: screenSize.height * 0.02),
                              Text(
                                'Your Order is now being processed. We will let you know once the order is picked from the outlet. Check ',
                                style: TextStyle(
                                  color: PickColor.headingColor,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: screenSize.height * 0.02),
                              RoundedButton(
                                onPress: () {},
                                title: 'Track My Order',
                              ),
                              SizedBox(height: screenSize.height * 0.02),
                              Text(
                                'Back To Home',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: PickColor.headingColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
