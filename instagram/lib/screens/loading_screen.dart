import 'package:flutter/material.dart';
import 'package:instagram/screens/login_screen.dart';
import 'main_screen.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LoginScreen();
      }));

    });
    return Container(
      color: Colors.white,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset("assets/loading.jpg"),
          LinearProgressIndicator(
            backgroundColor: Colors.purple,
            color: Colors.yellow,
          ),
        ],

      ),
    );
  }
}