import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppImages.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/View/LoanDue/Co_SignerForm.dart';
import 'package:mtp/Widgets/CustomImage.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';

class LoanProvider extends StatefulWidget {
  const LoanProvider({super.key});

  @override
  State<LoanProvider> createState() => _LoanProviderState();
}

class _LoanProviderState extends State<LoanProvider> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          backgroundColor: AppColor.white,
          title: CustomText(
            text: AppText.Select_Loan_Provider,
            fontWeight: FontWeight.w700,
            fontSize: 28.sp,
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
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: InkWell(
                onTap: (){
                  Get.to(()=> Co_SignerForm());
                },
                child:    Container(
                  height: 200.h,
                  width: 330.w,
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
                  child: Center(
                      child: Column(
                        children: [
                          CustomSizeBox(height: 20.h,),
                          CustomImage(
                            image: AppImages.credit_union,
                            height: 97.h,
                            width: 97.w,
                            fit: BoxFit.cover,
                          ),
                          CustomText(
                            text: 'Credit Union',
                            fontWeight: FontWeight.w700,
                            fontSize: 28.sp,
                            color:Color(0xff1862E5),
                          ),
                        ],
                      )),
                )
              ),
            ),
            CustomSizeBox(
              height: 30.h,
            ),
            Container(
              height: 200.h,
              width: 330.w,
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
              child: Center(
                  child: Column(
                children: [
                  CustomSizeBox(height: 20.h,),
                  CustomImage(
                    image: AppImages.peertopeer,
                    height: 97.h,
                    width: 97.w,
                    fit: BoxFit.cover,
                  ),
                  CustomText(
                    text: 'Peer to Peer',
                    fontWeight: FontWeight.w700,
                    fontSize: 28.sp,
                    color: AppColor.button,
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
