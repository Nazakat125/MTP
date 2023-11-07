import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppImages.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/View/PaymentMethod/AccessBank.dart';
import 'package:mtp/View/PaymentMethod/AddCard.dart';
import 'package:mtp/View/PaymentMethod/Components/ChosePayment.dart';
import 'package:mtp/Widgets/CustomButton.dart';
import 'package:mtp/Widgets/CustomImage.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          title: CustomText(
            text: AppText.Payment_Method,
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
                size: 24.sp,
              )),
        ),
        backgroundColor: AppColor.white,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 24.w),
          child: Stack(
            children: [
              Column(
                children: [
                  CustomSizeBox(
                    height: 48.h,
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        isDismissible: false,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.r),
                                topLeft: Radius.circular(20.r))),
                        context: context,
                        builder: (context) {
                          return ChosePayment(
                            close: (){
                              Navigator.of(context).pop();
                            },
                            bank: (){
                              Get.to(()=>AccessBank());
                            },
                            card: (){
                              Get.to(()=>AddCard());
                            },
                          );
                        },
                      );
                    },
                    child: Row(
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
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: AppColor.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    CustomText(
                      text: AppText.Skip_for_now,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                      color: AppColor.black,
                    ),
                    CustomSizeBox(
                      height: 20.w,
                    ),
                    CustomButton(onPressed: () {}, text: AppText.Continue)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
