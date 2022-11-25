import 'package:flutter/material.dart';
import 'package:instagram/model/user.dart';

class StoryList extends StatelessWidget {
  const StoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          storyList.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: Column(
              children: [
                SizedBox(
                  width: 55,
                  height: 55,
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage(storyList[index].backgroundImage),
                  ),
                ),
                SizedBox(height: 5,),
                Text(storyList[index].title),
              ],
            ),
          ),
        ));
  }
}
