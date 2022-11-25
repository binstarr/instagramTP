import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/circle_Image.dart';

class ListCard extends StatelessWidget {
   ListCard({Key? key, required this.img, required this.name, required this.mainImg, required this.likes, required this.content, required this.time}) : super(key: key);
  String img;
  String name;
  String mainImg;
  String likes;
   String content;
   String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _firstRow(),
          SizedBox(height: 10,),
          Center(child: Image.network(mainImg, fit: BoxFit.contain,)),
          _secondRow(),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10.0),
           child: Text("좋아요 $likes 개", style: TextStyle(fontWeight: FontWeight.bold), ),
         ),
          _thirdRow(),
          _fourthRow(),
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("$time 시간 전", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.grey), ),),
          SizedBox(height: 10,),





        ],

      ),
    );
  }

  _firstRow(){
    return Row(
      children: [
        Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleImage(img: img, width: 30, height: 30)),
        Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(FontAwesomeIcons.ellipsisVertical),
        ),
      ],
    );
  }

  _secondRow(){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(FontAwesomeIcons.heart),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(FontAwesomeIcons.comment),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(FontAwesomeIcons.paperPlane),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(FontAwesomeIcons.bookmark),
        ),

      ],
    );
  }

  _thirdRow(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(children: [Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(width: 10,),
          Text(content),
          ]),

        ],
      ),
    );
  }

  _fourthRow(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          CircleImage(img: img, width: 25, height: 25),
          SizedBox(width: 10,),
          Text("댓글추가 ...", style: TextStyle(color: Colors.grey),),
          Spacer(),
          Icon(FontAwesomeIcons.solidHeart, color: Colors.red,),
          SizedBox(width: 10,),
          Icon(FontAwesomeIcons.handsClapping, color: Colors.yellow,)
        ],

      ),
    );
  }

}
