import 'package:flutter/material.dart';

import '../common/common_textfield.dart';
import '../utility/color.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenSize.height * 0.04),
              Row(
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
              SizedBox(height: screenSize.height * 0.02),
              Text(
                'Customize your payment method',
                style: TextStyle(
                  fontSize: 16,
                  color: PickColor.headingColor,
                ),
              ),
              SizedBox(height: screenSize.height * 0.02),
              Container(
                height: screenSize.height * 0.22,
                width: double.infinity,
                color: Colors.grey.withOpacity(0.2),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(height: screenSize.height * 0.06),
                          Text(
                            'Cash/Card on delivery',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              print('vote outlined buttons');
                            },
                            child: Icon(
                              Icons.where_to_vote_outlined,
                              color: PickColor.mainColor,
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 1),
                      SizedBox(height: screenSize.height * 0.02),
                      Row(
                        children: [
                          Image(
                            image:
                                AssetImage('assets/svg/NoPath - Copy (12).png'),
                          ),
                          SizedBox(width: screenSize.width * 0.03),
                          Text(
                            '****',
                            style: TextStyle(
                              fontSize: 12,
                              color: PickColor.headingColor,
                            ),
                          ),
                          SizedBox(width: screenSize.width * 0.03),
                          Text(
                            '****',
                            style: TextStyle(
                              fontSize: 12,
                              color: PickColor.headingColor,
                            ),
                          ),
                          SizedBox(width: screenSize.width * 0.03),
                          Text(
                            ' 2187',
                            style: TextStyle(
                              fontSize: 12,
                              color: PickColor.Secondarycolor,
                            ),
                          ),
                          SizedBox(width: screenSize.width * 0.03),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                  color: PickColor.mainColor,
                                )),
                            onPressed: () {
                              print('Deleted buttons');
                            },
                            child: Text(
                              'Deleted Buttons',
                              style: TextStyle(
                                color: PickColor.mainColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 1),
                      Text(
                        'Other Methods',
                        style: TextStyle(
                          fontSize: 12,
                          color: PickColor.headingColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.1),
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
                  children: [
                    GestureDetector(
                      child: Icon(
                        Icons.add,
                        color: PickColor.whiteColor,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
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
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none),
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
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none),
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
                    SizedBox(width: screenSize.width * 0.03),
                    Text(
                      'Add Another Credit/Debit Card',
                      style: TextStyle(
                        fontSize: 16,
                        color: PickColor.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
