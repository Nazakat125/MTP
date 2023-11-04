import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/Utils/AppText.dart';
import 'package:mtp/View/BottomNavigationBar/BottomNavBar.dart';
import 'package:mtp/Widgets/CustomButton.dart';
import 'package:mtp/Widgets/CustomSizeBox.dart';
import 'package:mtp/Widgets/CustomText.dart';
class SelectMemberShip extends StatefulWidget {
  const SelectMemberShip({super.key});

  @override
  State<SelectMemberShip> createState() => _SelectMemberShipState();
}

class _SelectMemberShipState extends State<SelectMemberShip> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          backgroundColor: AppColor.white,
          title: CustomText(
            text: AppText.Select_Membership,
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
              )
          ),
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(vertical: 40.h,horizontal: 24.w),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Expanded(
                   child: ListView.builder(
                     itemCount: 4,
                     itemBuilder: (context, index) {
                     return  Padding(
                       padding:  EdgeInsets.only(bottom: 30.h),
                       child: Container(
                         height: 250.h,
                         width: double.infinity,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10.r),
                             color: AppColor.white,
                             boxShadow: [
                               BoxShadow(
                                 color: AppColor.shadow,
                                 blurRadius: 10,
                                 spreadRadius: 5,
                               )
                             ]
                         ),
                         child: Padding(
                           padding:  EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               CustomText(
                                 text: AppText.Membership_Tier_Name,
                                 fontWeight: FontWeight.w700,
                                 fontSize: 22.sp,
                                 color: AppColor.button2,
                               ),
                               CustomSizeBox(height: 10.h,),
                               RichText(text: TextSpan(
                                   children: [
                                     TextSpan(
                                         text: '\$00.00/',
                                         style: TextStyle(
                                           fontWeight: FontWeight.w700,
                                           fontSize: 22.sp,
                                           color: AppColor.black,
                                         )
                                     ),
                                     TextSpan(
                                         text: AppText.Mounth,
                                         style: TextStyle(
                                           fontWeight: FontWeight.w500,
                                           fontSize: 14.sp,
                                           color: AppColor.gray,
                                         )
                                     ),
                                   ]
                               ),
                               ),
                               CustomSizeBox(height: 15.h,),
                               CustomText(
                                 text: AppText.Lorem_ipsum_dolor_sit,
                                 fontWeight: FontWeight.w400,
                                 fontSize: 14.sp,
                                 color: AppColor.black,
                               ),
                               CustomSizeBox(height: 15.h,),
                               CustomText(
                                 text: AppText.Lorem_ipsum_dolor_sit,
                                 fontWeight: FontWeight.w400,
                                 fontSize: 14.sp,
                                 color: AppColor.black,
                               ),
                               CustomSizeBox(height: 15.h,),
                               CustomText(
                                 text: AppText.Lorem_ipsum_dolor_sit,
                                 fontWeight: FontWeight.w400,
                                 fontSize: 14.sp,
                                 color: AppColor.black,
                               ),

                             ],
                           ),
                         ),
                       ),
                     );
                   },),
                 )
                ],
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: CustomButton(
                      onPressed: () {
                        Get.to(() => BottomNavBar());
                      },
                      text: AppText.Confirm_Continue))
            ],
          ),
        ),
      ),
    );
  }
}
