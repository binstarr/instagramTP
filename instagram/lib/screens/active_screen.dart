import 'package:flutter/material.dart';
import 'package:instagram/components/circle_Image.dart';
import 'package:instagram/main.dart';
import 'package:instagram/model/user_info.dart';

class ActiveScreen extends StatelessWidget {
  const ActiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("활동", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87)),
      ),
   body: SingleChildScrollView(
     child: Column(
       children: [
         _newRecentlyActiveView(context),
       ],
     ),
   ),

    );
  }
  _newRecentlyActiveView(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("오늘", style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          _activeItem(user[1].profileimgs, "정마담", "5분 전", MyApp.me.imgs[1].image, context),
          _activeItem(user[0].profileimgs, "손흥민", "1시간 전", MyApp.me.imgs[0].image, context),
          _activeItem(user[2].profileimgs, "하정우", "3시간 전", MyApp.me.imgs[0].image, context),
          _activeItem(user[3].profileimgs, "목사", "3시간 전", MyApp.me.imgs[1].image, context),
          _activeItem(user[4].profileimgs, "정청", "3시간 전", MyApp.me.imgs[2].image, context),
          Divider(),
          Text("이번 주", style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          _activeItem(user[1].profileimgs, "정마담", "1일 전", MyApp.me.imgs[2].image, context),
          _activeItem(user[0].profileimgs, "손흥민", "1일 전", MyApp.me.imgs[3].image, context),
          _activeItem(user[2].profileimgs, "하정우", "5일 전", MyApp.me.imgs[3].image, context),
          _activeItem(user[3].profileimgs, "목사", "5일 전", MyApp.me.imgs[3].image, context),
          _activeItem(user[4].profileimgs, "정청", "이번 주", MyApp.me.imgs[3].image, context),
          Divider(),
          Text("이번 달", style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          _activeItem(user[1].profileimgs, "정마담", "2주", MyApp.me.imgs[3].image, context),
          _activeItem(user[0].profileimgs, "손흥민", "3주", MyApp.me.imgs[3].image, context),
          _activeItem(user[2].profileimgs, "하정우", "3주", MyApp.me.imgs[3].image, context),
          _activeItem(user[3].profileimgs, "목사", "4주", MyApp.me.imgs[3].image, context),
          _activeItem(user[4].profileimgs, "정청", "4주", MyApp.me.imgs[3].image, context),

        ],

      ),
    );

  }

  Widget _activeItem(String img, String name, String time, String myImg, BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            CircleImage(img: img, width: 40, height: 40),
            SizedBox(width: 10,),
            Container(
              width: MediaQuery.of(context).size.width* 0.6,
              child: Text.rich(TextSpan(text: name,

                  style: TextStyle(fontWeight: FontWeight.bold),
                  children: [TextSpan(text: "님이 회원님의 게시물을 좋아합니다",style: TextStyle(fontWeight: FontWeight.normal)),
                    TextSpan(text: "  $time",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 13, color: Colors.black54))  ] ),),
            ),
            Spacer(),
            Container(
                width: MediaQuery.of(context).size.width* 0.15,
                child: Image.network(myImg, fit: BoxFit.cover,)),
            SizedBox(width: 5)

          ],
        ),
      ),
    );
  }

}
