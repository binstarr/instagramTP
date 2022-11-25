import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/list_card.dart';


import '../components/story.dart';
import '../constrants.dart';
import '../model/user_info.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key, required this.dm}) : super(key: key);
String dm;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        leading: Image.network("${urlPrefix1}insta.png", width: 120,),
        actions: [
          Icon(FontAwesomeIcons.squarePlus),
          SizedBox(width: 10,),
          Icon(FontAwesomeIcons.heart),
          SizedBox(width: 10,),
           Center(
              child: Stack(

                  children: [
                Icon(FontAwesomeIcons.paperPlane, size: 15,),
                Positioned(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    child: Text(dm, style: TextStyle(color: Colors.white, fontSize: 10),),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red
                    ),
                  ),
                ),
              ]),
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
          ListCard(img: user[0].img, name: user[0].name, mainImg: user[1].img, likes: "20", content: "쏠 수 있어~~",time: "1", ),
          ListCard(img: user[0].img, name: user[0].name, mainImg: user[2].img, likes: "20", content: "내가 고라니 ",time: "2", ),
          ListCard(img: user[0].img, name: user[0].name, mainImg: user[3].img, likes: "20", content: "드루와~~", time: "3", ),

        ],
      ),);
  }
}
