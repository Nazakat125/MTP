import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppImages.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/Widgets/CustomImage.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';

class ChosePayment extends StatelessWidget {
  ChosePayment({super.key, this.close, this.bank, this.card});
  Function()? close;
  Function()? bank;
  Function()? card;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topRight,
              child: InkWell(
                onTap:close,
                child: Icon(
            Icons.close,
            size: 30.sp,
          ),
              )),
          CustomSizeBox(height: 10.h,),
          InkWell(
            onTap: bank,
            child: Row(
              children: [
                CustomImage(
                  image: AppImages.bank,
                  width: 30,
                  height: 40,
                ),
                CustomSizeBox(
                  width: 20.w,
                ),
                CustomText(
                  text: AppText.Add_Bank,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  color: AppColor.black,
                ),
              ],
            ),
          ),
          CustomSizeBox(
            height: 20.h,
          ),
          InkWell(
            onTap: card,
            child: Row(
              children: [
                CustomImage(
                  image: AppImages.credit_card,
                  width: 30,
                  height: 40,
                ),
                CustomSizeBox(
                  width: 20.w,
                ),
                CustomText(
                  text: AppText.Add_Card,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  color: AppColor.black,
                ),
              ],
            ),
          ),
          CustomSizeBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
