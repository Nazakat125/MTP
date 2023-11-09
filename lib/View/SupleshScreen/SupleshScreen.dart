import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppImages.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/View/LogIn/LogIn.dart';
import 'package:mtp/View/SignUp/SignUp.dart';
import 'package:mtp/Widgets/CustomImage.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';

class SupleshScreen extends StatefulWidget {
  const SupleshScreen({super.key});

  @override
  State<SupleshScreen> createState() => _SupleshScreenState();
}


class _SupleshScreenState extends State<SupleshScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => Get.to(LogIn()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CustomImage(
              image: AppImages.icon,
              height: 286.h,
              width: 343.w,
            ),
          ),
          CustomSizeBox(
            height: 10.h,
          ),
          CustomText(
            text: AppText.ACCESS,
            fontSize: 32.sp,
            fontWeight: FontWeight.w700,
            fontFamily: 'InriaSerif',
            color: AppColor.darkgreen,
          ),
          CustomText(
            text: AppText.MTP,
            fontSize: 80.sp,
            fontWeight: FontWeight.w700,
            fontFamily: 'InriaSerif',
            color: AppColor.darkgreen,
          ),
          CustomText(
            text: AppText.MONEY_THE_PRODUCT,
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
            color: AppColor.green10,
              fontFamily: 'InriaSerif'
          )
        ],
      ),
    );
  }
}
