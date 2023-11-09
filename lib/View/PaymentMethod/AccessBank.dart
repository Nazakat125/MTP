import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppImages.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/Widgets/CustomButton.dart';
import 'package:mtp/Widgets/CustomImage.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';

class AccessBank extends StatefulWidget {
  const AccessBank({super.key});

  @override
  State<AccessBank> createState() => _AccessBankState();
}

class _AccessBankState extends State<AccessBank> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          backgroundColor: AppColor.white,
          leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColor.black,
              )),
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 24.w),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImage(
                      image: AppImages.link_bank,
                      width: double.infinity,
                      height: 108.h,),
                  CustomSizeBox(
                    height: 25.h,
                  ),
                  CustomText(
                    text: 'Access MTP uses plaid to link your bank',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColor.black,
                    textAlign: TextAlign.center,
                  ),
                  CustomSizeBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImage(image: AppImages.check,height: 28.h,width: 28.w,),
                            CustomSizeBox(
                              width: 30.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: AppText.Secure,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.black,
                                ),
                                CustomSizeBox(
                                  height: 20.h,
                                ),
                                SizedBox(
                                  width: 200.w,
                                  child: CustomText(
                                    text: 'Transfer of your information is encrypted end to end',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        CustomSizeBox(
                          height: 20.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImage(image: AppImages.check,height: 28.h,width: 28.w,),
                            CustomSizeBox(
                              width: 30.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: AppText.Private,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.black,
                                ),
                                CustomSizeBox(
                                  height: 20.h,
                                ),
                                SizedBox(
                                  width: 200.w,
                                  child: CustomText(
                                    text: 'Your credentials will never be made accesible to this application',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                  left: 0,
                  right: 0,
                  child: CustomButton(onPressed: () {}, text: AppText.Continue))
            ],
          ),
        ),
      ),
    );
  }
}
