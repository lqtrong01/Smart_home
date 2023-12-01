import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_home/firebase_options.dart';
import 'package:smart_home/screen/device_screen.dart';
import 'package:smart_home/screen/forget_password_screen.dart';
import 'package:smart_home/screen/home_screen.dart';
import 'package:smart_home/screen/login_screen.dart';
import 'package:smart_home/screen/profile_screen.dart';
import 'package:smart_home/user_auth/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home',
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginScreen(),
        '/': (context) =>  HomeScreen(),
        '/forget_password': (context) => ForgetPasswordScreen(),
        '/device': (context) => DeviceScreen(),
        '/profile': (context) => ProfileScreen(),
      },
      initialRoute: '/login',
    );
  }
}
