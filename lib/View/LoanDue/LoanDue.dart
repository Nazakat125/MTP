import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/View/LoanDue/DetailLoan.dart';
import 'package:mtp/View/LoanDue/ReceivingLoan.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';
class LoanDue extends StatefulWidget {
  const LoanDue({super.key});

  @override
  State<LoanDue> createState() => _LoanDueState();
}

class _LoanDueState extends State<LoanDue> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColor.white,
          appBar: AppBar(
            backgroundColor: AppColor.white,
            title: CustomText(
              text: AppText.Loan_Due,
              fontWeight: FontWeight.w700,
              fontSize: 22.sp,
              color: AppColor.black,
            ),
            elevation: 0,
            actions: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                     Get.to(()=>RecevingLoan());
                    },
                    child: Container(
                      height: 35.h,
                      width: 35.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(color: AppColor.black, width: 3.w)),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: AppColor.black,
                          size: 20.sp,
                        ),
                      ),
                    ),
                  ),
                  CustomSizeBox(
                    width: 20.w,
                  ),
                  Icon(
                    Icons.search,
                    color: AppColor.black,
                  ),
                  CustomSizeBox(
                    width: 20.w,
                  ),
                ],
              ),
            ],
          ),
          body:Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding:  EdgeInsets.only(top: 35.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40.w),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.attach_money,
                                      size: 25.sp,
                                      color: AppColor.black,
                                    ),
                                    CustomSizeBox(width: 20.w,),
                                    CustomText(
                                      text: "\$10000.00",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: AppColor.black,
                                    ),
                                    Spacer(),
                                    InkWell(
                                      onTap: (){
                                        Get.to(()=> DetailLaon());
                                      },
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        size: 25.sp,
                                        color: AppColor.black,
                                      ),
                                    ),



                                  ],
                                ),
                                CustomSizeBox(height: 16.h,),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.watch_later_rounded,
                                      size: 25.sp,
                                      color: AppColor.black,
                                    ),
                                    CustomSizeBox(width: 20.w,),
                                    CustomText(
                                      text: AppText.Mounth_term,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: AppColor.black,
                                    ),
                                    CustomSizeBox(width: 20.w,),
                                    CustomText(
                                      text: AppText.Mounth_left,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      color: AppColor.gray,
                                    ),
                                  ],
                                ),
                                CustomSizeBox(height: 16.h,),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.percent,
                                      size: 25.sp,
                                      color: AppColor.black,
                                    ),
                                    CustomSizeBox(width: 20.w,),
                                    CustomText(
                                      text: AppText.Interset_Rate,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: AppColor.black,
                                    ),

                                  ],
                                ),
                                CustomSizeBox(height: 16.h,),
                                LinearProgressIndicator(
                                  color: AppColor.red,
                                  backgroundColor: AppColor.gray,
                                  borderRadius: BorderRadius.circular(10.r),
                                  value: 0.7,
                                  minHeight: 4,
                                ),
                                CustomSizeBox(height: 16.h,),

                              ],
                            ),
                          ),
                          Divider(
                            thickness: 2,
                            color: AppColor.shadow,
                          ),
                        ],
                      ),
                    );
                  },),
              ),
            ],
          )
      ),
    );
  }
}
