import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/profile_fix_button.dart';
import 'package:instagram/components/profile_page_story.dart';
import 'package:instagram/components/tab_bar.dart';

class ProfileInfo extends StatelessWidget {
  ProfileInfo({Key? key, required this.profileImg, required this.follower, required this.following, required this.name
  }) : super(key: key);
  String profileImg;
  String follower;
  String following;
  String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              _profileImage(),
              Spacer(),
              _profileInfo(),
              SizedBox(width: MediaQuery.of(context).size.width *0.1,)
            ],
          ),
          SizedBox(height: 20,),
          _profileName(),
          SizedBox(height: 20,),
          ProfileFixButton(),
          SizedBox(
              height: 100,
              child: StoryList(userName: name)),



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
            backgroundImage: NetworkImage(profileImg),
          ),
        ),
        Positioned(
            top: 45,
            left: 40,
            child: IconButton(
              onPressed: () {},
              icon: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                  child: Icon(FontAwesomeIcons.circlePlus, color: Colors.blueAccent)),
              color: Colors.blue,
              iconSize: 20,
            ))
      ],
    );
  }

  Widget _profileInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 40),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                "4",
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
                follower,
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
                following,
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
            Text(name, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),),
            SizedBox(
              height: 5,
            ),
            Text("자기 소개 : title"),
          ],
        ),
      ],
    );
  }
}
