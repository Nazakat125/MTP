import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/Widgets/CustomButton.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';

class AddMoney extends StatelessWidget {
  const AddMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r)
      ),
      backgroundColor: AppColor.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomText(
              text: AppText.Add_Money,
              fontSize: 28.sp,
              color: AppColor.black,
              fontWeight: FontWeight.w700,
            ),
            CustomSizeBox(height: 40.h,),
            Container(
                height: 110.h,
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
                  padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 40.w),
                  child: Column(
                    children: [
                      CustomText(
                        text: AppText.Amount,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: AppColor.black,
                      ),
                      TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLines: 1,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 32.sp,
                            color: AppColor.black
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '\$00.00',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 32

                                .sp,
                            color: AppColor.gray
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
            CustomSizeBox(height: 30.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 50.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      gradient: LinearGradient(
                        colors: [
                          Colors.black54,
                          AppColor.black,
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        AppText.Dismiss,
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColor.white,
                        ),
                      ),
                    ),
                  ),
                ),
                CustomButton(onPressed: (){
                }, text: AppText.Confirm,height: 50.h,width: 120.w,fontSize: 18,),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
