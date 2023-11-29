import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final DatabaseReference _database = FirebaseDatabase.instance.reference();
  final TextEditingController _textController = TextEditingController();
  TextEditingController id = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  String? check;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Image.asset('assets/images/0.jpeg'),
            ),
            TextField(
              controller: id,
              decoration:const InputDecoration(
                prefixIcon: Icon(Icons.public_outlined),
                labelText: 'ID Thiết Bị',
                hintText: 'Nhập ID thiết bị',
              ),
            ),
            TextField(
              obscureText: true,
              controller: password,
              decoration:const InputDecoration(
                prefixIcon: Icon(Icons.password_outlined),
                labelText: 'Mật Khẩu',
                hintText: 'Nhập Password',
              ),
            ),
            SizedBox(height: 10,),
            Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                    Navigator.pushNamed(context, '/_ForgetPasswordScreenState');
                }, child: Text("Quên mật khẩu?",style: TextStyle(color: Colors.blue),)),
                ElevatedButton(
                  onPressed: () {
                    _handleLogin(context);
                    /* Navigator.popUntil(context, (route) => route.isFirst);
                    Navigator.pushNamed(context, '/home'); */
                }, child: Text("Đăng nhập")),
                SizedBox(width: 100,)
              ],
            )
        ]),
      )
    );
  }
  void _handleLogin(BuildContext context) {
    String enteredId = id.text.trim();
    String enteredPassword = password.text.trim();
    if (enteredId.isNotEmpty && enteredPassword.isNotEmpty) {

      print("Đăng nhập thành công với ID: $enteredId và Password: $enteredPassword");
      Navigator.popUntil(context, (route) => route.isFirst);
      Navigator.pushNamed(context, '/home');
    } else {
      print("Vui lòng nhập đầy đủ ID và Password");
    }
  }
}