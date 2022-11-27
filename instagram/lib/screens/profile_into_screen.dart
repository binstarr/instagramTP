import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/list_card.dart';
import 'package:instagram/components/list_card2.dart';
import 'package:instagram/model/user_ex.dart';

import '../components/story.dart';
import '../constrants.dart';
import '../model/user_info.dart';

class ProfileIntoScreen extends StatefulWidget {
  ProfileIntoScreen({Key? key}) : super(key: key);

  @override
  State<ProfileIntoScreen> createState() => _ProfileIntoScreen();
}

class _ProfileIntoScreen extends State<ProfileIntoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("binstarr 님의 게시물"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Divider(),
          ListCard2(
            img: myList[1].img,
            name: myList[1].name,
            mainImg: myList[1].img,
            likes: 20,
            content: "가족여행",
            time: "1",
          ),
          ListCard2(
            img: myList[3].img,
            name: myList[3].name,
            mainImg: myList[2].img,
            likes: 20,
            content: "우정여행 ",
            time: "2",
          ),
          ListCard2(
            img: myList[4].img,
            name: myList[4].name,
            mainImg: myList[3].img,
            likes: 20,
            content: "첫 여행!",
            time: "3",
          ),
        ],
      ),
    );
  }
}
