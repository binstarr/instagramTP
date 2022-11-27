import 'package:flutter/material.dart';
import 'package:instagram/components/circle_Image.dart';

import '../model/user_info.dart';

class StoryList extends StatelessWidget {
  const StoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          user.length,
          (index) => Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.all(2.5),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          Color(0xff6500a1),
                          Color(0xffff9541),
                          Color(0xffbc4fff),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(500),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(500),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: CircleImage(
                            img: user[index].img, width: 55, height: 55),
                      ),
                    )),
                SizedBox(
                  height: 5,
                ),
                Text(user[index].name),
              ],
            ),
          ),
        ));
  }
}
