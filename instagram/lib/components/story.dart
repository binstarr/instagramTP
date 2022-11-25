import 'package:flutter/material.dart';
import 'package:instagram/components/circle_Image.dart';

import '../model/user_info.dart';


class StoryList extends StatelessWidget {
  const StoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(user.length, (index) =>

           Padding(
             padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
             child: Column(
                children: [
                CircleImage(img: user[index].img, width: 80, height: 80,),
                  SizedBox(height: 5,),
                  Text(user[index].name),
                ],
              ),
           ),

            )
      );
  }
}
