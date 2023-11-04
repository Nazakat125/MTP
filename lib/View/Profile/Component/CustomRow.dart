import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Widgets/CustomText.dart';
class CustomRow extends StatelessWidget {
   CustomRow({super.key, required this.text,required this.onTap});
  String text;
   Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60.h,
        color: AppColor.white,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            CustomText(text:text,color: AppColor.black,fontWeight: FontWeight.w700,fontSize: 18.sp,),
              Icon(Icons.arrow_forward_ios_rounded,color: AppColor.black,)
            ],
          ),
        ),
      ),
    );
  }
}
