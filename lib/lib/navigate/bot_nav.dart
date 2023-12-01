import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/screen/device_screen.dart';
import 'package:smart_home/screen/home_screen.dart';
import 'package:smart_home/screen/profile_screen.dart';

class BotNav extends StatelessWidget {
  const BotNav({super.key, required this.idx});
  final int idx;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    User? user = args?['user'];
    return BottomNavigationBar(
      backgroundColor: const Color.fromARGB(26, 245, 243, 245),
      fixedColor: Colors.blueAccent,
      items: const [
        BottomNavigationBarItem(label: 'Thiết bị', icon: Icon(Icons.devices_other)),
        BottomNavigationBarItem(label: 'Trang chủ', icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "Tài khoản", icon: Icon(Icons.account_circle_outlined))
      ],
      currentIndex: idx,
      onTap: (int indexOfItem) {
        if (indexOfItem == 0 && indexOfItem!=idx) {
          Navigator.popUntil(context, (route) => route.isFirst);
          if (idx != indexOfItem) Navigator.push(context, MaterialPageRoute(builder: (context)=>DeviceScreen()));
        } else if (indexOfItem == 1 && indexOfItem!=idx) {
          Navigator.popUntil(context, (route) => route.isFirst);
          if (idx != indexOfItem)Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        } else if (indexOfItem == 2 && indexOfItem!=idx){
          Navigator.popUntil(context, (route) => route.isFirst);
          if (idx != indexOfItem){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
          } 
        }
      },
    );
  }
}