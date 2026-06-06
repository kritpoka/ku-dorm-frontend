import 'package:flutter/material.dart';
import 'package:ku_dorm_frontend/ui/home/home_screen.dart';
import 'package:ku_dorm_frontend/ui/payment/payment_screen.dart';
import 'package:ku_dorm_frontend/ui/profile/profile_screen.dart';
import 'package:ku_dorm_frontend/ui/room/room_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectIndex = 0;

  static const List<Widget> widgetOptions = <Widget>[
    HomeScreen(),
    RoomScreen(),
    PaymentScreen(),
    ProfileScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: widgetOptions.elementAt(selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'หน้าหลัก'),
          BottomNavigationBarItem(icon: Icon(Icons.bed_rounded), label: 'ห้องพัก'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_outlined), label: 'การชำระเงิน'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: 'โปรไฟล์'),
        ],
        currentIndex: selectIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
      ),
    );
  }
}