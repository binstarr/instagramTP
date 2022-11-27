import 'package:flutter/material.dart';
import 'package:instagram/model/user.dart';

class StoryList extends StatelessWidget {
  const StoryList({Key? key, required this.userName}) : super(key: key);

  final String userName;

  @override
  Widget build(BuildContext context) {
    var listData;
    if (userName == "jieun"){
      listData = jieunList;
    } else {
      listData = storyList;
    }
    return ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          listData.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: Column(
              children: [
                SizedBox(
                  width: 55,
                  height: 55,
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage(listData[index].backgroundImage),
                  ),
                ),
                SizedBox(height: 5,),
                Text(listData[index].title),
              ],
            ),
          ),
        ));
  }
}
