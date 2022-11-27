import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/list_card.dart';
import 'package:instagram/screens/active_screen.dart';
import 'package:instagram/screens/dm_screen.dart';
import 'package:instagram/screens/upload_screen.dart';


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
          InkWell(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>
                    UploadScreen()));
              },
              child: Icon(FontAwesomeIcons.squarePlus)),
          SizedBox(width: 17),
          InkWell(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>
                    ActiveScreen()));
              },
              child: Icon(FontAwesomeIcons.heart)),
          SizedBox(width: 17),
          InkWell(
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>
              DmScreen()));
            },
            child: Stack(
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
          ),

          SizedBox(width: 10,),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
              height: 115,
              child: StoryList()),
          Divider(),
          ListCard(profileimg: user[1].profileimgs, name: user[1].name, mainImg: user[1].imgs[1].image, likes: 344, content: "쏠 수 있어~~",time: "1", ),
          ListCard(profileimg: user[2].profileimgs, name: user[2].name, mainImg: user[2].imgs[1].image, likes: 124, content: "김정식 나이스 ",time: "2", ),
          ListCard(profileimg: user[3].profileimgs, name: user[3].name, mainImg: user[3].imgs[0].image, likes: 34, content: "드루와~~", time: "3", ),
          ListCard(profileimg: user[0].profileimgs, name: user[0].name, mainImg: user[0].imgs[0].image, likes: 55555, content: "골 넣고 ㅎㅎ", time: "3", ),
          ListCard(profileimg: user[3].profileimgs, name: user[3].name, mainImg: user[3].imgs[1].image, likes: 34, content: "담배한대 괜차", time: "3", ),
          ListCard(profileimg: user[2].profileimgs, name: user[2].name, mainImg: user[2].imgs[3].image, likes: 1234, content: "핫바 사러가는 길 ",time: "2", ),

        ],
      ),);
  }
}
