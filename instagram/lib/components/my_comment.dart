import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:instagram/components/list_card.dart';
import 'package:instagram/main.dart';

class MyComment extends StatefulWidget {
  const MyComment({Key? key, required this.time, required this.text}) : super(key: key);

  final String time;
  final String text;

  @override
  State<MyComment> createState() => _MyCommentState();
}

class _MyCommentState extends State<MyComment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(MyApp.me.name, style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(width: 5),
          Text(widget.text),
          SizedBox(width: 5),
          Text(widget.time, style: TextStyle(fontSize: 12, color: Colors.grey),),
          SizedBox(width: 5),
          Spacer(),
          InkWell(
              onTap: (){
                //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx todo this remove item
                setState(() {
                  ListCardState().comments.remove(this);
                });
              },
              child: Icon(FontAwesomeIcons.circleXmark, size: 12,))
        ],
      ),
    );
  }
}
