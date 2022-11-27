import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/circle_Image.dart';
import 'package:instagram/main.dart';
import 'package:instagram/model/user_info.dart';

import 'package:instagram/screens/home_screen.dart';
import 'package:instagram/screens/my_profile.dart';
import 'package:instagram/screens/search_screen.dart';
import 'package:instagram/screens/shop_main_screen.dart';

import '../constrants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(dm: "2"),
          SearchScreen(),
          ShopMainScreen(),
          MyProfile(user: user[1]),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home), label: ""),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.search), label: ""),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.shoppingBag), label: ""),
          BottomNavigationBarItem(
              icon: CircleImage(
                img: MyApp.me.profileimgs,
                width: 30,
                height: 30,
              ),
              label: ""),
        ],
      ),
    );
  }
}
