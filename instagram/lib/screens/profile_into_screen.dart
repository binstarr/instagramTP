import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/list_card.dart';
import '../model/user_info.dart';

class ProfileIntoScreen extends StatefulWidget {
  ProfileIntoScreen({Key? key, required this.name, required this.profileimg, required this.imgs}) : super(key: key);
  String name;
  String profileimg;
  List<Imgs> imgs;
  @override
  State<ProfileIntoScreen> createState() => _ProfileIntoScreen();
}

class _ProfileIntoScreen extends State<ProfileIntoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.name} 님의 게시물"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Divider(),
          ListCard(
            profileimg: widget.profileimg,
            name: widget.name,
            mainImg: widget.imgs[0].image,
            likes: 20,
            content: "가족여행",
            time: "1",
          ),
          ListCard(
            profileimg: widget.profileimg,
            name: widget.name,
            mainImg: widget.imgs[1].image,
            likes: 20,
            content: "우정여행 ",
            time: "2",
          ),
          ListCard(
            profileimg: widget.profileimg,
            name: widget.name,
            mainImg: widget.imgs[2].image,
            likes: 20,
            content: "첫 여행!",
            time: "3",
          ),
          ListCard(
            profileimg: widget.profileimg,
            name: widget.name,
            mainImg: widget.imgs[3].image,
            likes: 20,
            content: "첫 여행!",
            time: "3",
          ),
        ],
      ),
    );
  }
}
