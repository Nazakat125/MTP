import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtp/Utils/AppColor.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.width = double.infinity,
      this.height = 60,
        this.fontSize = 20

      });
  void Function()? onPressed;
  String text;
  double? height;
  double? width;
  double? fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
         color:       AppColor.button,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w700,
              color: AppColor.white,
              fontFamily: "inter"
            ),
          ),
        ),
      ),
    );
  }
}
