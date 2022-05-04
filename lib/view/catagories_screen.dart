import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utility/color.dart';
import 'bottom_nav_screen.dart';

class CatagoriesScreen extends StatefulWidget {
  @override
  _CatagoriesScreenState createState() => _CatagoriesScreenState();
}

class _CatagoriesScreenState extends State<CatagoriesScreen> {
  List catagories = [
    {
      'image': 'assets/svg/ilya-mashkov-_qxbJUr9RqI-unsplash.jpg',
      'title': 'Offers'
    },
    {
      'image': 'assets/svg/haryo-setyadi-yvzzemH8-J0-unsplash.jpg',
      'title': 'Sri Lankan'
    },
    {
      'image': 'assets/svg/jakub-kapusnak-tEVisOXz26Y-unsplash.jpg',
      'title': 'Italian'
    },
    {
      'image': 'assets/svg/shreyak-singh-0j4bisyPo3M-unsplash.jpg',
      'title': 'Indian'
    },
  ];
  List<Map<String, dynamic>> Catagories1 = [
    {
      'image': 'assets/svg/heather-ford-teuvnOXOGVo-unsplash.png',
      'title': 'Café de Noires'
    },
    {
      'image': 'assets/svg/pizza.png',
      'title': 'Isso',
    },
    {
      'image': 'assets/svg/nathan-dumlao-zUNs99PGDg0-unsplash.png',
      'title': 'Cafe Beans'
    },
  ];
  List<Map<String, dynamic>> Catagories2 = [
    {
      'image': 'assets/svg/karthik-garikapati-oBbTc1VoT-0-unsplash.jpg',
      'title': 'Café De Bambaa'
    },
    {
      'image': 'assets/svg/joseph-gonzalez-zcUgjyqEwe8-unsplash.jpg',
      'title': 'Burger by Bella'
    },
  ];
  List catagories3 = [
    {
      'image': 'assets/svg/chad-montano-MqT0asuoIcU-unsplash.png',
      'title': 'Mulberry Pizza by Josh'
    },
    {
      'image': 'assets/svg/clem-onojeghuo-9AEh9i-WPhI-unsplash.jpg',
      'title': 'Barita'
    },
    {
      'image': 'assets/svg/chad-montano-MqT0asuoIcU-unsplash.png',
      'title': 'Pizza Rush Hour',
    },
  ];
  bool icon = false;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenSize.height * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      'Good morning Akila!',
                      style: TextStyle(
                        fontSize: 20,
                        color: PickColor.headingColor,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        print('Shopping Cart');
                      },
                      child: Icon(Icons.shopping_cart),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Delivering to',
                  style: TextStyle(
                    fontSize: 11,
                    color: PickColor.Placeholdercolor,
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      'Current Location',
                      style: TextStyle(
                        color: PickColor.Secondarycolor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: screenSize.width * 0.05),
                    GestureDetector(
                      onTap: () {
                        print('arrow down');
                      },
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: PickColor.mainColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: GestureDetector(
                      onTap: () {
                        print('search Food');
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
              Container(
                height: screenSize.height * 0.16,
                width: screenSize.width,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          child: Container(
                            height: screenSize.height * 0.12,
                            width: screenSize.width * 0.27,
                            margin: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  catagories[index]['image'],
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavScreen(),
                              ),
                            );
                          },
                        ),
                        Text(
                          catagories[index]['title'],
                          style: TextStyle(
                            fontSize: 14,
                            color: PickColor.headingColor,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: screenSize.height * 0.06),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      'Popular Restaurents',
                      style: TextStyle(
                        fontSize: 20,
                        color: PickColor.headingColor,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        print('View all buttons');
                      },
                      child: Text(
                        'View all',
                        style: TextStyle(
                          color: PickColor.mainColor,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height * 0.02),
              Container(
                height: screenSize.height * 0.4,
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
                                  Catagories1[index]['image'],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenSize.height * 0.01),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              Catagories1[index]['title'],
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
              SizedBox(height: screenSize.height * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      'Most Popular',
                      style: TextStyle(
                        fontSize: 20,
                        color: PickColor.headingColor,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        print('View all buttons');
                      },
                      child: Text(
                        'View all',
                        style: TextStyle(
                          color: PickColor.mainColor,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height * 0.02),
              Container(
                height: screenSize.height * 0.3,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(6),
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(
                                Catagories2[index]['image'],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            Catagories2[index]['title'],
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
                    );
                  },
                ),
              ),
              SizedBox(height: screenSize.height * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      'Recent Items',
                      style: TextStyle(
                        fontSize: 20,
                        color: PickColor.headingColor,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        print('View all buttons');
                      },
                      child: Text(
                        'View all',
                        style: TextStyle(
                          color: PickColor.mainColor,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height * 0.02),
              Container(
                height: screenSize.height * 0.4,
                width: screenSize.width,
                margin: EdgeInsets.all(10),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: 3,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      height: screenSize.height * 0.2,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            height: screenSize.height * 0.13,
                            width: screenSize.width * 0.25,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  catagories3[index]['image'],
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Text(
                                  catagories3[index]['title'],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: PickColor.headingColor,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Text(
                                  'Western Food',
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xffB6B7B7)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
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
                                      '(124 Rating)',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: PickColor.Placeholdercolor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
