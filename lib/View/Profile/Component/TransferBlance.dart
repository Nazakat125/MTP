import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppImages.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/Widgets/CustomButton.dart';
import 'package:mtp/Widgets/CustomImage.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';
class TransferBlance extends StatefulWidget {
  const TransferBlance({super.key});

  @override
  State<TransferBlance> createState() => _TransferBlanceState();
}

class _TransferBlanceState extends State<TransferBlance> {
  bool checkBox = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 30.h,horizontal: 25.w),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CustomText(
                text: AppText.Transfer_Blance,
                fontWeight: FontWeight.w700,
                fontSize: 32.sp,
                color: AppColor.black,
              ),
            ),
            CustomSizeBox(height: 30.h,),
            Center(

              child: CustomText(
                text: AppText.Enter_the_Amount_of_money_that_you_want_to_transfer,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: AppColor.black,
                textAlign: TextAlign.center,
              ),
            ),
            CustomSizeBox(height: 30.h,),
            Container(
                height: 151.h,
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
                  padding:
                  EdgeInsets.symmetric(vertical: 30.h, horizontal: 40.w),
                  child: Column(
                    children: [

                      CustomText(
                        text: '\$1000.00',
                        fontWeight: FontWeight.w700,
                        fontSize: 32.sp,
                        color: AppColor.black,
                      ),
                      CustomSizeBox(
                        height: 20.h,
                      ),
                      CustomText(
                        text: AppText.Transfer_Amount,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: AppColor.black,
                      ),

                    ],
                  ),
                )),
            CustomSizeBox(height: 30.h,),
            CustomText(
              text: AppText.Transfer_to,
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              color: AppColor.black,
            ),
            CustomSizeBox(height: 20.h,),
            Container(
              height: 104.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: AppColor.black,width: 1.w)
              ),
              child:  Row(
                children: [
                  Checkbox(
                    value: checkBox,
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
                    height: 90.h,
                    width: 120.w,
                  ),
                  CustomSizeBox(
                    width: 20.w,
                  ),
                  CustomText(
                    text: AppText.Visa,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: AppColor.gray,
                  ),
                  CustomSizeBox(
                    width: 10.w,
                  ),
                  CustomText(
                    text: "**** 1745",
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: AppColor.gray,
                  ),
                ],
              ),
            ),
            CustomSizeBox(height: 50.h,),
            CustomButton(onPressed: (){}, text: AppText.Confirm_Transfer)
          ],
        ),
      ),
    );
  }
}
