import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/View/LoanDue/LoanProvider.dart';
import 'package:mtp/Widgets/CustomButton.dart';
import 'package:mtp/Widgets/CustomLabelTextField.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';
class RecevingLoan extends StatefulWidget {
  const RecevingLoan({super.key});

  @override
  State<RecevingLoan> createState() => _RecevingLoanState();
}

class _RecevingLoanState extends State<RecevingLoan> {
  TextEditingController recevieLoan = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          backgroundColor: AppColor.white,
          title: CustomText(
            text: AppText.Receving_Loan,
            fontWeight: FontWeight.w700,
            fontSize: 22.sp,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CustomText(
                      text: AppText
                          .Enter_the_detail_of_the_loan_you_want_to_recevie,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: AppColor.black,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  CustomSizeBox(
                    height: 40.h,
                  ),
                  CustomLabelTextField(
                      controller: recevieLoan,
                      label: AppText.Loan_Amount,
                      hintText: AppText.Enter_Amount_here),
                  CustomSizeBox(
                    height: 30.h,
                  ),
                  Container(
                    height: 100,
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
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: AppText.Loan_Duration,
                            fontWeight: FontWeight.w800,
                            fontSize: 14.sp,
                            color: AppColor.button2,
                          ),
                          ExpansionTile(
                            backgroundColor: AppColor.white,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.transparent)),
                            title: CustomText(
                              text: '1 Mounth',
                              fontWeight: FontWeight.w800,
                              fontSize: 16.sp,
                              color: AppColor.black,
                            ),
                            trailing: Icon(
                              Icons.arrow_drop_down_sharp,
                              size: 20.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  CustomSizeBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Interest Rate',
                          fontWeight: FontWeight.w800,
                          fontSize: 14.sp,
                          color: AppColor.button2,
                        ),
                        CustomSizeBox(
                          height: 20.h,
                        ),
                        CustomText(
                          text: "3% Interest Rate",
                          fontWeight: FontWeight.w800,
                          fontSize: 18.sp,
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
                  child: CustomButton(onPressed: () {
                    Get.to(()=> LoanProvider());
                  }, text: AppText.Confirm_Continue))
            ],
          ),
        ),
      ),
    );
  }
}
