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
        title: Column(
          children: [
            Text("${widget.name} ", style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),),
            SizedBox(height: 3,),
            Text("게시물", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),),
          ],
        ),
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
