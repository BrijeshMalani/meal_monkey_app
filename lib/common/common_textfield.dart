import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef onValidate = Function(String);

class commontextfield extends StatelessWidget {
  const commontextfield({
    Key? key,
    required this.text,
    this.controller,
    this.validator,
  }) : super(key: key);
  final String text;
  final TextEditingController? controller;
  final FormFieldValidator? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: (value) {},
      decoration: InputDecoration(
        hintText: text,
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
    );
  }
}
