import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {super.key,
      this.fontWeight,
      this.textAlign,
      this.fontSize,
      this.color,
      required this.text});
  String text;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;
  TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }
}
