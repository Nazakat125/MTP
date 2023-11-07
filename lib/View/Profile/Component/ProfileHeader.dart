import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppImages.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 70.h,
          width: 70.w,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(AppImages.dp),
              ),
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
              fontSize: 26.sp,
              fontWeight: FontWeight.w700,
              color: AppColor.black,
            ),
            CustomSizeBox(height: 5.h,),
            CustomText(
              text: 'person@gmail.com',
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: AppColor.black,
            ),
          ],
        ),
      ],
    );
  }
}
