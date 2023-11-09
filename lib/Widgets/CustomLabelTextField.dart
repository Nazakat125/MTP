import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Widgets/CustomText.dart';
class CustomLabelTextField extends StatelessWidget {
  CustomLabelTextField({super.key,this.hintText,required this.controller,this.suffixIcon,this.label = '',this.width = double.infinity});
  String? hintText;
  String label;
  TextEditingController controller;
  Widget? suffixIcon;
  double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101.h,
      width: width,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: label,
              fontWeight: FontWeight.w800,
              fontSize: 20.sp,
              color: AppColor.button,
            ),

            TextFormField(
              maxLines: 1,
              controller: controller,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(
                      color: AppColor.gray,
                    fontFamily: "inter"
                  ),
                  suffixIcon:suffixIcon
              ),
            ),
          ],
        ),
      ),
    );
  }
}
