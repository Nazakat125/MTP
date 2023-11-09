import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/View/PaymentMethod/PaymentInfo.dart';
import 'package:mtp/Widgets/CustomButton.dart';
import 'package:mtp/Widgets/CustomLabelTextField.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  TextEditingController name = TextEditingController();
  TextEditingController card = TextEditingController();
  TextEditingController expiry = TextEditingController();
  TextEditingController cvv = TextEditingController();
  TextEditingController code = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: AppColor.white,
          title: CustomText(
            text: AppText.Add_card_info,
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
              )),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 24.w),
          child: Stack(
            children: [
              Column(
                children: [
                  CustomLabelTextField(
                    controller: name,
                    hintText: AppText.Enter_here,
                    label: AppText.Card_holder_name,
                  ),
                  CustomSizeBox(height: 20.h,),
                  CustomLabelTextField(
                    controller: card,
                    hintText: AppText.Enter_here,
                    label: AppText.Card_Number,
                  ),
                  CustomSizeBox(height: 20.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomLabelTextField(
                        width: 154.w,
                        controller: expiry,
                        hintText: "mm/yyyy",
                        label: AppText.Expiry_Date,
                      ),
                      CustomLabelTextField(
                        width: 154.w,
                        controller: cvv,
                        hintText: AppText.Enter_here,
                        label: 'Cvv',
                      ),
                    ],
                  ),
                  CustomSizeBox(height: 20.h,),
                  CustomLabelTextField(
                    controller: code,
                    hintText: AppText.Enter_here,
                    label: AppText.Zip_Code,
                  ),
                ],
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: CustomButton(onPressed: () {
                    Get.to(()=> PaymentInfo());
                  }, text: AppText.Continue))
            ],
          ),
        ),
      ),
    );
  }
}
