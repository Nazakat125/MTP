import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtp/Utils/AppColor.dart';
class CustomTextFromField extends StatelessWidget {
   CustomTextFromField({super.key,this.hintText,required this.controller,this.suffixIcon,});
  String? hintText;
  TextEditingController controller;
   Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: Colors.transparent),
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
                color:AppColor.shadow,
                spreadRadius: 2,
                blurRadius: 30,
                offset: Offset(2, 4)
            ),
          ]
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20,),
        child: Center(
          child: TextFormField(
            maxLines: 1,
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(
                  color: AppColor.gray
              ),
              suffixIcon:suffixIcon
            ),
          ),
        ),
      ),
    );
  }
}
