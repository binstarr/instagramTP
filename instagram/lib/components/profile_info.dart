import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/profile_fix_button.dart';
import 'package:instagram/components/profile_page_story.dart';
import 'package:instagram/components/tab_bar.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              _profileImage(),
              SizedBox(
                width: 50,
              ),
              _profileInfo(),
            ],
          ),
          SizedBox(height: 20,),
          _profileName(),
          SizedBox(height: 20,),
          ProfileFixButton(),
          SizedBox(
              height: 100,
              child: StoryList()),



        ],
      ),
    );
  }

  Widget _profileImage() {
    return Stack(
      children: [
        SizedBox(
          width: 80,
          height: 80,
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/myProfile.jpg"),
          ),
        ),
        Positioned(
            top: 45,
            left: 40,
            child: IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.circlePlus, color: Colors.blueAccent),
              color: Colors.blue,
              iconSize: 20,
            ))
      ],
    );
  }

  Widget _profileInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                "6",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "게시물",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            width: 35,
          ),
          Column(
            children: [
              Text(
                "700",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "팔로워",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            width: 35,
          ),
          Column(
            children: [
              Text(
                "361",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "팔로잉",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _profileName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("myName"),
            SizedBox(
              height: 5,
            ),
            Text("title"),
          ],
        ),
      ],
    );
  }
}
