import 'package:flutter/material.dart';
import 'package:instagram/components/circle_Image.dart';
import 'package:instagram/model/user_info.dart';

class ActiveScreen extends StatelessWidget {
  const ActiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("활동", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87)),
      ),
   body: SingleChildScrollView(
     child: Column(
       children: [
         _newRecentlyActiveView(),
       ],
     ),
   ),

    );
  }
  _newRecentlyActiveView(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("오늘", style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          _activeItem(user[1].profileimgs, "정마담", "5분 전"),
          _activeItem(user[0].profileimgs, "손흥민", "1시간 전"),
          _activeItem(user[2].profileimgs, "하정우", "3시간 전"),
          _activeItem(user[3].profileimgs, "목사", "3시간 전"),
          _activeItem(user[4].profileimgs, "정청", "3시간 전"),
          Text("이번 주", style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          _activeItem(user[1].profileimgs, "정마담", "1일 전"),
          _activeItem(user[0].profileimgs, "손흥민", "1일 전"),
          _activeItem(user[2].profileimgs, "하정우", "5일 전"),
          _activeItem(user[3].profileimgs, "목사", "5일 전"),
          _activeItem(user[4].profileimgs, "정청", "이번 주"),
          Text("이번 달", style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          _activeItem(user[1].profileimgs, "정마담", "2주"),
          _activeItem(user[0].profileimgs, "손흥민", "3주"),
          _activeItem(user[2].profileimgs, "하정우", "3주"),
          _activeItem(user[3].profileimgs, "목사", "4주"),
          _activeItem(user[4].profileimgs, "정청", "4주"),

        ],

      ),
    );

  }

  Widget _activeItem(String img, String name, String time){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          CircleImage(img: img, width: 40, height: 40),
          SizedBox(width: 10,),
          Expanded(child: Text.rich(TextSpan(text: name,style: TextStyle(fontWeight: FontWeight.bold),
              children: [TextSpan(text: "님이 회원님의 게시물을 좋아합니다",style: TextStyle(fontWeight: FontWeight.normal)),
                TextSpan(text: "  $time",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 13, color: Colors.black54))  ] ),)),


        ],
      ),
    );
  }

}
