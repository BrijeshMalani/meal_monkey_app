import 'package:flutter/material.dart';

import '../utility/color.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;

  RoundedButton({required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: onPress,
      color: PickColor.mainColor,
      child: Text(
        title,
        style: TextStyle(color: PickColor.whiteColor, fontSize: 16),
      ),
    );
  }
}
