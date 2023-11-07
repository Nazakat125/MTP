import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';
class YourNotification extends StatefulWidget {
  const YourNotification({super.key});

  @override
  State<YourNotification> createState() => _YourNotification();
}

class _YourNotification extends State<YourNotification> {
  List items = [
    [AppColor.button,AppText.Received,AppColor.button,],
    [AppColor.red,AppText.Send,AppColor.red,],
    [AppColor.button,AppText.Received,AppColor.button,],
    [AppColor.red,AppText.Send,AppColor.red,],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        title: CustomText(
          text: AppText.Notification,
          fontWeight: FontWeight.w700,
          fontSize: 32.sp,
          color: AppColor.black,
        ),
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.search_rounded,
              color: AppColor.black,
              size: 23.sp,
            ),
          ),
          CustomSizeBox(width: 30.w,),
        ]
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 25.w,right: 25.w,top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                return Padding(
                  padding:  EdgeInsets.only(bottom: 30.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: AppText.Loan_Payment,
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                            color: AppColor.black,
                          ),
                          CustomText(
                            text: '\$100.00',
                            fontWeight: FontWeight.w700,
                            fontSize: 32.sp,
                            color: items[index][0],
                          ),
                        ],
                      ),
                      CustomSizeBox(height: 16.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: items[index][1],
                            fontWeight: FontWeight.w400,
                            fontSize: 20.sp,
                            color: AppColor.button,
                          ),
                          CustomText(
                            text: '3m ago',
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: AppColor.gray,
                          ),
                        ],
                      ),
                      CustomSizeBox(height: 16.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.monetization_on_sharp,color: AppColor.black,),
                              CustomSizeBox(width: 10.w,),
                              CustomText(
                                text: '\$1000.00',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: AppColor.black,
                              ),

                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_time_filled,color: AppColor.black,),
                              CustomSizeBox(width: 10.w,),
                              CustomText(
                                text: AppText.Mounth_term,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: AppColor.black,
                              ),

                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.percent,color: AppColor.black,),
                              CustomSizeBox(width: 20.w,),
                              CustomText(
                                text: '5%',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: AppColor.black,
                              ),

                            ],
                          ),
                        ],
                      ),
                      CustomSizeBox(height: 25.h,),
                      LinearProgressIndicator(
                        color: items[index][2],
                        backgroundColor: AppColor.gray,
                        borderRadius: BorderRadius.circular(10.r),
                        value: 0.7,
                        minHeight: 4,
                      ),
                      CustomSizeBox(height: 16.h,),
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
        ),
      ),
    );
  }
}
