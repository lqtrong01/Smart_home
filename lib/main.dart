import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/firebase_options.dart';
import 'package:smart_home/screen/device_screen.dart';
import 'package:smart_home/screen/forget_password_screen.dart';
import 'package:smart_home/screen/home_screen.dart';
import 'package:smart_home/screen/login_screen.dart';
import 'package:smart_home/screen/profile_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/login':(context) => LoginScreen(),
        '/':(context) => HomeScreen(),
        '/_ForgetPasswordScreenState':(context)=>ForgetPasswordScreen(),
        '/device':(context) => DeviceScreen(),
        '/profile':(context) => ProfileScreen() 
      },
      initialRoute: '/login',
    );
  }
}
