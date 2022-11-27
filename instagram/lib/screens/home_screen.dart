import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/list_card.dart';


import '../components/story.dart';
import '../constrants.dart';
import '../model/user_info.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key, required this.dm}) : super(key: key);
  String dm;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        leading: Image.network("${urlPrefix1}insta.png", width: 120,),
        actions: [
          Icon(FontAwesomeIcons.squarePlus),
          SizedBox(width: 20),
          Icon(FontAwesomeIcons.heart),
          SizedBox(width: 20),
          Stack(
            children: [
              Center(
                child: Row(
                    children: [Icon(FontAwesomeIcons.paperPlane, size: 25,),
                      SizedBox(width: 10,)
                    ]),
              ),
              Positioned(
                left: 16,
                top: 7,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 10,
                  child: Text(widget.dm, style: TextStyle(color: Colors.white, fontSize: 10),),
                ),
              )
            ], ),



          SizedBox(width: 10,),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
              height: 115,
              child: StoryList()),
          Divider(),
          ListCard(img: user[1].img, name: user[1].name, mainImg: user[1].img, likes: 20, content: "쏠 수 있어~~",time: "1", ),
          ListCard(img: user[3].img, name: user[3].name, mainImg: user[2].img, likes: 20, content: "내가 고라니 ",time: "2", ),
          ListCard(img: user[4].img, name: user[4].name, mainImg: user[3].img, likes: 20, content: "드루와~~", time: "3", ),

        ],
      ),);
  }
}
