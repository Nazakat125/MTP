import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/View/LogIn/LogIn.dart';
import 'package:mtp/View/SignUp/TwoStepVarification.dart';
import 'package:mtp/Widgets/CustomButton.dart';
import 'package:mtp/Widgets/CustomEditText.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController re_passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.w, horizontal: 24.w),
            child: Column(
              children: [
                CustomSizeBox(
                  height: 94.h,
                ),
                Center(
                  child: CustomText(
                    text: AppText.Sign_Up,
                    fontWeight: FontWeight.w700,
                    fontSize: 32.sp,
                    color: AppColor.black,
                  ),
                ),
                CustomSizeBox(
                  height: 14.h,
                ),
                CustomText(
                  text: AppText.Enter_your_detail_to_ncreate_your_account,
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
                          shape: BoxShape.circle, color: AppColor.darkgreen),
                      child: Center(
                          child: Icon(
                        Icons.check,
                        color: AppColor.white,
                        size: 20.sp,
                      ))),
                ),
                CustomSizeBox(
                  height: 15.h,
                ),
                CustomTextFromField(
                  controller: passwordController,
                  hintText: AppText.Password,
                  suffixIcon: Icon(Icons.visibility),
                ),
                CustomSizeBox(
                  height: 14.h,
                ),
                CustomTextFromField(
                  controller: re_passwordController,
                  hintText: AppText.Re_Enter_Password,
                  suffixIcon: Icon(Icons.visibility),
                ),
                CustomSizeBox(
                  height: 153.h,
                ),
                InkWell(
                  onTap: (){
                    Get.to(()=>LogIn());
                  },
                  child: CustomText(
                    text: AppText.Switch_to_Login,
                    fontSize: 20.sp,
                    color: AppColor.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CustomSizeBox(
                  height: 14.h,
                ),
                CustomButton(
                    onPressed: () {
                      Get.to(() => TwoStepVarification());
                    },
                    text: AppText.Sign_Up),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
