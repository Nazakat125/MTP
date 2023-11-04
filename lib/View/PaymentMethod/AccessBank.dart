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
                      height: 80.h,
                      fit: BoxFit.cover),
                  CustomSizeBox(
                    height: 50.h,
                  ),
                  CustomText(
                    text: AppText.AccessMTP_uses_Plaid_to_link_your_bank,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColor.black,
                    textAlign: TextAlign.center,
                  ),
                  CustomSizeBox(
                    height: 70.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColor.shadow,
                                      blurRadius: 20,
                                      spreadRadius: 4,
                                    )
                                  ]),
                              child: Center(
                                  child: Icon(
                                Icons.check_rounded,
                                size: 30.sp,
                                color: AppColor.button2,
                              )),
                            ),
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
                                CustomText(
                                  text: AppText
                                      .Tranfer_of_your_information_is_encrypted_end_to_end,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.black,
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
                            Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColor.shadow,
                                      blurRadius: 20,
                                      spreadRadius: 4,
                                    )
                                  ]),
                              child: Center(
                                  child: Icon(
                                Icons.check_rounded,
                                size: 30.sp,
                                color: AppColor.button2,
                              )),
                            ),
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
                                CustomText(
                                  text: AppText
                                      .Your_credentials_will_never_be_made_accessible_to_this_application,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.black,
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
