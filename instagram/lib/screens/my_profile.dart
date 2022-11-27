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
      backgroundColor: Colors.white,
      appBar: _buildProfileAppBar(),
      body: Column(
        children: [ProfileInfo(), Expanded(child: ProfileTabBar())],
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(children: [
        Text(
          "bin__starr",
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(width: 7),
        Container(
          alignment: AlignmentDirectional.center,
          width: 23,
          height: 20,
          decoration: BoxDecoration(
          color: Colors.red,
        borderRadius: BorderRadius.circular(20),
        ),
          child: Text("···",
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
              fontSize: 13,
          ),),
        ),
      ]),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.plusSquare,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.bars,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
