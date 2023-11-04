import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/View/CreateAccount/CreateAccount.dart';
import 'package:mtp/Widgets/CustomButton.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';
import 'package:pinput/pinput.dart';

class TwoStepVarification extends StatefulWidget {
  const TwoStepVarification({super.key});

  @override
  State<TwoStepVarification> createState() => _TwoStepVarificationState();
}

class _TwoStepVarificationState extends State<TwoStepVarification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 24.w),
          child: Stack(
            children: [
              Column(
                children: [
                  CustomSizeBox(
                    height: 100.h,
                  ),
                  Center(
                    child: CustomText(
                      text: AppText.Two_Step_Verification,
                      fontWeight: FontWeight.w700,
                      fontSize: 24.sp,
                      color: AppColor.black,
                    ),
                  ),
                  CustomSizeBox(
                    height: 50.h,
                  ),
                  CustomText(
                    text: AppText.Verify_your_email_with_code_sent_to_you,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: AppColor.black,
                    textAlign: TextAlign.center,
                  ),
                  CustomSizeBox(
                    height: 80.h,
                  ),
                  Pinput(
                    length: 4,
                    obscureText: false,
                    defaultPinTheme: PinTheme(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(15.r),
                          border:
                              Border.all(color: AppColor.shadow, width: 2.w),
                          boxShadow: [
                            BoxShadow(
                                color: AppColor.shadow,
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(2, 4)),
                          ]),
                      textStyle: TextStyle(
                        fontSize: 30.sp,
                        //fontWeight: FontWeight.w700,
                      ),
                    ),
                    submittedPinTheme: PinTheme(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: AppColor.button2,
                          borderRadius: BorderRadius.circular(15.r),
                          border:
                              Border.all(color: Colors.transparent, width: 2.w),
                          boxShadow: [
                            BoxShadow(
                                color: AppColor.shadow,
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(2, 4)),
                          ]),
                      textStyle:
                          TextStyle(fontSize: 30.sp, color: AppColor.white
                              //fontWeight: FontWeight.w700,
                              ),
                    ),
                    focusedPinTheme: PinTheme(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(15.r),
                          border:
                              Border.all(color: Colors.transparent, width: 1.w),
                          boxShadow: [
                            BoxShadow(
                                color: AppColor.shadow,
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(2, 4)),
                          ]),
                      textStyle: TextStyle(fontSize: 30.sp, color: Colors.white
                          //fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                  CustomSizeBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: AppText.I_did_receive_the_code,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: AppColor.black,
                      ),
                      CustomText(
                        text: AppText.Resend,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        color: AppColor.black,
                      ),
                    ],
                  ),
                  CustomSizeBox(
                    height: 80.h,
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                  left: 0,
                  right: 0,
                  child:
                      CustomButton(onPressed: () {
                        Get.to(()=> CreateAccount());
                      }, text: AppText.Continue)),
            ],
          ),
        ),
      ),
    );
  }
}
