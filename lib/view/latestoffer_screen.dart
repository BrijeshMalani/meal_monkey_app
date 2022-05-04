import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utility/color.dart';

class LatestOffer extends StatefulWidget {
  const LatestOffer({Key? key}) : super(key: key);

  @override
  _LatestOfferState createState() => _LatestOfferState();
}

class _LatestOfferState extends State<LatestOffer> {
  bool icon = true;
  List<Map<String, dynamic>> Catagories = [
    {
      'image': 'assets/svg/heather-ford-teuvnOXOGVo-unsplash.png',
      'title': 'Café de Noires'
    },
    {'image': 'assets/svg/pizza.png', 'title': 'Isso'},
    {
      'image': 'assets/svg/nathan-dumlao-zUNs99PGDg0-unsplash.png',
      'title': 'Cafe Beans'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenSize.height * 0.04),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'Latest offers',
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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Finds discounts,special offer',
                style: TextStyle(
                  fontSize: 14,
                  color: PickColor.Secondarycolor,
                ),
              ),
            ),
            SizedBox(height: screenSize.height * 0.05),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: FlatButton(
                minWidth: screenSize.width * 0.4,
                color: PickColor.mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                  print('check offers buttons');
                },
                child: Text(
                  'Check offers',
                  style: TextStyle(color: PickColor.whiteColor, fontSize: 11),
                ),
              ),
            ),
            SizedBox(height: screenSize.height * 0.03),
            Expanded(
              child: Container(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      height: screenSize.height * 0.33,
                      width: screenSize.width,
                      margin: EdgeInsets.only(bottom: 10),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: screenSize.height * 0.25,
                            width: screenSize.width,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  Catagories[index]['image'],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenSize.height * 0.01),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              Catagories[index]['title'],
                              style: TextStyle(
                                fontSize: 16,
                                color: PickColor.headingColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                GestureDetector(
                                  child: icon
                                      ? Icon(
                                          Icons.star_border,
                                        )
                                      : Icon(
                                          Icons.star,
                                          color: PickColor.mainColor,
                                        ),
                                  onTap: () {
                                    setState(() {
                                      icon = !icon;
                                    });
                                    print('star');
                                  },
                                ),
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                    color: PickColor.mainColor,
                                    fontSize: 11,
                                  ),
                                ),
                                Text(
                                  '(124 ratings) Café     Western Food',
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xffB6B7B7)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
