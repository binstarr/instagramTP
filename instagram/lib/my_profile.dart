import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/profile_info.dart';
import 'package:instagram/components/tab_bar.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildProfileAppBar(),
      body: Column(
          children: [
            ProfileInfo(),
            Expanded(child: ProfileTabBar())
          ],
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "bin__starr",
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      actions: [
        InkWell(
          onTap: () => print("클릭"),
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              child: Text("..."),
            ),
          ),
        ),
        SizedBox(
          width: 132,
        ),
        IconButton(
          onPressed: () {

          },
          icon: Icon(FontAwesomeIcons.plusSquare, color: Colors.black,),
        ),
        IconButton(
          onPressed: () {

          },
          icon: Icon(FontAwesomeIcons.bars, color: Colors.black,),

        )
      ],
    );
  }
}
