import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/View/YourMoney/SendLoan.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';

class LoanDetail extends StatefulWidget {
  const LoanDetail({super.key});

  @override
  State<LoanDetail> createState() => _LoanDetailState();
}

class _LoanDetailState extends State<LoanDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          backgroundColor: AppColor.white,
          title: CustomText(
            text: AppText.Loan_Detail,
            fontWeight: FontWeight.w700,
            fontSize: 32.sp,
            color: AppColor.black,
          ),
          elevation: 0,
          leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColor.black,
              )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.attach_money,
                      size: 28.sp,
                      color: AppColor.black,
                    ),
                    CustomSizeBox(
                      width: 20.w,
                    ),
                    CustomText(
                      text: "\$10000.00",
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: AppColor.black,
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Get.to(() => SendLoan());
                      },
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 28.sp,
                        color: AppColor.black,
                      ),
                    ),
                  ],
                ),
                CustomSizeBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.watch_later_rounded,
                      size: 28.sp,
                      color: AppColor.black,
                    ),
                    CustomSizeBox(
                      width: 20.w,
                    ),
                    CustomText(
                      text: AppText.Mounth_term,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: AppColor.black,
                    ),
                    CustomSizeBox(
                      width: 20.w,
                    ),
                    CustomText(
                      text: AppText.Mounth_left,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: AppColor.gray,
                    ),
                  ],
                ),
                CustomSizeBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.percent,
                      size: 28.sp,
                      color: AppColor.black,
                    ),
                    CustomSizeBox(
                      width: 20.w,
                    ),
                    CustomText(
                      text: AppText.Interset_Rate,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: AppColor.black,
                    ),
                  ],
                ),
                CustomSizeBox(
                  height: 50.h,
                ),
                LinearProgressIndicator(
                  color: AppColor.button,
                  backgroundColor: AppColor.gray,
                  borderRadius: BorderRadius.circular(10.r),
                  value: 0.7,
                  minHeight: 5,
                ),
                CustomSizeBox(
                  height: 16.h,
                ),
                Container(
                    height: 103,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: Colors.transparent),
                        color: AppColor.white,
                        boxShadow: [
                          BoxShadow(
                              color: AppColor.shadow,
                              spreadRadius: 2,
                              blurRadius: 30,
                              offset: Offset(2, 4)),
                        ]),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: 16.h,horizontal: 40.w),
                      child: Column(
                        children: [
                          CustomText(
                            text: AppText.Amount_left_to_pay,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                            color: AppColor.black,
                          ),
                          CustomSizeBox(height: 10.h,),
                          CustomText(
                            text: '\$250',
                            fontWeight: FontWeight.w700,
                            fontSize: 32.sp,
                            color: AppColor.black,
                          ),
                        ],
                      ),
                    )
                ),
                CustomSizeBox(height: 25.h,),
                CustomText(
                  text: AppText.Payment_BreakDown,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  color: AppColor.black,
                ),
                CustomSizeBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: '\$400',
                      fontWeight: FontWeight.w700,
                      fontSize: 32.sp,
                      color: AppColor.black,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: '11:30 PM',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: AppColor.black,
                        ),
                        CustomSizeBox(height: 10.h,),
                        CustomText(
                          text: 'Mar 20th 2023',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: AppColor.black,
                        ),
                      ],
                    )
                  ],
                ),
                CustomSizeBox(height: 10.h,),
                Divider(
                  thickness: 2,
                  color: AppColor.shadow,
                ),
                CustomSizeBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: '\$400',
                      fontWeight: FontWeight.w700,
                      fontSize: 32.sp,
                      color: AppColor.black,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: '11:30 PM',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: AppColor.black,
                        ),
                        CustomSizeBox(height: 10.h,),
                        CustomText(
                          text: 'Mar 20th 2023',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: AppColor.black,
                        ),
                      ],
                    )
                  ],
                ),
                CustomSizeBox(height: 10.h,),
                Divider(
                  thickness: 2,
                  color: AppColor.shadow,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
