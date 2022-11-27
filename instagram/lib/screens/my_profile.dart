import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/profile_info.dart';
import 'package:instagram/components/tab_bar.dart';

import '../model/user_info.dart';

class MyProfile extends StatefulWidget {
  MyProfile({Key? key, required this.user}) : super(key: key);
  User user;
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
          ProfileInfo(profileImg: widget.user.profileimgs,
            follower: widget.user.follower,
            following: widget.user.following,
            name: widget.user.name,),
          Expanded(child: ProfileTabBar(user: widget.user,))
        ],
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      titleSpacing: 0,
      elevation: 0,
      leadingWidth: 300,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
            children: [
               Text(
                super.widget.user.name,
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),

            ),
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
            ]),
      ),
      actions: [

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
