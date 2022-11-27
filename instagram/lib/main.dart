import 'package:flutter/material.dart';
import 'package:instagram/screens/loading_screen.dart';
import 'package:instagram/screens/login_screen.dart';

import 'constrants.dart';
import 'model/user_info.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static User me = User(name: "1000bang", follower: "100", following: "102", dm: "0", img: "${urlPrefix1}son.gif");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(fontSize: 24, color: Colors.black87),
          iconTheme: IconThemeData(color: Colors.black87),
        ),
      ),
      home: LoginScreen(),

      // LoadingScreen(),
    );
  }
}
