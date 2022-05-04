import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common/common_btn.dart';
import '../utility/color.dart';
import '../utility/style.dart';
import 'catagories_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _pageController = PageController(initialPage: 0);

  int _pageSelector = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Container(
                height: 500,
                // color: Colors.red.withOpacity(0.4),
                child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      _pageSelector = value;
                    });
                  },
                  controller: _pageController,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset('assets/svg/onboarding1.svg'),
                        SizedBox(
                          height: 60,
                        ),
                        Text('Find Food You Love', style: onBoardingStyle),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                            'Discover the best foods from over 1,000 \nrestaurants and fast delivery to your doorstep',
                            textAlign: TextAlign.center,
                            style: onBoardingSubTitleStyle),
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset('assets/svg/onboarding2.svg'),
                        SizedBox(
                          height: 60,
                        ),
                        Text('Fast Delivery', style: onBoardingStyle),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                            'Fast food delivery to your home, \noffice wherever you are',
                            textAlign: TextAlign.center,
                            style: onBoardingSubTitleStyle),
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset('assets/svg/onboarding3.svg'),
                        SizedBox(
                          height: 60,
                        ),
                        Text('Live Tracking', style: onBoardingStyle),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                            'Real time tracking of your food on the app \nonce you placed the order',
                            textAlign: TextAlign.center,
                            style: onBoardingSubTitleStyle),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2.2,
                right: 0,
                left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Container(
                            height: 12,
                            width: 12,
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              color: _pageSelector == index
                                  ? PickColor.mainColor
                                  : Color(0xFFD6D6D6),
                              shape: BoxShape.circle,
                            ),
                          )),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RoundedButton(
              title: _pageSelector == 2 ? 'Go Home' : 'Next',
              onPress: () {
                if (_pageSelector == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CatagoriesScreen(),
                    ),
                  );
                } else {
                  setState(() {
                    _pageSelector++;
                    _pageController.animateToPage(_pageSelector,
                        duration: Duration(seconds: 2),
                        curve: Curves.easeInOutCubicEmphasized);
                  });
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
