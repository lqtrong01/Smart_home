import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_home/screen/login_screen.dart';
import 'package:smart_home/user_auth/provider.dart';
import 'package:smart_home/navigate/bot_nav.dart';

class ProfileScreen extends StatelessWidget {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder: (context, userProvider, child) {
        User? user = userProvider.user;

        if (user != null) {
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
                'Tài khoản : ${user.uid}',
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
                  subtitle: Text('${user.email}'),
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
                  subtitle: Text('0306211416@caothang.edu.vn'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _firebaseAuth.signOut();
                  Navigator.pop(context);
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=> LoginScreen())
                  );   
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
        } else {
          // Handle the case when user information is not available
          return const CircularProgressIndicator(); // or another loading indicator
        }
      },
    );
  }
}
