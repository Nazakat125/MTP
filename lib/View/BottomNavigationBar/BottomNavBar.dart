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
    YourNotification(),
    Profile()
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: screens[current],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColor.white,
          selectedItemColor: AppColor.button2,
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
        BottomNavigationBarItem(icon: Icon(Icons.attach_money_outlined,),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.monetization_on_sharp,),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications,),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person,),label: ''),
      ]),
    );
  }
}
