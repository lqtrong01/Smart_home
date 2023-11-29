import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:smart_home/navigate/bot_nav.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông Tin Cá Nhân'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('Hình'),
              ),
              Text(
                'Huỳnh Nhật',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Tài khoản : 093104601',
                style: TextStyle(fontSize: 16),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  onTap: () {
                    
                  },
                  leading: Icon(Icons.phone),
                  title: Text('Điện thoại của tôi'),
                  subtitle: Text('Chưa liên kết'),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  onTap: () {
                    
                  },
                  leading: Icon(Icons.email),
                  title: Text('Hòm thư của tôi'),
                  subtitle: Text(' Email Chưa cài đặt'),
                ),
              
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  onTap: (){},
                  leading: Icon(Icons.accessibility_sharp),
                  title: Text('Liên hệ hỗ trợ'),
                  subtitle: Text('19006067'),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  onTap: () {
                    
                  },
                  leading: Icon(Icons.info_rounded),
                  title: Text('Thông tin '),
                  subtitle: Text(' Email Chưa cài đặt'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Thêm hành động khi nhấn nút ở đây
                },
                child: Text('Đăng xuất'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // background color
                  onPrimary: Colors.white, // text color
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BotNav(idx: 2),
    );
  }
}
