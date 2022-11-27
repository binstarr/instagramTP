import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/circle_Image.dart';
import '../model/user_info.dart';

class DmScreen extends StatelessWidget {
  const DmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Direct Message", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87)),
        actions: [
          Icon(FontAwesomeIcons.videoCamera),
          SizedBox(width: 10,),
          Icon(FontAwesomeIcons.plus),
          SizedBox(width: 10,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 2,),
            _buildSearchFiled(),
            _newRecentlyMessage(),
          ],
        ),
      ),

    );
  }
  _newRecentlyMessage(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [


              Text("메세지", style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold),),
              Spacer(),
              Text("요청", style: TextStyle(color: Colors.blueAccent),)
            ],
          ),
          SizedBox(height: 15,),
          _activeItem(user[1].profileimgs, "정마담", "총 쏘러 갈래?", true),
          _activeItem(user[0].profileimgs, "손흥민", "오늘 우리 축구함 ㅎ", true),
          _activeItem(user[2].profileimgs, "하정우", "읽음", false ),
          _activeItem(user[2].profileimgs, "하정우", "읽음", false ),
          _activeItem(user[2].profileimgs, "하정우", "읽음", false ),
          _activeItem(user[2].profileimgs, "하정우", "읽음", false ),
          _activeItem(user[2].profileimgs, "하정우", "읽음", false ),



        ],

      ),
    );

  }

  Widget _activeItem(String img, String name, String message, bool a){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          CircleImage(img: img, width: 60, height: 60),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
              Text(message),
            ],
          ),
          Spacer(),
          _circle(a),
          SizedBox(width: 15,),
          Icon(FontAwesomeIcons.camera, ),


        ],
      ),
    );
  }

  Widget _circle(bool a){
    if(a == true){
      return Icon(FontAwesomeIcons.solidCircle, size: 13, color: Colors.blueAccent,);
    }else {
      return Container();
    }
  }

  Widget _buildSearchFiled() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFefefef),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                borderSide: BorderSide.none),
            prefixIcon: Icon(Icons.search),
            prefixIconColor: Colors.grey,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            hintText: '검색'),
      ),
    );
  }


}
