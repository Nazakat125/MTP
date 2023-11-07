import 'package:flutter/material.dart';
import 'package:mtp/Utils/AppColor.dart';
import 'package:mtp/View/LoanDue/LoanDue.dart';
import 'package:mtp/View/Notification/Notification.dart';
import 'package:mtp/View/Profile/Profile.dart';
import 'package:mtp/View/YourMoney/YourMoney.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int current = 0;
  List screens = [YourMoney(),
    LoanDue(),
    Profile(),
    YourNotification(),
  ];
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: screens[current],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColor.white,
            selectedItemColor: AppColor.button,
            unselectedItemColor: AppColor.gray,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            currentIndex: current,
            elevation: 10,
            onTap: (value) {
              setState(() {
                current = value;
              });
            },
            items: [
          BottomNavigationBarItem(icon: Icon(Icons.request_page,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.maps_home_work_outlined,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none,),label: ''),
        ]),
      ),
    );
  }
}
