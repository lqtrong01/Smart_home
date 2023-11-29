import 'package:flutter/material.dart';

class BotNav extends StatelessWidget {
  const BotNav({super.key, required this.idx});
  final int idx;
  @override
  Widget build(BuildContext context) {
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
          if (idx != indexOfItem) Navigator.pushNamed(context, '/device');
        } else if (indexOfItem == 1 && indexOfItem!=idx) {
          Navigator.popUntil(context, (route) => route.isFirst);
          if (idx != indexOfItem) Navigator.pushNamed(context, '/home');
        } else if (indexOfItem == 2 && indexOfItem!=idx){
          Navigator.popUntil(context, (route) => route.isFirst);
          if (idx != indexOfItem) Navigator.pushNamed(context, '/profile');
        }
      },
    );
  }
}