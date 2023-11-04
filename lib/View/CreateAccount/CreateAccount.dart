import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/View/PaymentMethod/PaymentMethod.dart';
import 'package:mtp/Widgets/CustomButton.dart';
import 'package:mtp/Widgets/CustomLabelTextField.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 24.w),
            child: Column(
              children: [
                CustomSizeBox(
                  height: 70.h,
                ),
                Center(
                  child: CustomText(
                    text: AppText.Create_Profile,
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp,
                    color: AppColor.black,
                  )
                ),
                CustomSizeBox(
                  height: 50.h,
                ),
                CustomSizeBox(
                  height: 80.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 200.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColor.white,
                        boxShadow: [
                          BoxShadow(
                              color: AppColor.shadow,
                              spreadRadius: 2,
                              blurRadius: 30,
                              offset: Offset(2, 4)),
                        ],
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: AppColor.button2, width: 1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          size: 80.sp,
                          color: AppColor.button2,
                        ),
                        CustomSizeBox(
                          height: 20.h,
                        ),
                        CustomText(
                          text: AppText.Upload_Profile_Picture,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: AppColor.button2,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomSizeBox(
                  height: 50.h,
                ),
                CustomLabelTextField(
                  controller: TextEditingController(),
                  label: AppText.Your_Name,
                  hintText: AppText.Enter_here,
                ),
                CustomSizeBox(
                  height: 80.h,
                ),
                CustomButton(onPressed: (){
                  Get.to(()=> PaymentMethod());
                }, text: AppText.Continue),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
