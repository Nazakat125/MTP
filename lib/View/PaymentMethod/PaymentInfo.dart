import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppImages.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/View/PaymentMethod/AccessBank.dart';
import 'package:mtp/View/PaymentMethod/AddCard.dart';
import 'package:mtp/View/PaymentMethod/Components/ChosePayment.dart';
import 'package:mtp/View/SelectMemberShip/SelectMemberShip.dart';
import 'package:mtp/Widgets/CustomButton.dart';
import 'package:mtp/Widgets/CustomImage.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';

class PaymentInfo extends StatefulWidget {
  const PaymentInfo({super.key});

  @override
  State<PaymentInfo> createState() => _PaymentInfoState();
}

class _PaymentInfoState extends State<PaymentInfo> {
  bool checkBox = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          backgroundColor: AppColor.white,
          title: CustomText(
            text: AppText.Payment_info,
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
                  CustomSizeBox(
                    height: 50.h,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: checkBox,
                        activeColor: AppColor.button,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        onChanged: (value) {
                          setState(() {
                            checkBox = !checkBox;
                          });
                        },
                      ),
                      CustomSizeBox(
                        width: 20.w,
                      ),
                      CustomImage(
                        image: AppImages.visa,
                        height: 100.h,
                        width: 130.w,
                      ),
                      CustomSizeBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: AppText.Visa,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: AppColor.gray,
                          ),
                          CustomSizeBox(
                            height: 5.h,
                          ),
                          CustomText(
                            text: "**** 1745",
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: AppColor.gray,
                          ),
                          CustomSizeBox(
                            height: 5.h,
                          ),
                          CustomButton(
                            onPressed: () {},
                            text: AppText.Remove_Card,
                            height: 30.h,
                            width: 100.w,
                            fontSize: 10,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                border: Border.all(
                                    color: AppColor.black, width: 3.w)),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: AppColor.black,
                              ),
                            ),
                          ),
                          CustomSizeBox(
                            width: 10.w,
                          ),
                          CustomText(
                            text: AppText.Add_a_bank_or_card,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                            color: AppColor.black,
                          ),
                        ],
                      ),
                      CustomSizeBox(
                        height: 30.h,
                      ),
                      CustomButton(
                          onPressed: () {
                            Get.to(() => SelectMemberShip());
                          },
                          text: AppText.Continue),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
