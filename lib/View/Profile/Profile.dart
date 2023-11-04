import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/View/PaymentMethod/PaymentInfo.dart';
import 'package:mtp/View/Profile/Component/CustomRow.dart';
import 'package:mtp/View/Profile/Component/ProfileHeader.dart';
import 'package:mtp/View/Profile/Component/TransferBlance.dart';
import 'package:mtp/Widgets/CustomButton.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSizeBox(
                height: 40,
              ),
              ProfileHeader(),
              CustomSizeBox(
                height: 20,
              ),
              Container(
                  height: 160,
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
                        EdgeInsets.symmetric(vertical: 16.h, horizontal: 40.w),
                    child: Column(
                      children: [
                        CustomText(
                          text: AppText.Avalible_Blance,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: AppColor.shadow,
                        ),
                        CustomSizeBox(
                          height: 20.h,
                        ),
                        CustomText(
                          text: '\$1000.00',
                          fontWeight: FontWeight.w700,
                          fontSize: 25.sp,
                          color: AppColor.black,
                        ),
                        CustomSizeBox(
                          height: 20.h,
                        ),
                        CustomButton(
                            onPressed: () {
                              showModalBottomSheet(
                                backgroundColor: AppColor.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25.r),topRight: Radius.circular(25.r)),
                                ),
                                context: context,
                                builder: (context) {
                                  return TransferBlance();
                                },
                              );
                            },
                            text: AppText.Transfer_Blance),
                      ],
                    ),
                  )),
              CustomSizeBox(
                height: 20,
              ),
              CustomText(
                text: AppText.Account,
                fontWeight: FontWeight.w700,
                fontSize: 22.sp,
                color: AppColor.black,
              ),
              CustomSizeBox(
                height: 20,
              ),
              CustomRow(text: AppText.Membership, onTap: () {}),
              CustomSizeBox(
                height: 5,
              ),
              CustomRow(text: AppText.Payments_link, onTap: () {
                Get.to(()=>PaymentInfo());
              }),
              CustomSizeBox(
                height: 5,
              ),
              CustomRow(text: AppText.Change_Password, onTap: () {}),
              CustomSizeBox(
                height: 5,
              ),
              CustomRow(text: AppText.Notification_Setting, onTap: () {}),
              CustomSizeBox(
                height: 20,
              ),
              CustomText(
                text: AppText.Others,
                fontWeight: FontWeight.w700,
                fontSize: 22.sp,
                color: AppColor.black,
              ),
              CustomSizeBox(
                height: 20,
              ),
              CustomRow(text: AppText.Privacy_Policy, onTap: () {}),
              CustomSizeBox(
                height: 5,
              ),
              CustomRow(text: AppText.Term_Condition, onTap: () {}),
              CustomSizeBox(
                height: 5,
              ),
              CustomRow(text: AppText.Log_Out, onTap: () {}),
            ],
          ),
        ),
      )),
    );
  }
}
