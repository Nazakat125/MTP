import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSizeBox(
          width: 30.w,
        ),
        Container(
          height: 130.h,
          width: 130.w,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: AppColor.shadow),
          child: Stack(
            children: [
              Positioned(
                bottom: 5,
                right: 0,
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.button2,
                      boxShadow: [
                        BoxShadow(
                            color: AppColor.shadow,
                            spreadRadius: 2,
                            blurRadius: 30),
                      ]
                  ),
                  child: Center(
                      child: Icon(
                        Icons.edit,
                        color: AppColor.white,
                      )),
                ),
              ),
            ],
          ),
        ),
        CustomSizeBox(
          width: 30.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: AppText.Persone_Name,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: AppColor.black,
            ),
            CustomSizeBox(height: 20.h,),
            CustomText(
              text: 'person@gmail.com',
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppColor.black,
            ),
          ],
        ),
      ],
    );
  }
}
