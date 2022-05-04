import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common/common_textfield.dart';
import '../utility/color.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List<Map<String, dynamic>> Catagories = [
    {
      'title': 'Food',
      'items': '120 item',
      'image': 'assets/svg/davide-cantelli-jpkfc5_d-DI-unsplash.png',
      'Radius': BorderRadius.circular(60),
    },
    {
      'title': 'Beverages',
      'items': '220 item',
      'image': 'assets/svg/allison-griffith-VCXk_bO97VQ-unsplash.png',
      'Radius': BorderRadius.circular(20),
    },
    {
      'title': 'Deserts',
      'items': '155 item',
      'image': 'assets/svg/Mask Group 2190.png',
      'Radius': BorderRadius.only(
          topLeft: Radius.circular(40), bottomLeft: Radius.circular(40)),
    },
    {
      'title': 'Promotions',
      'items': '25 item',
      'image': 'assets/svg/Group 6845.png',
      'Radius': BorderRadius.only(
          topLeft: Radius.circular(40), bottomLeft: Radius.circular(40)),
    },
  ];
  int selector = 0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: screenSize.height * 0.01),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      'Menu',
                      style: TextStyle(
                          fontSize: 24, color: PickColor.headingColor),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        print('Cart buttons');
                      },
                      child: Icon(Icons.shopping_cart),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height * 0.03),
              commontextfield(
                text: 'Search food',
              ),
              SizedBox(height: screenSize.height * 0.05),
              // SvgPicture.asset(
              //   'assets/svg/Side bar orange.svg',
              //   alignment: Alignment.topLeft,
              // ),
              Container(
                height: screenSize.height * 0.5,
                width: screenSize.width * 0.7,
                //color: Colors.red,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Stack(
                      overflow: Overflow.visible,
                      children: [
                        Container(
                          margin: EdgeInsets.all(6),
                          height: screenSize.height * 0.1,
                          width: screenSize.width * 0.8,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Catagories[index]['title'],
                                  style: TextStyle(
                                    color: PickColor.headingColor,
                                    fontSize: 22,
                                  ),
                                ),
                                Text(
                                  Catagories[index]['items'],
                                  style: TextStyle(
                                      color: PickColor.Secondarycolor,
                                      fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 0.2,
                                blurRadius: 5,
                                offset: Offset(0, 1),
                              ),
                            ],
                            color: PickColor.whiteColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            height: screenSize.height * 0.08,
                            width: screenSize.width * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: Catagories[index]['Radius'],
                              image: DecorationImage(
                                image: AssetImage(
                                  Catagories[index]['image'],
                                ),
                              ),
                            ),
                          ),
                          left: -20,
                          top: 10,
                        ),
                        Positioned(
                          child: Container(
                            height: screenSize.height * 0.03,
                            width: screenSize.width * 0.1,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 0.2,
                                  blurRadius: 5,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: GestureDetector(
                                child: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 12,
                                  color: PickColor.mainColor,
                                ),
                                onTap: () {
                                  print('arrow forward buttons');
                                }),
                          ),
                          right: -10,
                          top: 30,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
