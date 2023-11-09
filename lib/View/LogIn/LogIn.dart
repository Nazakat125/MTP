import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/View/SignUp/SignUp.dart';
import 'package:mtp/View/SignUp/TwoStepVarification.dart';
import 'package:mtp/Widgets/CustomButton.dart';
import 'package:mtp/Widgets/CustomEditText.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController re_passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.white,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.w, horizontal: 24.w),
          child: Stack(
            children: [
              Column(
                children: [
                  CustomSizeBox(
                    height: 94.h,
                  ),
                  Center(
                    child: CustomText(
                      text: AppText.LogIn,
                      fontWeight: FontWeight.w700,
                      fontSize: 32.sp,
                      color: AppColor.black,
                    ),
                  ),
                  CustomSizeBox(
                    height: 16.h,
                  ),
                  CustomText(
                    text:
                        AppText.Enter_your_login_details_to_access_your_account,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: AppColor.black,
                    textAlign: TextAlign.center,
                  ),
                  CustomSizeBox(
                    height: 101.h,
                  ),
                  CustomTextFromField(
                    controller: emailController,
                    hintText: AppText.Email,
                    suffix: Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: AppColor.button),
                        child: Center(
                            child: Icon(
                          Icons.check,
                          color: AppColor.white,
                          size: 20.sp,
                        ))),
                  ),
                  CustomSizeBox(
                    height: 14.h,
                  ),
                  CustomTextFromField(
                    controller: passwordController,
                    hintText: AppText.Password,
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => SignUp());
                      },
                      child: CustomText(
                        text: 'Switch to sign up',
                        fontSize: 20.sp,
                        color: AppColor.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    CustomSizeBox(
                      height: 16.h,
                    ),
                    CustomButton(
                        onPressed: () {
                          Get.to(() => TwoStepVarification());
                        },
                        text: AppText.LogIn),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
