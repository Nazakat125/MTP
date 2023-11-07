import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/View/BottomNavigationBar/BottomNavBar.dart';
import 'package:mtp/Widgets/CustomButton.dart';
import 'package:mtp/Widgets/CustomLabelTextField.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';

class Co_SignerForm extends StatefulWidget {
  const Co_SignerForm({super.key});

  @override
  State<Co_SignerForm> createState() => _Co_SignerFormState();
}

class _Co_SignerFormState extends State<Co_SignerForm> {
  TextEditingController titleName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          backgroundColor: AppColor.white,
          title: CustomText(
            text: AppText.Co_Signer_Form,
            fontWeight: FontWeight.w700,
            fontSize: 32.sp,
            color: AppColor.black,
          ),
          elevation: 0,
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColor.black,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 24.w),
          child: Stack(
            children: [
              Column(
                children: [
                  CustomLabelTextField(
                    controller: titleName,
                    label: AppText.Label_Name,
                    hintText: AppText.Enter_here,
                  ),
                  CustomSizeBox(
                    height: 20.h,
                  ),
                  CustomLabelTextField(
                    controller: titleName,
                    label: AppText.Label_Name,
                    hintText: AppText.Enter_here,
                  ),
                  CustomSizeBox(
                    height: 20.h,
                  ),
                  CustomLabelTextField(
                    controller: titleName,
                    label: AppText.Label_Name,
                    hintText: AppText.Enter_here,
                  ),
                  CustomSizeBox(
                    height: 20.h,
                  ),
                  CustomLabelTextField(
                    controller: titleName,
                    label: AppText.Label_Name,
                    hintText: AppText.Enter_here,
                  ),
                  CustomSizeBox(
                    height: 20.h,
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                  left: 0,
                  right: 0,
                  child: CustomButton(onPressed: () {
                    Get.to(()=>BottomNavBar());
                  }, text: AppText.Confirm))
            ],
          ),
        ),
      ),
    );
  }
}
